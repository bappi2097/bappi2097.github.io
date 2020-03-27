<script>
function next2() {
    var high = document.getElementById("high").value;
    if ($("input[name='ques11']:checked").val() == 1) {
        document.getElementById("ques12").hidden = false;
        document.getElementById("result").hidden = true;
        document.getElementById("ques11").hidden = true;
        document.getElementById("high").value = 15;
    }
    if (high == 15) {
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
        var result = document.getElementById("resultNo").value;
        $.ajax({
            url: "{{url('/result')}}",
            data: {
                _token: "{{ csrf_token() }}",
                ques1: ques1,
                ques2: ques2,
                ques3: ques3,
                ques4: ques4,
                ques5: ques5,
                ques6: ques6,
                ques7: ques7,
                ques8: ques8,
                ques9: ques9,
                phone_number: phn,
                diabetics: diabetics,
                asthama: asthama,
                high_pressure: high_pressure,
                heart: heart,
                nothing: nothing,
                ques11: ques11,
                result: result
            },
            method: "POST",
            success: function(data) {
                if (!data.isValid) {
                    document.getElementById("message").hidden = false;
                } else {
                    document.getElementById("message").hidden = true;
                    document.getElementById("next2").hidden = true;
                    document.getElementById("ques12").hidden = true;
                    document.getElementById("result").hidden = true;
                    document.getElementById("13").hidden = false;
                    document.getElementById("cancelBtn").hidden = false;
                }
            },
            error: function(error) {
                console.log(error);
                alert(error);
            }
        });
    }
    if ($("input[name='ques11']:checked").val() == 0) {
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
        var result = document.getElementById("resultNo").value;
        $.ajax({
            url: "{{url('/result')}}",
            data: {
                _token: "{{ csrf_token() }}",
                ques1: ques1,
                ques2: ques2,
                ques3: ques3,
                ques4: ques4,
                ques5: ques5,
                ques6: ques6,
                ques7: ques7,
                ques8: ques8,
                ques9: ques9,
                diabetics: diabetics,
                asthama: asthama,
                high_pressure: high_pressure,
                heart: heart,
                nothing: nothing,
                ques11: ques11,
                result: result
            },
            method: "POST",
            success: function(data) {
                document.getElementById("message").hidden = true;
                document.getElementById("next2").hidden = true;
                document.getElementById("ques12").hidden = true;
                document.getElementById("result").hidden = true;
                document.getElementById("13").hidden = false;
                document.getElementById("cancelBtn").hidden = false;
            },
            error: function(error) {
                console.log(error);
                alert("Data not saved");
            }
        });
        document.getElementById("next2").hidden = true;
        document.getElementById("ques11").hidden = true;
        document.getElementById("result").hidden = true;
        document.getElementById("13").hidden = false;
        document.getElementById("cancelBtn").hidden = false;
    }
}
</script>
