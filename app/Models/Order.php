<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    private static $order;

    public function orderDetail()
    {
        return $this->hasMany(OrderDetail::class);
    }


public function coupon()
{
    return $this->belongsTo(Coupon::class);
}


    public static function deleteOrder($id)
    {
        self::$order = Order::find($id);
        self::$order->delete();
    }
}
