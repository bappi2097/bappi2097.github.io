@extends('home')

@section('head')
<title>করোনাভাইরাস ২০১৯</title>
<meta property="og:image" content="{{route('tutorial')}}">
<meta property="og:title" content="করোনাভাইরাস ২০১৯ ||  প্রয়োজনীয় টিউটোরিয়াল || ব্লগ">
@endsection

@section('body')
    <div class="container">
    @if (!$tutorialcategories->isEmpty())
      @foreach ($tutorialcategories as $tutorialcategory)
      @if (!$tutorialcategory->tutorials->isEmpty())
      <h2 style="margin-top:2%; margin-bottom: 2%;">{{$tutorialcategory->title}}</h2>
      <div class="row">
        @foreach ($tutorialcategory->tutorials as $tutorial)
        <div class="col-md-6 col-lg-4 col-sm-4" style="">
          <div class="card">
            @if ($tutorial->view_type == 1)
                {!!$tutorial->video!!}
            @else
                <img
                    class="card-img-top lazy"
                    src="{{asset('image/blur.png')}}"
                    data-src="{{asset($tutorial->image)}}"
                    alt=""
                    />
            @endif
            <div class="card-body">
              <h5 class="card-title">{{$tutorial->title}}</h5>
              <p class="card-text">
                {{$tutorial->description}}
              </p>
            </div>
            <div class="card-footer">
                <a href="{{route('tutorialfull',['id'=>$tutorial->id])}}" class="btn btn-primary">আরও জানুন</a>
                <a style="color:black" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u={{route('tutorialfull',['id'=>$tutorial->id])}}" class="fb-xfbml-parse-ignore">
                    <i class="fa fa-share-alt" style="font-size:24px"></i>
                </a>
                @if (!empty($tutorial->reference))
                <button data-toggle="tooltip" data-placement="top" title="{{$tutorial->reference}}"><i style="font-size:24px" class="fa fa-paperclip"></i></button>
                @endif
            </div>
          </div>
        </div>
        @endforeach
      </div>
      @endif
      @endforeach
      @endif
    </div>
    <br><br>
@endsection

@section('footer')
    @include('partials.footer_others')
@endsection
