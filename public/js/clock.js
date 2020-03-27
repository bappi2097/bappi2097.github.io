function showTime() {
    var numbers = {
        0: "০",
        1: "১",
        2: "২",
        3: "৩",
        4: "৪",
        5: "৫",
        6: "৬",
        7: "৭",
        8: "৮",
        9: "৯"
    };

    var date = new Date();
    var h = date.getHours(); // 0 - 23
    var m = date.getMinutes(); // 0 - 59
    var s = date.getSeconds(); // 0 - 59
    var session = "AM";

    var hr = "";
    if (h > 9) {
        hr += numbers[parseInt(h / 10)];
    } else {
        hr += "0";
    }
    hr += numbers[h % 10];

    var mn = "";
    mn += numbers[parseInt(m / 10)];
    mn += numbers[m % 10];

    var se = "";
    se += numbers[parseInt(s / 10)];
    se += numbers[s % 10];
    var time =
        "<label style='padding:5px; color:green;'>বর্তমান সময়</label><label>" +
        hr +
        ":" +
        mn +
        ":" +
        se +
        "</label>";
    document.getElementById("MyClockDisplay").innerHTML = time;
    // document.getElementById("MyClockDisplay").textContent = time;
    setTimeout(showTime, 1000);
}

showTime();
