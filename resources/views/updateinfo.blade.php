@extends('home')

@section('head')

<title>করোনাভাইরাস ২০১৯</title>
<meta property="og:image" content="{{route('updateinfo')}}">
<meta property="og:url" content="{{route('updateinfo')}}">
<meta property="og:title" content="করোনাভাইরাস ২০১৯ ॥ দেশ-বিদেশের সর্বশেষ আপডেট">

@endsection

@section('body')

<br><br><br>

<div class="container" style="height:50px; width: 200px;background-color:null;">
    <img src="{{asset('image/ProthomAlo.png')}}" alt="" width="150px" height="100px" class=" mb-5 img-thumbnail shadow-xl">
</div>

<div class="container text-justify">
    <div class="row">
        <div class="col-lg-10 offset-lg-1 col-sm-10 offset-sm-1">

            <iframe src="https://service.prothomalo.com/commentary/index.php" frameborder="0" width="100%" height="1000px"></iframe>

        </div>
    </div>
    <br/>
</div>

@endsection

@section('footer')
    @include('partials.footer_others')
@endsection
