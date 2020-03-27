@extends('home')

@section('head')
<title>করোনাভাইরাস ২০১৯</title>
<meta property="og:image" content="{{route('home')}}">
<meta property="og:url" content="{{route('home')}}">
<meta property="og:title" content="করোনাভাইরাস ২০১৯ ॥ সকল তথ্য ॥ করোনা বট">
@endsection

@section('style')
    <link href="{{ asset('css/slideshow.css') }}" rel="stylesheet">
@endsection

@section('body')
@include('partials.header')
<div class="container">
    @if (!empty($photoCategories))
        @foreach ($photoCategories as $photoCategory)
            @if (!$photoCategory->photoGalleries->isEmpty())
            <h1>{{$photoCategory->title}}</h1><br>
            <div class="row">
                @foreach ($photoCategory->photoGalleries as $photoGallery)
                <div class="col-md-4 mb-5">
                    <div class="card h-auto">
                        <img class="card-img-top h-auto shadow lazy"  src="{{asset('image/blur.png')}}" data-src="{{asset($photoGallery->pc_image)}}" alt="">
                    </div>
                    <button data-toggle="tooltip" data-placement="top" title="https://www.facebook.com/dghsbd/"><i style="font-size:24px" class="fa fa-paperclip"></i></button>
                    <a style="color:black" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https://coronabd.xyz/photoGallery" class="fb-xfbml-parse-ignore">
                    <i class="fa fa-share-alt" style="font-size:24px"></i>
                    </a>
                </div>
                @endforeach
                <hr class="shadow">
            </div>
            @endif
        @endforeach
    @endif
</div>
@endsection

@section('footer')
    @include('partials.footer_others')
@endsection


@section('script')
    <script src="{{ asset('js/slideshow.js') }}"></script>
@endsection
