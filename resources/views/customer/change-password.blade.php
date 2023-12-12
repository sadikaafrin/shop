@extends('website.master')
@section('body')
    <!-- START SECTION BREADCRUMB -->
    <div class="breadcrumb_section bg_gray py-2">
        <div class="container"><!-- STRART CONTAINER -->
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="page-title">
                        <h1>Customer</h1>
                    </div>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb justify-content-md-end">
                        <li class="breadcrumb-item"><a href="">Home</a></li>
                        <li class="breadcrumb-item"><a href="">Pages</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div><!-- END CONTAINER-->
    </div>
    <!-- END SECTION BREADCRUMB -->

    <!-- START LOGIN SECTION -->
    <div class="login_register_wrap section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-3">
                    <div class="card">
                        <div class="list-group list-group-flush">
                            <a href="{{route('customer.dashboard')}}" class="list-group-item text-muted">Dashboard</a>
                            <a href="{{route('customer.profile')}}" class="list-group-item text-muted">Profile</a>
                            <a href="{{route('customer.order')}}" class="list-group-item text-muted">Order</a>
                            <a href="{{route('customer.payment')}}" class="list-group-item text-muted">Payment</a>
                            <a href="{{route('customer.changePassword')}}" class="list-group-item text-muted">Change Password</a>
                            <a href="{{route('customer.logout')}}" class="list-group-item text-muted">Logout</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <p class="text-center text-success">{{session('message')}}</p>
                    <form action="{{ route('customer.changePassword') }}" method="POST">
                        @csrf
                        <div class="form-group mb-3">
                            <label>Current Password</label>
                            <input  class="form-control" type="password"  name="password" placeholder="Password">
                        </div>
                        <div class="form-group mb-3">
                            <label>New Password</label>
                            <input required="" class="form-control" name="new_password" type="password" placeholder="New Password">
                        </div>
                        <div class="form-group mb-3">
                            <label>Confirm Password</label>
                            <input required="" class="form-control" name="password_confirm" type="password" placeholder="Confirm Password">
                        </div>
                        <hr>
                        <div class="form-group">
                            <div class="button-box">
                                <button class="btn btn-fill-out" type="submit" >Change Password</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- END LOGIN SECTION -->
@endsection




