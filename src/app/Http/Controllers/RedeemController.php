<?php

namespace App\Http\Controllers;

use App\Models\Member;
use App\Models\RedeemCode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RedeemController extends Controller
{
    //
    public function index(Request $request) {
        $lineId = $request->input('lineId');
        $qrCode = $request->input('qrCode');
        $code = RedeemCode::where('code', $qrCode)->where('used', 'N')->first();
        if ($code) {
            $code->used = 'Y';
            $code->save();
            Member::where('line_id', $lineId)->update([
                'points' => DB::raw('points + 2'),
                'eat_points' => DB::raw('eat_points + 1'),
            ]);
            return response()->json(['message'=>'success','code' => 200], 200);
        }
        return response()->json(['message'=>'invalid code','code' => 404], 200);
        }

}


