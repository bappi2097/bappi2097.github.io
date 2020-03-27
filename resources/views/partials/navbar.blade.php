<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{route('home')}}">
            <img src="{{asset('image\new_nav_logo.png')}}" class="bg-dark" alt="" style="height: auto; width:35%; margin:0 !important;" srcset="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
      <div class="collapse navbar-collapse" id="navbarResponsive" style="font-size:17px !important;">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item @if (url()->current() == route('home')) active @endif ">
            <a class="nav-link" href="{{route('home')}}">
                হোম
                  <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item  @if (url()->current() == route('symptoms')) active  @endif">
            <a class="nav-link"  href="{{route('symptoms')}}">
                উপসর্গ
            </a>
          </li>
          <li class="nav-item @if (url()->current() == route('updateinfo')) active @endif ">
            <a class="nav-link " href="{{route('updateinfo')}}">
                আপডেট
            </a>
          </li>
          <li class="nav-item @if (url()->current() == route('faq')) active @endif ">
            <a class="nav-link" href="{{route('faq')}}">
                প্রশ্নোত্তর
            </a>
          </li>
          <li class="nav-item @if (url()->current() == route('photoGallery')) active @endif ">
            <a class="nav-link" href="{{route('photoGallery')}}">
                তথ্যচিত্র
            </a>
          </li>
          <li class="nav-item @if (url()->current() == route('quarantine')) active @endif ">
            <a class="nav-link" href="{{route('quarantine')}}">
                কোয়ারেন্টিন
            </a>
          </li>
          <li class="nav-item @if (url()->current() == route('tutorial')) active @endif ">
            <a class="nav-link" href="{{route('tutorial')}}">
                ব্লগ
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <br><br><br>
