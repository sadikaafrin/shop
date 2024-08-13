<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\Profile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;

class CustomerProfileController extends Controller
{
    private $orders, $order;

    public function index()
    {


        return view('customer.dashboard');
    }


    public function profile(Request $request)
    {
        $this->customer = Customer::find(Session::get('customer_id'));


        return view('customer.profile', ['customer' =>   $this->customer]);


    }
//    public function changePassword(Request $request)
//    {
//        $this->customer = Customer::where('email', $request->email_mobile)->orWhere('mobile', $request->email_mobile)->first();
//        if ($this->customer)
//        {
//            if (password_verify($request->password, $this->customer->password))
//            {
//                Session::put('customer_id', $this->customer->id);
//                Session::put('customer_name', $this->customer->name);
//
//                return redirect('/customer-change-password');
//            }
//            else
//            {
//                return back()->with('message', 'Sorry ....your password is invalid.');
//            }
//        }
//        else
//        {
//            return back()->with('message', 'Sorry ..... your email or mobile is invalid.');
//        }
//    }

    public function order()
    {
        $this->orders = Order::where('customer_id', Session::get('customer_id'))->simplePaginate(5);
        return view('customer.order', ['orders' =>  $this->orders]);
    }

    public function orderDetail($id)
    {
        $this->order = Order::find($id);
        return view('customer.order-detail',['order' => $this->order]);
    }

    public function payment()
    {
        return view('customer.payment');
    }

    public function changePassword()
    {


        return view('customer.change-password');
    }

    public function updatePassword(Request $request)
    {
        $this->customer = Customer::find(Session::get('customer_id'));
//        $this->customer = Customer::find(Session::get('customer_id'))->first();

        if ($this->customer) {
            if (password_verify($request->password, $this->customer->password)) {

//                Customer::update('password', bcrypt($request->new_password));
                $this->customer->update(['password' => bcrypt($request->new_password)]);
                Session::put('customer_id', $this->customer->id);
                Session::put('customer_name', $this->customer->name);

//                return redirect('')->with('message', 'Password changed successfully.');
                return back()->with('message', 'Password changed successfully.');

            }
            else
            {
                return back()->with('message', 'Sorry, your current password is invalid.');
            }
        }

    }

}
