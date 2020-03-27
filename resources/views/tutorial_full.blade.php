@extends('home')

@section('head')
<title>করোনাভাইরাস ২০১৯</title>
<meta property="og:image" content="{{route('tutorialfull',$tutorial->id)}}">
<meta property="og:url" content="{{route('tutorialfull',$tutorial->id)}}">
<meta property="og:title" content="করোনা ভাইরাস ২০১৯ || {{$tutorial->title}}">
@endsection

@section('style')
    {{-- <link rel="stylesheet" href="{{asset('css/blog-post.css')}}"> --}}
    <style>
        .footer{
            position:fixed !important;
        }
        iframe{
            max-width:350px !important;
        }
        img{
            max-width:350px !important;
        }
    </style>
@endsection

@section('body')
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
          {!!$tutorial->blog_post!!}
        </div>
        {{-- <div class="col-md-4">
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input
                  type="text"
                  class="form-control"
                  placeholder="Search for..."
                />
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
                    </li>
                    <li>
                      <a href="#">Freebies</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">JavaScript</a>
                    </li>
                    <li>
                      <a href="#">CSS</a>
                    </li>
                    <li>
                      <a href="#">Tutorials</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They
              are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div>
        </div> --}}
      </div>
    </div>
@endsection

@section('footer')
    @include('partials.footer_others')
@endsection
