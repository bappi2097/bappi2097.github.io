@extends('home')
@section('style')
    <link rel="stylesheet" href="{{asset('css/error.css')}}">
@endsection
@section('body')
    <body>
  <section id="not-found">
    <div id="title" ></div>
    <div class="circles">
      <p style="color:grey;">404<br>
       <small>PAGE NOT FOUND</small>
      </p>
      <span class="circle big"></span>
      <span class="circle med"></span>
      <span class="circle small"></span>
    </div>
  </section>
 </body>
@endsection
@section('footer')
    @include('partials.footer_others')
@endsection
