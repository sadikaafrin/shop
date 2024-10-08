@extends('layouts.app')
@section('body')
    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            font-size: 16px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }

        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
        }

        .invoice-box table td {
            padding: 5px;
            vertical-align: top;
        }

        .invoice-box table tr td:nth-child(2) {
            text-align: right;
        }

        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }

        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }

        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }

        .invoice-box table tr.item td {
            border-bottom: 1px solid #eee;
        }

        .invoice-box table tr.item.last td {
            border-bottom: none;
        }

        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }

        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }

            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }

        /** RTL **/
        .invoice-box.rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }

        .invoice-box.rtl table {
            text-align: right;
        }

        .invoice-box.rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0 font-size-18">Order Module</h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item active">Order Invoice</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- end page title -->
    <!-- Row -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Order Invoice Information</h3>
                </div>
                <div class="card-body">
                    <div class="invoice-box">
                        <table cellpadding="0" cellspacing="0">
                            <tr class="top">
                                <td colspan="4">
                                    <table>
                                        <tr>
                                            <td class="title">
                                                <img
                                                    src="http://127.0.0.1:8000/website/assets/images/logo_dark.png"
                                                    style="width: 100%; max-width: 300px"
                                                />
                                            </td>

                                            <td>
                                                Invoice #: 000{{$order->id}}<br />
                                                Order Date: {{$order->order_date}}<br />
                                                Invoice Date: {{date('Y-m-d H:i:s')}}
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr class="information">
                                <td colspan="4">
                                    <table>
                                        <tr>
                                            <td>
                                                <h4>Delivery Information</h4>
                                                {{$order->customer->name}}<br />
                                                {{$order->customer->mobile}}<br />
                                                {{$order->customer_address}}
                                            </td>

                                            <td>
                                                <h4>Delivery Address</h4>
                                                {{$order->delivery_address}}.<br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr class="heading">
                                <td>Payment Method</td>

                                <td colspan="3">Check #</td>
                            </tr>

                            <tr class="details">
                                <td>{{$order->payment_method}}</td>

                                <td colspan="3">{{$order->order_total}}</td>
                            </tr>

                            <tr class="heading">
                                <td>Item</td>
                                <td style="text-align: center">Price</td>
                                <td style="text-align: center">Quantity</td>
                                <td style="text-align: right">Total</td>
                            </tr>
                            @php($sum=0)
                            @foreach($order->orderDetail as $orderDetail)
                                <tr class="item">
                                    <td>{{$orderDetail->product_name}}</td>
                                    <td style="text-align: center">{{number_format($orderDetail->product_price)}}</td>
                                    <td style="text-align: center">{{$orderDetail->product_qty}}</td>
                                    <td style="text-align: right">{{number_format($total = $orderDetail->product_price * $orderDetail->product_qty)}}</td>
                                </tr>
                                @php($sum=$sum + $total)
                            @endforeach
                            <tr class="total">
                                <td></td>
                                <td colspan="3">Sub Total: {{$sum}}</td>
                            </tr>
                            <tr class="total">
                                <td></td>
                                <td colspan="3">Tax Amount(15%): {{number_format($order->tax_total)}}</td>
                            </tr>
                            <tr class="total">
                                <td></td>
                                <td colspan="3">Shipping Amount: {{$order->shipping_total}}</td>
                            </tr>
                            <tr class="total">
                                <td></td>
                                <td colspan="3">Total Payable: {{number_format($order->order_total)}}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->

@endsection

