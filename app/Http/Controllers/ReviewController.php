<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Review;
use Session;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function reviewStore(Request $request)
    {
//        dd($request);


        Review::newReview($request);
        return back()->with('message', 'review has been sent successfully,Thank you.');

    }
}
