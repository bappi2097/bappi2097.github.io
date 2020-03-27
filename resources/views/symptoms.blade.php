@extends('home')

@section('head')

<meta name="description" content="">
<meta name="author" content="">
<meta property="og:image" content="{{asset('image/logo.png')}}">
<meta property="og:image:type" content="image/png/jpg">
<meta property="og:image" content="{{route('symptoms')}}">
<meta property="og:title" content="করোনাভাইরাস ২০১৯ ॥ আক্রান্ত হওয়ার উপসর্গ">
<meta property="og:description" content="করোনাতে ভয় নয় সচেতনতা বাড়াও, সঠিক তথ্য পৌছে দিয়ে এক হয়ে দাড়াও">
<meta name="keywords" content="করোনাভাইরাস, বাংলায় করোনা, করোনাভাইরাস সম্পর্কে, কোভিড-১৯, coronavirus info, covid-19,coronavirus bangladesh, coronabd, করোনাবিডি, coronabd com, coronabd xyz">
<title>করোনাভাইরাস ২০১৯</title>
<link rel="icon" type="image/png" href="image/logoTabbar.png"/>

@endsection

@section('body')
  <div class="container text-justify" style="margin-top:3% !important;">

    <div class="row">
      <div class="col-lg-10 offset-lg-1 col-sm-10 offset-sm-1">
        <br><br><br/>
        <h2>
            করোনা ভাইরাসের উপসর্গসমূহ (কোভিড-১৯)
            <button data-toggle="tooltip" data-placement="top" title="https://worldometers.info/coronavirus"><i style="font-size:24px" class="fa fa-paperclip"></i></button>
            <a style="color:black" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://coronabd.xyz/symptoms" class="fb-xfbml-parse-ignore">
            <i class="fa fa-share-alt" style="font-size:24px"></i>
            </a>
        </h2>
        <br/>
        <h3 class="mt-2">নিন্মোক্ত উপসর্গ গুলোই মূলত কয়েক হাজার মানুষকে এই ভাইরাস হালকা অসুস্থ্যতা থেকে মৃত্যু পর্যন্ত ডেকে নিয়েছে-</h3><br>
        <ul class="list-group" style="font-size:20px">
            <li class="list-group-item">জ্বর</li>
            <li class="list-group-item">শুকনা কাশি</li>
            <li class="list-group-item">শ্বাস নিতে কষ্ট হওয়া</li>
        </ul>
        <br>
        <p class="lead">কোভিড-১৯ সাধারণত ফ্লু-টাইপ উপসর্গের মাধ্যমে আত্বপ্রকাশ করে, এর মধ্যে জ্বর এবং কাশি অন্যতম। কিছু কিছু রুগীর ক্ষেত্রে নিউমোনিয়া, বুকে ও পেশীতে ব্যথা, শ্বাস নিতে কষ্ট হওয়া এবং দূর্বলতার মাধ্যমে এই রোগ বাড়তে থাকে।</p>
        <p class="lead">অনেকটা এমন যে- এটা জ্বরের মাধ্যমে শুরু হয়, এরপর হালকা শুকনা কাশি হতে পারে।</p>
        <p class="lead">এক সপ্তাহের মত পরে, শ্বাসকষ্টের মত শ্বাসনালীতে কিছু সমস্যা দেখা দেয়, এবং ২০% মানুষ সেক্ষেত্রে হসপিটাল এবং বিশেষজ্ঞের সরনাপন্ন হতে হয়।</p>
        <p class="lead">স্বর্দি, গলা ব্যথা বা নাক আটকে আসার মত সমস্যাও হতে পারে, কিন্তু সেটা খুবই কম ক্ষেত্রে দেখা দেয়।  তাই শুধু এগুলো দেখা দিলে- সাধারণ সিজোনাল-কোল্ড হিসেবেই বিবেচিত হবে।</p>
        <hr>
        <img src="{{asset('image/4.png')}}" alt="" style="max-width:100%; max-height:100%; height:auto; width:100%;">
        <hr>
        <h2 class="mt-4">প্রায় ৮০ শতাংশ ক্ষেত্রেই এটি হালকা এবং রিস্কমুক্ত</h2><br>
        <ul class="list-group" style="font-size:20px">
        <li class="list-group-item">৮০ শতাংশ কেইসেই এই রোগ রিস্কমুক্ত ধরা হয়, যেটা কিনা একটা সাধারণ ফ্লু-টাইপ উপসর্গ।  যেটা বাসায় বসেই নিরাময়যোগ্য।</li>
        <li class="list-group-item">১২ শতাংস ক্ষেত্রে এটা মধ্যম পর্যায়ের ধরা হয়।  এসময় নিউমোনিয়া এবং হালকা শ্বাসকষ্ট দেখা দিতে পারে। এসময় করোনাভাইরাস টেস্ট করানো উচিৎ।</li>
        <li class="list-group-item">বাকী ৮ শতাংশ কেইসকে ক্রিটিক্যাল ধরা হচ্ছে, যার জন্য হসপিটাল বা বিশেষজ্ঞের সরনাপন্ন হতে হবে।</li>
        <li class="list-group-item">রুগীর বয়স যত বেশি, তার রিস্ক ফ্যাক্টর তত বড় বলে বিবেচিত হয়।</li>
        <li class="list-group-item">অন্যদিকে শিশু, বাচ্চারা এই রোগ থেকে মোটামুটি নিশ্চিন্ত বলা যায়।</li>
        </ul>


        <h2 class="mt-4">যেসকল রোগ থাকা অবস্থায় ঝুঁকি বেশি বলে বিবেচিত হয়</h2><br>
        <ul class="list-group" style="font-size:20px">
        <li class="list-group-item">হার্টে সমস্যা</li>
        <li class="list-group-item">ডায়াবেটিকস</li>
        <li class="list-group-item">অ্যাজমা বা শ্বাসনলীর অন্য কোনো সমস্যা</li>
        <li class="list-group-item">হাই ব্লাড প্রেশার</li>
        </ul>
        <hr>

        <img src="{{asset('image/5.png')}}" alt="" style="max-width:100%; max-height:100%; height:auto; width:100%;">

        <hr>

      </div>

    </div>

  </div>
@endsection

@section('footer')
    @include('partials.footer_others')
@endsection
