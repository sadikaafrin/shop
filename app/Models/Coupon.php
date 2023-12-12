<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory;

    public static $coupon;

    public static function newCoupon($request)
    {
        self::$coupon = new Coupon();
        self::$coupon->code = $request->code;
        self::$coupon->discount_amount = $request->discount_amount;
        self::$coupon->type = $request->type;
        self::$coupon->status = $request->status;
        self::$coupon->save();
    }

    public static function updateCoupon($request, $id)
    {
        self::$coupon = Coupon::find($id);
        self::$coupon->code = $request->code;
        self::$coupon->discount_amount = $request->discount_amount;
        self::$coupon->type = $request->type;
        self::$coupon->status = $request->status;
        self::$coupon->save();


    }


    public static function deleteCoupon($id)
    {
        self::$coupon = Coupon::find($id);
        self::$coupon->delete();
    }
}
