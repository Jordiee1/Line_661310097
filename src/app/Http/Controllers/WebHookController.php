<?php

namespace App\Http\Controllers;

use App\Models\Promotion;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;
class WebHookController extends Controller
{
    //
    private $channelSecret = '18e7479c3a94c756e581670fb0dc4911';
    private $channelAccessToken = 'D3RO8Q0MedcrbLRveKX0a7CpIclZoDQSitQRtFv96aMV5eF7YFAxa+Jv/V3peulmSQmuDySN+ERMtoscYnT48kaC93XN3GDHPS3BuK2iTgZfYNjjv4LJnI8rskgTumoeaR5Oq9QMM8eXME0d/fRVxQdB04t89/1O/w1cDnyilFU=';

    public function index(Request $request)
    {
        $events = $request->input('events', []);
        Log::info('webhook: ', $events);
        if (isset($events[0]['replyToken'])) {
            $replyToken = $events[0]['replyToken'];
            $messageType = isset($events[0]['events'][0]['message']) ? $events[0]['message']['type'] : 'text';
            $lineId = $events[0]['source']['userId'];

            if ($messageType === 'text') {
                $this->postToDialogflow($events[0]);
            } else {
                Log::error('not support');
                $this->replyMessage($replyToken, [
                    [
                        'type' => 'text',
                        'text' => "Sorry not support message type" . $messageType
                    ]
                ]);
            }

        }

    }

    public function fullFillMent(Request $request)
    {
        $data = $request->all();
        $queryText = $data['queryResult']['queryText'];
        $intent = $data['queryResult']['intent']['displayName'];
        $lineId = $data['originalDetectIntentRequest']['payload']['data']['source']['userId'];
        $replyToken = $data['originalDetectIntentRequest']['payload']['data']['replyToken'];
        $parameters = $data['queryResult']['outputContexts'][0]['parameters'];
        Log::info($intent);
        Log::info($parameters);


        if ($intent ==='promotions') {
            $flex = json_decode(file_get_contents('json/promotions.json'), true);
            $templateBubble = $flex['contents'][0];
            $flex['contents'] = [];
            $promotions = Promotion::limit(10)->get();
            foreach ($promotions as $promotion) {
                $bubble = $templateBubble;
                $bubble['hero']['url'] = asset('/images/'.$promotion->img);
                $bubble['body']['contents'][0]['text'] = $promotion->name;
                $bubble['body']['contents'][1]['text'] = 'ถึงวันที่ ' . $promotion->expire_date;
                $flex['contents'][] = $bubble;
            }
            $customMessage[] = [
                'type' => 'flex',
                'altText' => 'โปรโมชั่น',
                'contents' => $flex
            ];
            $this->replyMessage($replyToken, $customMessage);
        }

        // --- ส่วนที่เพิ่มใหม่: แผนผังงาน ---
        if ($intent === 'workflow_diagram') {
            $customMessage[] = [
                'type' => 'image',
                'originalContentUrl' => asset('images/workflow.jpg'),
                'previewImageUrl' => asset('images/workflow.jpg')
            ];
            $this->replyMessage($replyToken, $customMessage);
        }

        // --- [ปุ่ม D] เมนูสอบถามเพิ่มเติม ---
        if ($intent === 'inquiry_menu') {
            $customMessage[] = [
                'type' => 'flex',
                'altText' => 'เมนูสอบถามข้อมูลเพิ่มเติม',
                'contents' => [
                    'type' => 'bubble',
                    'body' => [
                        'type' => 'box',
                        'layout' => 'vertical',
                        'contents' => [
                            ['type' => 'text', 'text' => 'ยินดีต้อนรับสู่ลานเทเฟส!', 'weight' => 'bold', 'size' => 'xl', 'color' => '#1DB446'],
                            ['type' => 'text', 'text' => 'เลือกหัวข้อที่ต้องการสอบถามได้เลยค่ะ', 'size' => 'sm', 'color' => '#aaaaaa', 'margin' => 'md'],
                            ['type' => 'separator', 'margin' => 'lg'],
                            [
                                'type' => 'box',
                                'layout' => 'vertical',
                                'margin' => 'lg',
                                'spacing' => 'sm',
                                'contents' => [
                                    ['type' => 'button', 'action' => ['type' => 'message', 'label' => '🎫 จองตั๋วยังไง', 'text' => 'จองตั๋วยังไง'], 'style' => 'primary', 'color' => '#1DB446'],
                                    ['type' => 'button', 'action' => ['type' => 'message', 'label' => '⏰ ลงทะเบียนกี่โมง', 'text' => 'ลงทะเบียนกี่โมง'], 'style' => 'secondary', 'color' => '#f0f0f0'],
                                    ['type' => 'button', 'action' => ['type' => 'message', 'label' => '📍 สถานที่จัดงาน', 'text' => 'ไปงานยังไง'], 'style' => 'link', 'color' => '#1DB446']
                                ]
                            ]
                        ]
                    ]
                ]
            ];
            $this->replyMessage($replyToken, $customMessage);
        }

        // --- ส่วนตอบคำถามย่อย (เมื่อลูกค้ากดถาม) ---
        if ($intent === 'how_to_book') {
            $customMessage[] = ['type' => 'text', 'text' => "🎫 วิธีการจองตั๋ว:\n1. เข้าสู่หน้าเว็บไซต์หลัก\n2. เลือกเมนู 'จองตั๋ว'\n3. ชำระเงินผ่าน QR Code\nและรอรับตั๋วผ่านทาง Email ได้เลยค่ะ!"];
            $this->replyMessage($replyToken, $customMessage);
        }

        if ($intent === 'register_time') {
            $customMessage[] = ['type' => 'text', 'text' => "⏰ งานเริ่มลงทะเบียนตั้งแต่เวลา 16:00 น. เป็นต้นไป\n\nอย่าลืมเตรียม QR Code ตั๋วมาแสดงหน้างานด้วยนะคะ!"];
            $this->replyMessage($replyToken, $customMessage);
        }

        if ($intent === 'location_info') {
            $customMessage[] = ['type' => 'text', 'text' => "📍 สถานที่จัดงาน:\nลานเทเฟสติวัล จัดขึ้นที่ ลานประติมากรรม ถนนประติมากรรม มหาวิทยาลัยศิลปากร (เพชรบุรี) ค่ะ"];
            $this->replyMessage($replyToken, $customMessage);
        }

        $customMessage = [];
    }

    private function postToDialogflow($event)
    {
        $dialogflowUrl = 'https://dialogflow.cloud.google.com/v1/integrations/line/webhook/614ad771-90aa-47d2-95de-da2acc9edd3e';

        $body = [
            'destination' => $event['source']['userId'],
            'events' => [
                array_merge($event, [
                    'message' => [
                        'type' => 'text',
                        'text' => $event['message']['text']
                    ]
                ])
            ]
        ];

        $response = Http::withHeaders([
            'host' => 'dialogflow.cloud.google.com',
            'Content-Type' => 'application/json',
            'x-line-signature' => base64_encode(
                hash_hmac('sha256', json_encode($body), $this->channelSecret, true)
            )
        ])->post($dialogflowUrl, $body);

        Log::info('Dialogflow response: ', $response->json());
    }

    private function loading($lineId)
    {
        Http::withHeaders([
            'Authorization' => 'Bearer ' . $this->channelAccessToken
        ])->post('https://api.line.me/v2/bot/chat/loading/start', [
            'chatId' => $lineId,
            'loadingSeconds' => 5
        ]);
    }

    private function replyMessage($replyToken,$customMessage)
    {
        Http::withHeaders([
            'Authorization' => 'Bearer ' . $this->channelAccessToken
        ])->post('https://api.line.me/v2/bot/message/reply', [
            'replyToken' => $replyToken,
            'messages' => $customMessage
        ]);
    }

}
