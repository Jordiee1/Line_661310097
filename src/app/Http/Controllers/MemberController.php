<?php

namespace App\Http\Controllers;

use App\Models\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MemberController extends Controller
{
    //
    public function index(Request $request) {
        $lineId = $request->input('lineId');
        $member = Member::where('line_id', $lineId)->first();
        $isRegistered = false;
        $memberResponse = null;
        if ($member) {
        $memberResponse = $member->toArray();
        $memberResponse['expire_date'] = $member->expire_date->addYears(543)->format('d/m/Y');
        $isRegistered = true;
        }
        return response()->json(['isRegistered' => $isRegistered, 'member' => $memberResponse, 'code' => 200], 200);
    }

    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            'lineId' => 'required|string|unique:members,line_id',
            'name' => 'required|string',
            'phone' => 'required|string',
            'email' => 'required|email|unique:members,email',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 422, 'errors' => $validator->errors()], 200);
        }

        $validatedData = $validator->validated();

        $code = 'TN'.date('Ymd').str_pad(Member::count() + 1, 5, '0', STR_PAD_LEFT);

        $member = Member::create([
        'line_id' => $validatedData['lineId'],
        'name' => $validatedData['name'],
        'email' => $validatedData['email'],
        'phone' => $validatedData['phone'],
        'code' =>  $code,
        'expire_date' => now()->addYear(),
        'points' => 0,
        'eat_points' => 0,
        ]);

        $memberResponse = $member->toArray();
        $memberResponse['expire_date'] = $member->expire_date->addYears(543)->format('d/m/Y');

        return response()->json(['member' => $memberResponse,'message'=>'success','code'=>200 ], 200);
    }
}
