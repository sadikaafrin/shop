<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use App\Models\Unit;
use Illuminate\Http\Request;
use Livewire\Features\SupportConsoleCommands\Commands\CopyCommand;

class CouponController extends Controller
{
    private $coupon, $coupons;

    public function index()
    {

        return view('admin.Coupon.add');
    }


    public function create(Request $request)
    {
        Coupon::newCoupon($request);
        return  back()->with('message', 'Coupon info create successfully.');
    }

    public function manage()
    {
        $this->coupons = Coupon::all();
        return view('admin.coupon.manage', ['coupons' => Coupon::all()]);
    }

    public function edit($id)
    {
        $this->coupon = Coupon::find($id);
        $this->coupons = Coupon::all();

        return view('admin.coupon.edit', ['coupon' => $this->coupon, 'coupons' => $this->coupons]);
    }

    public function update(Request $request, $id)
    {
        Coupon::updateCoupon($request, $id);
        return redirect('/coupons/manage')->with('message', 'Coupon info update successfully.');
    }

    public function delete($id)
    {
        Coupon::deleteCoupon($id);
        return back()->with('message', 'Unit info delete successfully.');
    }
}
