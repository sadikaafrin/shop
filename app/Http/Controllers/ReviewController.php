<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Product;
use App\Models\Review;
use Session;
use Illuminate\Http\Request;
use function Laravel\Prompts\table;

class ReviewController extends Controller
{

    public function reviewStore(Request $request)
    {


        Review::newReview($request);
        $reviews = Review::select('author', 'comments', 'rating')->get();
        return back()->with('message', 'Review has been sent successfully. Thank you.');
    }
}
