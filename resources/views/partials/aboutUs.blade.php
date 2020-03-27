
<div class="bg-light py-5" id="aboutus">
    <div class="container py-5">
        <h4 class="display-5 font-weight-light" style="font-size: 2.5vw !important;">কনট্রিবিউটর</h4>
      {{-- <div class="row mb-4">
        <div class="col-lg-5"> --}}
        {{-- </div>
      </div> --}}

      <div class="row text-center">
        @foreach ($aboutus as $item)
        <div class="col-sm-2 col-sm-2 mb-4">

            <div class="bg-white rounded shadow-sm py-3 px-3 shadow"><img src="{{asset($item->image)}}" alt="" width="100%" height="100%" class="img-fluid rounded-square mb-3 img-thumbnail shadow-sm">
                <h5 class="small mb-0">{{$item->first_name}} {{$item->last_name}}</h5><span class="small text-muted">{{$item->email}}</span>
                <ul class="social mb-0 list-inline mt-3">
                  <li class="list-inline-item"><a href="mailto:{{$item->social_link}}" class="social-link"><i class="fa fa-comment-alt" aria-hidden="true"></i></a></li>
                  {{-- <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                  <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li><i class="far fa-comment-alt"></i>
                  <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li> --}}
                </ul>
              </div>

        </div>
        @endforeach
      </div>

    </div>
  </div>
