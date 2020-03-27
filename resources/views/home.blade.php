<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="At present, the Corona virus is very severe. And there's been a lot of rumors spread around about the Corona virus. So this is our web site to give people the right idea about this epidemic. Where all updates are gathered about the Corona virus and ways to prevent from the virus affections. In addition, there is a feature called Corona Bot that will help you determine if the virus is affecting your body or not and suggest you the best way of taking any step based on your current body condition.">
<meta name="author" content="coronabd-2020">
<link rel="icon" type="image/png" href="{{asset('image/logoTabbar.png')}}"/>
<meta property="og:image" content="{{ asset('image/logo.png') }}">
<meta property="og:image:type" content="image/png/jpg">
<meta property="og:description" content="করোনাতে ভয় নয় সচেতনতা বাড়াও, সঠিক তথ্য পৌছে দিয়ে এক হয়ে দাড়াও">
<meta name="keywords" content="করোনাভাইরাস, বাংলায় করোনা, করোনাভাইরাস সম্পর্কে, কোভিড-১৯, করোনাভাইরাস ব্লগ, coronavirus info, covid-19,coronavirus bangladesh, coronabd, করোনাবিডি, coronabd com, coronabd xyz">

@yield('head')

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-161235282-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'UA-161235282-1');
</script>

@yield('style')

<link rel="stylesheet" href="{{asset('css/w3.css')}}">
<link href="{{ asset('css/business-frontpage.css') }}" rel="stylesheet">
<link href="{{ asset('bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset('css/coronabot.css') }}" rel="stylesheet">
<link rel="stylesheet" href="{{ asset('css/app.css') }}">
<link rel="stylesheet" href="{{ asset('css/application.css') }}">

{{-- loading section start --}}
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>-->
<!--<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>-->
<!--<script src="{{asset('js/loading.js')}}"></script>-->
<!--<link rel="stylesheet" href="{{asset('css/loading.css')}}">-->
{{-- loading section end --}}

<!--social shearing-->
{{-- <script async src="https://platform-api.sharethis.com/js/sharethis.js#property=5e71155767e62a0012871b91&product=sticky-share-buttons"></script> --}}
{{-- <link href="{{ asset('css/slideshow.css') }}" rel="stylesheet"> --}}
<!-- Go to www.addthis.com/dashboard to customize your tools -->

{{-- <link href="{{ asset('css/lazy.css') }}" rel="stylesheet"> --}}
{{-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> --}}
{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script> --}}
{{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> --}}
{{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> --}}
{{-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> --}}
{{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --}}
</head>

<body>
    <!--<div class="se-pre-con"></div>-->
    @include('partials.navbar')

    @yield('body')

    @yield('footer')

    @include('partials.coronabot')

    @include('chatbotresult')

    @yield('script')

    <script src="{{ asset('jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    {{-- <script src="{{ asset('js/lazy.js') }}"></script> --}}
    <script src="{{ asset('js/lazyload.js') }}"></script>
    <script src="{{ asset('js/coronabot.js') }}"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e78c1286beb1c4e"></script>
    <script src="{{asset('js/coronabotresult.js')}}"></script>
    {{-- <script src="{{ asset('js/slideshow.js') }}"></script> --}}
    {{-- <script src="{{ asset('js/ui_tooltips.js') }}"></script> --}}
    {{-- <script src="{{ asset('js/editor.js') }}"></script> --}}
    {{-- <script src="{{ asset('js/forms_pickers.js') }}"></script> --}}

    <!-- `perfect-scrollbar` library required by SideNav plugin -->
    {{-- <script src="{{ asset('js/forms_custom-controls.js') }}"></script> --}}

</body>

</html>
