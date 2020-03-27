<div class="right-panel-icon cartContent" id="coronabot" style="padding:0 !important; bottom:40px !important;">
        <p class="d-inline-block" data-toggle="modal" data-target="#exampleModalPreview">

        <img id="imgLogo" src="{{asset('image\coronabot_logo.png')}}" style="height:10%; width:80px; margin: 0 !important; background:#ffc107;"><span class="badge badge-danger indicator"></span>
        </p>
    </div>


<div class="modal fade right" id="exampleModalPreview" tabindex="-1" role="dialog" aria-labelledby="exampleModalPreviewLabel" aria-hidden="true" style="font-size:2vw;" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <img src="{{asset('image\coronabot_logo.png')}}" style="height:20%; width:35%; background:white;margin-left:30%;" alt="" srcset="">
        {{-- <h5 class="modal-title" id="exampleModalPreviewLabel">করোনা বট</h5> --}}
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"
        onclick="location.reload(true);">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="font-size:19px; text-align:justify;">
        <div class="col-md-9" id="result" style="max-width:90%;" hidden>
            <div id="result_para" class="" ></div>
            <div id="notice_para" class=""></div>
        </div>
        <div class="col-md-9" id="ques1" style="margin-right:0;">
            <p>১। করোনাভাইরাস ছড়িয়েছে এমন কোনো এলাকায় কি আপনি সাম্প্রতিক ভ্রমণ করেছেন?</p>
            <input type="radio" id="1" name="ques1" onclick="enableBtn(1)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques1" value="0"  onclick="enableBtn(1)"><label class="form-check-label" for="">না</label>
        </div>

        <div class="col-md-9" id="ques2" hidden>
            <p>২। আপনি কি গত ১৪ দিনে করোনাভাইরাস আক্রান্ত কোনো ব্যক্তির সংস্পর্শে (৬ ফিট দূরত্বে) অবস্থান করেছেন?</p>
            <input type="radio" id="2" name="ques2" onclick="enableBtn(2)"  value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques2" value="0" onclick="enableBtn(2)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques3" hidden>
            <p>৩। স্বল্প সময়ের জন্য হলেও কি আপনি সাম্প্রতিক জ্বর অনুভব করেছেন বা বর্তমানে জ্বর আছে?</p>
            <input type="radio" id="3" name="ques3" onclick="enableBtn(3)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques3" value="0"  onclick="enableBtn(3)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques4" hidden>
            <p>৪। আপনার কি রেসপিরেটরী সিন্ড্রোমের যেকোনো একটি (কাশি, শ্বাসকষ্ট বা দীর্ঘশ্বাস নিতে অসুবিধা) পরিলক্ষিত হয়েছে?</p>
            <input type="radio" id="4" name="ques4" onclick="enableBtn(2)"  value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques4" value="0" onclick="enableBtn(2)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques5" hidden>
            <p>৫। আপনার গলায় কি ব্যথা আছে?</p>
            <input type="radio" id="5" name="ques5" onclick="enableBtn(3)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques5" value="0" onclick="enableBtn(3)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques6" hidden>
            <p>৬। সাম্প্রতিক কি আপনি শরীরে কোন প্রকার অস্থিরতা বোধ করেছেন?</p>
            <input type="radio" id="6" name="ques6" onclick="enableBtn(4)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques6" value="0" onclick="enableBtn(4)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques7" hidden>
            <p>৭। আপনার শরীর বা পেশীতে কি ব্যথা আছে?</p>
            <input type="radio" id="7" name="ques7" onclick="enableBtn(5)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques7" value="0" onclick="enableBtn(5)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques8" hidden>
            <p>৮। শরীরে কি দূর্বলতা অনুভব করেন?</p>
            <input type="radio" id="8" name="ques8" onclick="enableBtn(6)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques8" value="0" onclick="enableBtn(6)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques9" hidden>
            <p>৯। সর্দি, হাচি বা নাক আটকে আসার সমস্যা আছে?</p>
            <input type="radio" name="ques9" id="9" onclick="enableBtn(7)" value="1"><label class="form-check-label" for="">হ্যা</label>
            <input type="radio" name="ques9" value="0" onclick="enableBtn(7)"><label class="form-check-label" for="">না</label>
        </div>
        <div class="col-md-9" id="ques10" hidden>
            <p>১০। নিচের কোনোটি কি আপনার রয়েছে বা পূর্বে ছিলো?</p>
            <input type="checkbox" name="heart" id="heart" >হৃদরোগ<br>
            <input type="checkbox" name="diabetics" id="diabetics" >ডায়াবেটিস<br>
            <input type="checkbox" name="asthama" id="asthama">হাপানি<br>
            <input type="checkbox" name="high_pressure" id="high_pressure" >হাই-প্রেশার<br>
            <input type="checkbox" name="nothing" id="nothing">কোনোটিই নয়<br>
        </div>

        <div class="col-md-9" id="ques11" style="max-width:90%;" hidden>
            <p style="color:green;">দয়া করে আমাদের একটি গবেষণাধর্মী কাজে কিছু তথ্য দিয়ে সাহায্য করুন-</p>
            <label class="form-check-label" for=""> <input type="radio" name="ques11" id="11" onclick="enableBtn2()" value="1">আপনি কারোর সত্য উপসর্গগুলো ইনপুট দিয়েছেন</label><br>
            <input type="radio" name="ques11" value="0" onclick="enableBtn2()"><label class="form-check-label" for="">টেস্ট পারপাজে ডেটাগুলো ইনপুট দিয়েছেন</label>
        </div>
        <div class="col-md-9" id="ques12" hidden>
            <p>আপনি চাইলে রুগীর ফোন নাম্বার দিয়ে আমাদের গবেষনাধর্মী কাজে সহযোগীতা করতে পারেন। এতে আপনাকে কল করে কিছু প্রশ্ন জানতে চাওয়া হতে পারে।</p>
            <input type="text" name="phn_number" placeholder="+8801xxxxxxxxx" id="phn_number">
            <p id="message" style="color: red;" hidden>ভুল ফোন নম্বর</p>
        </div>
        <div class="col-md-9" id="13" hidden>
            <p>আমাদের সিস্টেম ব্যবহার করার জন্য আপনাকে ধন্যবাদ।</p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="previous()" id="prevBtn">পূর্ববর্তী</button>
        <button disabled class="btn btn-primary" style="float:right;" onclick="next()" id="next">পরবর্তী</button>
        <button disabled class="btn btn-primary" style="float:right;" onclick="next2()" id="next2" hidden>পরবর্তী</button>
        <button type="button" class="btn btn-success" id="subBtn" onclick="saveAndCal()" hidden>ফলাফল</button>
        <button type="button" class="btn btn-danger" id="cancelBtn" onclick="location.reload(true);" hidden>বাতিল</button>
        <input type="hidden" value="1" id="hid">
        <input type="hidden" id="resultNo">
        <input type="hidden" value="1" id="prev">
        <input type="hidden" value="1" id="high">
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
