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
