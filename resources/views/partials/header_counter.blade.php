<div class="container"">
<div class="row">
    <div class="col-lg-10 offset-lg-1 col-sm-10 offset-sm-1">
        <div class="container">
            <div class="row">
                @if (!empty($wdata))
                <div class="col-lg-6 col-sm-6 col-md-6 ">
                    <br><br>
                    <div class="bg-white shadow" style="border-radius: 5%;padding:5%;">
                        <p>সর্বমোট আক্রান্তের সংখ্যা</p>
                        <h2 style=" color:red; font-weight: bold;">{{$wdata['cases']}}</h2><br>
                        <span class="dotb" style="background-color:gold;"></span>
                        <label>চিকিৎসা চলছে</label>
                        <label style="margin-right:20%; float:right;">{{$wdata['active']}}</label><br>
                        <span class="dotb" style="background-color:green;"></span>
                        <label>আরোগ্য লাভ করেছে</label>
                        <label style="margin-right:20%; float:right;">{{$wdata['recovered']}}</label><br>
                        <span class="dotb" style="background-color:red;"></span>
                        <label>মৃতের সংখ্যা</label>
                        <label style="margin-right:20%; float:right;">{{$wdata['deaths']}}</label><br>
                    <br>
                    </div>
                </div>
                @endif
                @if (!empty($bddata))
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <br><br>

                    <div class=" bg-white shadow" style="border-radius: 5%; padding:5%;">
                        <div>
                            <br><p>দেশে আক্রান্তের সংখ্যা</p>
                            <div id="MyClockDisplay" style="font-size: 16px; float:right;" onload="showTime()"></div>
                            <h2 style=" color:red; font-weight: bold;">{{$bddata['cases']}}</h2>
                            <div class="progress" style="margin-bottom:2%;">
                                <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: {{$bddata['activeP']}}%; border-radius:5%;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: {{$bddata['recoveredP']}}%; border-radius:5%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: {{$bddata['deathP']}}%; border-radius:5%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <span class="dotb" style="background-color:gold;"></span>
                        <label>চিকিৎসা চলছে</label>
                        <label style="margin-right:20%; float:right;">{{$bddata['active']}}</label><br>
                        <span class="dotb" style="background-color:green;"></span>
                        <label>আরোগ্য লাভ করেছে</label>
                        <label style="margin-right:20%; float:right;">{{$bddata['recovered']}}</label><br>
                        <span class="dotb" style="background-color:red;"></span>
                        <label>মৃতের সংখ্যা</label>
                        <label style="margin-right:20%; float:right;">{{$bddata['deaths']}}</label><br>
                        <span class="dotb" style="background-color:blue;"></span>
                        <label>মোট কোয়ারেন্টিন </label>
                        <label style="margin-right:20%; float:right;">{{$quarantine['total_quarantine']}}</label><br>
                        <span class="dotb" style="background-color:skyblue;"></span>
                        <label>কোয়ারেন্টিন থেকে মুক্তি</label>
                        <label style="margin-right:20%; float:right;">{{$quarantine['finished_quarantine']}}</label><br>
                    </div>
                </div>
                @endif
                <br>
            </div>
        </div>
        <br>
        @if (!empty($wdata) || !empty($bddata))
        <a href="https://www.worldometers.info/coronavirus/#countries" target="_blank" style="margin-left:35%; text-decoration:underline;">আরও বিস্তারিত দেখুন</a>
        @endif
    </div>
</div>
</div>
<br><br>
