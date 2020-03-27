@extends('home')

@section('head')
<meta property="og:image" content="{{route('home')}}">
<meta property="og:url" content="{{route('home')}}">
<meta property="og:title" content="করোনাভাইরাস ২০১৯ ॥ সকল তথ্য ॥ করোনা বট">
<title>করোনাভাইরাস ২০১৯</title>
@endsection

@section('body')

@include('partials.header_counter')

  <div class="container">

    @if (!empty($categories))
        @foreach ($categories as $category)
        @if (!$category->categoryImages->isEmpty())
            <h1>{{$category->title}}</h1><br>
            <div class="row">
            @foreach ($category->categoryImages as $categoryImage)
            <div class="col-md-4 mb-5">
                <div class="card h-auto">
                <img class="card-img-top h-auto shadow lazy"  src="{{asset('image/blur.png')}}" data-src="{{asset($categoryImage->pc_image)}}" alt="">
                <!-- social share link -->

                 <!-- social share link -->
                {{-- <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque sequi doloribus.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Find Out More!</a>
                </div> --}}
            </div>
            <button data-toggle="tooltip" data-placement="top" title="https://cdc.gov/coronavirus"><i style="font-size:24px" class="fa fa-paperclip"></i></button>
            <a style="color:black" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fcoronabd.xyz%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">
                <i class="fa fa-share-alt" style="font-size:24px"></i>
            </a>
            </div>
            @endforeach
            </div>
        @endif
        @endforeach
    @endif
  </div>
@include('partials.aboutUs')
@endsection

@section('footer')
    @include('partials.footer_main')
@endsection

@section('script')
    <script src="{{asset('js/clock.js')}}"></script>
@endsection
