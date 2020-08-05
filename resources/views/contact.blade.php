@extends('layouts.front')

@section('content')

<div class="contact-area ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="contact-map-wrapper">
                            <div class="contact-map mb-40">
                                <div id="hastech2">
                                    
                                    <div class="mapouter"><div class="gmap_canvas"><iframe width="700" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=buet%2Cdhaka&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.whatismyip-address.com/nordvpn-coupon/">nordvpn 2 year coupon code</a></div><style>.mapouter{position:relative;text-align:right;height:400px;width:700px;}.gmap_canvas {overflow:hidden;background:none!important;height:400px;width:700px;}</style></div>
                                </div>
                            </div>
                            <div class="contact-message">
                                <div class="contact-title">
                                    <h4>Contact Information</h4>
                                </div>
                                <form id="contact-form" class="contact-form" action="
                                /mail.php" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="contact-input-style mb-30">
                                                <label>Name*</label>
                                                <input name="name" required="" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="contact-input-style mb-30">
                                                <label>Email*</label>
                                                <input name="email" required="" type="email">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="contact-input-style mb-30">
                                                <label>Telephone</label>
                                                <input name="telephone" required="" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="contact-input-style mb-30">
                                                <label>subject</label>
                                                <input name="subject" required="" type="text">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="contact-textarea-style mb-30">
                                                <label>Comment*</label>
                                                <textarea class="form-control2" name="message" required=""></textarea>
                                            </div>
                                            <button class="submit contact-btn btn-hover" type="submit">
                                                Send Message 
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <p class="form-messege"></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="contact-info-wrapper">
                            <div class="contact-title">
                                <h4>Location & Details</h4>
                            </div>
                            <div class="contact-info">
                                <div class="single-contact-info">
                                    <div class="contact-info-icon">
                                        <i class="ti-location-pin"></i>
                                    </div>
                                    <div class="contact-info-text">
                                        <p><span>Address:</span>  1234 - BUET <br> Polashi. Dhaka</p>
                                    </div>
                                </div>
                                <div class="single-contact-info">
                                    <div class="contact-info-icon">
                                        <i class="pe-7s-mail"></i>
                                    </div>
                                    <div class="contact-info-text">
                                        <p><span>Email: </span> Ecom@mail.com</p>
                                    </div>
                                </div>
                                <div class="single-contact-info">
                                    <div class="contact-info-icon">
                                        <i class="pe-7s-call"></i>
                                    </div>
                                    <div class="contact-info-text">
                                        <p><span>Phone: </span>  (800) 0123 456 789</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

@endsection
        		