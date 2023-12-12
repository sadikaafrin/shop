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
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Edit Coupon Form</h4>
                    <p class="text-center">{{session('message')}}</p>
                    <form action="{{route('coupon.update', ['id' => $coupon->id])}}" method="POST">
                        @csrf
                        <div class="row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Coupon Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="code"  value="{{ $coupon->code }}" name="code" placeholder="Coupon Code">
                            </div>
                        </div>

{{--                        <select name="brand_id" class="form-control">--}}
{{--                            <option value=""> -- Select Product Brand -- </option>--}}
{{--                            @foreach($brands as $brand)--}}
{{--                                <option value="{{ $brand->id }}" {{$product->brand_id == $brand->id ? 'selected' : ''}}>{{ $brand->name }}</option>--}}
{{--                            @endforeach--}}
{{--                        </select>--}}



                        <div class="row mb-4">
                            <label for="horizontal-firstname-input status" class="col-sm-3 col-form-label">Coupon Type</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="type" name="type" >
                                    <option value="percentage" {{ $coupon->type == 'percentage' ? 'selected' : '' }}>Percentage</option>
                                    <option value="fixed" {{ $coupon->type == 'fixed' ? 'selected' : '' }}>Fixed</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Coupon Amount</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control"  name="discount_amount" value="{{$coupon->discount_amount}}" placeholder="Coupon Amount">
                            </div>
                        </div>
                        {{--                        <div class="row mb-4">--}}
                        {{--                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Starting Date</label>--}}
                        {{--                            <div class="col-sm-9">--}}
                        {{--                                <input class="form-control"  name="valid_date" placeholder="Coupon Code Starting Date">--}}
                        {{--                            </div>--}}
                        {{--                        </div>--}}
                        {{--                        <div class="row mb-4">--}}
                        {{--                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Expiring Date</label>--}}
                        {{--                            <div class="col-sm-9">--}}
                        {{--                                <input class="form-control"  name="valid_date" placeholder="Coupon Code Expire Date">--}}
                        {{--                            </div>--}}
                        {{--                        </div>--}}
                        <div class="row mb-4">
                            <label for="horizontal-firstname-input status" class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-9">

                                <select class="form-control" id="type" name="status">
                                    <option value="1" {{ $coupon->status == 1 ? 'selected' : '' }}>Active</option>
                                    <option value="0" {{ $coupon->status == 0 ? 'selected' : '' }}>Block</option>
                                </select>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-9">

                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Create New Coupon</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- end card body -->
            </div>
            <!-- end card -->

        </div>
    </div>
@endsection



