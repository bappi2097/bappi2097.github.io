function enableBtn(btnval) {
    document.getElementById("next").disabled = false;
}
function previous() {
    // document.getElementsByName("ques1").checked=false;
    var hid = document.getElementById("hid").value;
    var prev = document.getElementById("prev").value;
    var high = document.getElementById("high").value;
    document.getElementById("subBtn").hidden = true;
    document.getElementById("result").hidden = true;
    document.getElementById("next").hidden = false;
    prev = Number(Number(prev) + 1);
    if (hid > 1) hid = Number(Number(hid) - 1);
    if (prev > 1) {
        document.getElementById("ques" + hid).hidden = false;
        document.getElementById("ques" + (hid + 1)).hidden = true;
    }
    if (prev == 2) {
        document.getElementById("next").disabled = false;
    }
    document.getElementById("hid").value = hid;
    document.getElementById("prev").value = prev;
}
function next() {
    var hid = document.getElementById("hid").value;
    var prev = document.getElementById("prev").value;
    var high = document.getElementById("high").value;
    hid = Number(hid) + 1;
    document.getElementById("hid").value = hid;
    document.getElementById("high").value = hid;

    if (prev > 1) {
        prev = Number(prev) - 1;
        document.getElementById("prev").value = prev;
        document.getElementById("next").hidden = false;
        document.getElementById("subBtn").hidden = true;
    } else {
        prev = 1;
        if (hid > high) document.getElementById("high").value = hid;
    }
    if (hid != 10 && prev <= 1) {
        document.getElementById("next").disabled = true;
    }
    if (hid < high) {
        document.getElementById("next").disabled = false;
    }
    if (hid == 10) {
        document.getElementById("next").hidden = true;
        document.getElementById("prev").hidden = true;
        document.getElementById("subBtn").hidden = false;
    }
    document.getElementById("ques" + hid).hidden = false;
    document.getElementById("ques" + (Number(hid) - 1)).hidden = true;
}
function saveAndCal() {
    var ques1 = $("input[name='ques1']:checked").val();
    var ques2 = $("input[name='ques2']:checked").val();
    var ques3 = $("input[name='ques3']:checked").val();
    var ques4 = $("input[name='ques4']:checked").val();
    var ques5 = $("input[name='ques5']:checked").val();
    var ques6 = $("input[name='ques6']:checked").val();
    var ques7 = $("input[name='ques7']:checked").val();
    var ques8 = $("input[name='ques8']:checked").val();
    var ques9 = $("input[name='ques9']:checked").val();
    var ques11 = $("input[name='ques11']:checked").val();
    var heart = document.getElementById("heart").checked;
    var diabetics = document.getElementById("diabetics").checked;
    var asthama = document.getElementById("asthama").checked;
    var high_pressure = document.getElementById("high_pressure").checked;
    var nothing = document.getElementById("nothing").checked;
    var phn = document.getElementById("phn_number").value;
    var notice =
        "<p><span style='color:green'>বিঃ দ্রঃ</span> এটি সুস্পষ্ট কোন পরীক্ষা বা ডায়াগনোসিস নয়। সন্দেহ কাটাতে বিশেষজ্ঞের পরামর্শ নিন।</p>";
    var result = "";
    var resultNo = 4;
    if (ques1 == 1 && ques2 == 1 && (ques3 == 1 || ques4 == 1)) {
        resultNo = 1;
        result =
            "আপনার করোনাভাইরাসে আক্রান্ত হওয়ার ঢের সম্ভবনা পরিলক্ষিত হয়েছে। জরুরীভাবে আপনার করোনা ভাইরাস টেস্ট এবং বিশেষজ্ঞের পরামর্শ প্রয়োজন। করোনা টেস্ট এবং করোনাভাইরাস সম্পর্কিত প্রশ্নোত্তর জানতে এখানে যান- ";
    } else if (
        (ques1 == 1 && ques3 == 1) ||
        (ques1 == 1 && ques4 == 1) ||
        (ques2 == 1 && ques3 == 1) ||
        (ques2 == 1 && ques4 == 1) ||
        (ques3 == 1 && ques4 == 1)
    ) {
        resultNo = 2;
        result =
            "আপনার করোনাভাইরাসে আক্রান্ত হওয়ার মাঝারি ধরনের সম্ভবনা পরিলক্ষিত হয়েছে। সতর্কতার জন্য আপনার করোনা ভাইরাস টেস্ট এবং বিশেষজ্ঞের পরামর্শ প্রয়োজন। করোনা টেস্ট এবং করোনাভাইরাস সম্পর্কিত প্রশ্নোত্তর জানতে এখানে যান- ";
    } else if (
        ques1 == 1 ||
        ques2 == 1 ||
        (ques4 == 1 && ques5 == 1) ||
        (ques4 == 1 && ques6 == 1)
    ) {
        resultNo = 3;
        result =
            "আপনার করোনাভাইরাসে আক্রান্ত হওয়ার খুবই কম সম্ভবনা পরিলক্ষিত হয়েছে। সাধারণ ঠান্ডা-কাশি থেকে এমন হতে পারে। আপনার ব্যক্তিগত কোয়ারেন্টাইনে থাকা প্রয়োজন। করোনাভাইরাস সম্পর্কিত প্রশ্নোত্তর জানতে এখানে যান- ";
    } else {
        result =
            "আপনার করোনাভাইরাসে আক্রান্ত হওয়ার সম্ভবনা পরিলক্ষিত হয়নি। করোনাভাইরাস সম্পর্কিত প্রশ্নোত্তর জানতে এখানে যান- ";
    }
    document.getElementById("resultNo").value = resultNo;
    result +=
        "<a href='https://coronabd.xyz/symptoms' target='_blank'>লিংক</a>";
    document.getElementById("ques10").hidden = true;
    document.getElementById("result").hidden = false;
    document.getElementById("ques11").hidden = false;
    document.getElementById("subBtn").hidden = true;
    document.getElementById("next").hidden = true;
    document.getElementById("next2").hidden = false;
    document.getElementById("prevBtn").hidden = true;
    document.getElementById("cancelBtn").hidden = true;
    document.getElementById("result_para").innerHTML = result;
    document.getElementById("notice_para").innerHTML = notice;
}
function enableBtn2() {
    document.getElementById("next2").disabled = false;
}
// function next2() {
//     var high = document.getElementById("high").value;
//     if ($("input[name='ques11']:checked").val() == 1) {
//         document.getElementById("ques12").hidden = false;
//         document.getElementById("result").hidden = true;
//         document.getElementById("ques11").hidden = true;
//         document.getElementById("high").value = 15;
//     }
//     if (high == 15) {
//         var ques1 = $("input[name='ques1']:checked").val();
//         var ques2 = $("input[name='ques2']:checked").val();
//         var ques3 = $("input[name='ques3']:checked").val();
//         var ques4 = $("input[name='ques4']:checked").val();
//         var ques5 = $("input[name='ques5']:checked").val();
//         var ques6 = $("input[name='ques6']:checked").val();
//         var ques7 = $("input[name='ques7']:checked").val();
//         var ques8 = $("input[name='ques8']:checked").val();
//         var ques9 = $("input[name='ques9']:checked").val();
//         var ques11 = $("input[name='ques11']:checked").val();
//         var heart = document.getElementById("heart").checked;
//         var diabetics = document.getElementById("diabetics").checked;
//         var asthama = document.getElementById("asthama").checked;
//         var high_pressure = document.getElementById("high_pressure").checked;
//         var nothing = document.getElementById("nothing").checked;
//         var phn = document.getElementById("phn_number").value;
//         var result = document.getElementById("resultNo").value;
//         $.ajax({
//             url: "{{url('/result')}}",
//             data: {
//                 _token: "{{ csrf_token() }}",
//                 ques1: ques1,
//                 ques2: ques2,
//                 ques3: ques3,
//                 ques4: ques4,
//                 ques5: ques5,
//                 ques6: ques6,
//                 ques7: ques7,
//                 ques8: ques8,
//                 ques9: ques9,
//                 phone_number: phn,
//                 diabetics: diabetics,
//                 asthama: asthama,
//                 high_pressure: high_pressure,
//                 heart: heart,
//                 nothing: nothing,
//                 ques11: ques11,
//                 result: result
//             },
//             method: "POST",
//             success: function(data) {
//                 if (!data.isValid) {
//                     document.getElementById("message").hidden = false;
//                 } else {
//                     document.getElementById("message").hidden = true;
//                     document.getElementById("next2").hidden = true;
//                     document.getElementById("ques12").hidden = true;
//                     document.getElementById("result").hidden = true;
//                     document.getElementById("13").hidden = false;
//                     document.getElementById("cancelBtn").hidden = false;
//                 }
//             },
//             error: function(error) {
//                 console.log(error);
//                 alert(error);
//             }
//         });
//     }
//     if ($("input[name='ques11']:checked").val() == 0) {
//         var ques1 = $("input[name='ques1']:checked").val();
//         var ques2 = $("input[name='ques2']:checked").val();
//         var ques3 = $("input[name='ques3']:checked").val();
//         var ques4 = $("input[name='ques4']:checked").val();
//         var ques5 = $("input[name='ques5']:checked").val();
//         var ques6 = $("input[name='ques6']:checked").val();
//         var ques7 = $("input[name='ques7']:checked").val();
//         var ques8 = $("input[name='ques8']:checked").val();
//         var ques9 = $("input[name='ques9']:checked").val();
//         var ques11 = $("input[name='ques11']:checked").val();
//         var heart = document.getElementById("heart").checked;
//         var diabetics = document.getElementById("diabetics").checked;
//         var asthama = document.getElementById("asthama").checked;
//         var high_pressure = document.getElementById("high_pressure").checked;
//         var nothing = document.getElementById("nothing").checked;
//         var result = document.getElementById("resultNo").value;
//         $.ajax({
//             url: "{{url('/result')}}",
//             data: {
//                 _token: "{{ csrf_token() }}",
//                 ques1: ques1,
//                 ques2: ques2,
//                 ques3: ques3,
//                 ques4: ques4,
//                 ques5: ques5,
//                 ques6: ques6,
//                 ques7: ques7,
//                 ques8: ques8,
//                 ques9: ques9,
//                 diabetics: diabetics,
//                 asthama: asthama,
//                 high_pressure: high_pressure,
//                 heart: heart,
//                 nothing: nothing,
//                 ques11: ques11,
//                 result: result
//             },
//             method: "POST",
//             success: function(data) {
//                 document.getElementById("message").hidden = true;
//                 document.getElementById("next2").hidden = true;
//                 document.getElementById("ques12").hidden = true;
//                 document.getElementById("result").hidden = true;
//                 document.getElementById("13").hidden = false;
//                 document.getElementById("cancelBtn").hidden = false;
//             },
//             error: function(error) {
//                 console.log(error);
//                 alert("Data not saved");
//             }
//         });
//         document.getElementById("next2").hidden = true;
//         document.getElementById("ques11").hidden = true;
//         document.getElementById("result").hidden = true;
//         document.getElementById("13").hidden = false;
//         document.getElementById("cancelBtn").hidden = false;
//     }
// }
// function checkRegex() {
//     var phn = document.getElementById("opehn_number").value;
//     if (phn.match(/^\+?(88)?0?1[3456789][0-9]{8}\b/gi)) {
//         document.getElementById("next2").disabled = false;
//     }
// }
