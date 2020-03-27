@extends('home')

@section('head')
<title>করোনাভাইরাস ২০১৯</title>
<meta property="og:image" content="{{route('faq')}}">
<meta property="og:url" content="{{route('faq')}}">
<meta property="og:title" content="করোনাভাইরাস ২০১৯ ॥ প্রয়োজনীয় প্রশ্নোত্তর">

@endsection

@section('style')
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="{{asset('css/faq.css')}}">
@endsection

@section('body')

<div id="fb-root"></div>
<div class="container">
    <div class="faqHeader"><h2>সম্ভাব্য সকল প্রশ্নউত্তর </h2></div>
    <div class="panel-group" id="accordion">
        @if (!$data->isEmpty())
        @foreach ($data as $item)
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$item->id}}">{{$item->question}}
                    <button data-toggle="tooltip" data-placement="top" title="https://cdc.gov/coronavirus"><i style="font-size:24px" class="fa fa-paperclip"></i></button>
                    <a style="color:black" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fcoronabd.xyz%2Ffaq&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">
                    <i class="fa fa-share-alt" style="font-size:24px"></i>
                    </a>
                    </a>
                </h4>
            </div>
            <div id="collapse{{$item->id}}" class="panel-collapse collapse in">
                <div class="panel-body">
                    {!!$item->answer!!}
            </div>
            </div>
        </div>
        @endforeach
        @endif
</div>
</div>
@endsection

@section('footer')
    @include('partials.footer_others')
@endsection

@section('script')
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v6.0"></script>
@endsection
