@extends('layouts.app')
@section('body')
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0 font-size-18">Coupon Module</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <p class="text-center text-success">{{session('message')}}</p>
                    <h4 class="card-title">All Coupon Information</h4>
                    <table id="datatable" class="table table-bordered dt-responsive  nowrap w-100">
                        <thead>
                        <tr>
                            <th class="wd-15p border-bottom-0">SL NO</th>
                            <th class="wd-15p border-bottom-0">Coupon Code</th>
                            <th class="wd-15p border-bottom-0">Coupon Amount</th>
                            <th class="wd-20p border-bottom-0">Coupon Type</th>
                            <th class="wd-20p border-bottom-0">Coupon Status</th>
                            <th class="wd-10p border-bottom-0">Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($coupons as $coupon)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$coupon->code}}</td>
                                <td>{{$coupon->discount_amount}}</td>
                                <td>{{$coupon->type}}</td>
                                <td>{{$coupon->status == 1 ? 'Active' : 'Blocked' }}</td>
                                <td>
                                    <a href="{{route('coupon.edit', ['id' => $coupon->id])}}" class="btn btn-success btn-sm">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="{{route('coupon.delete', ['id' => $coupon->id])}}" onclick="return confirm('Are you sure To delete this?')" class="btn btn-danger btn-sm">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection



