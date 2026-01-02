<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\RedeemController;
use App\Http\Controllers\WebHookController;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', function () {
    return Inertia::render('Welcome');
});

Route::get('/reward', function () {
    return Inertia::render('Reward');
});

Route::get('/profile', function () {
    return Inertia::render('Profile');
});


Route::post('/api/member',[MemberController::class,'index']);
Route::post('/api/member/register',[MemberController::class,'store']);
Route::post('/api/redeem',[RedeemController::class,'index']);

Route::post('/api/line-webhook',[WebHookController::class,'index']);
Route::post('/api/dialogflow-fulfillment',[WebHookController::class,'fullFillMent']);