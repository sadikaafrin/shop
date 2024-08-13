<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Session;

class Review extends Model
{
    use HasFactory;
    public static $review;

    protected $fillable = ['customer_id', 'product_id', 'author', 'comments', 'rating'];

    public static function newReview($request)
    {
        self::$review = new Review();
        self::$review->customer_id = Session('customer_id');

        self::$review->product_id = $request->product_id;
        self::$review->author = $request->author;
        self::$review->comments = $request->comments;
        self::$review->rating = $request->rating;
        self::$review->save();


    }
}
