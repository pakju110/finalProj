/**

 * 
 */



function Request() {
	var requestParam = "";
	this.getParameter = function(param) {
		var url = unescape(location.href);
		var paramArr = (url.substring(url.indexOf("?") + 1, url.length))
				.split("&");
		for (var i = 0; i < paramArr.length; i++) {
			var temp = paramArr[i].split("=");
			if (temp[0].toUpperCase() == param.toUpperCase()) {
				requestParam = paramArr[i].split("=")[1];
				break;
			}
		}
		return requestParam;
	}
}
function add_item(obj) {

	var no = obj;

	var request = new Request();
	var hrf = "orderoption?rest_id=" + request.getParameter("rest_id") + "&no="
			+ no;
	alert(hrf);
	option.action = hrf;
	
	option.submit();
}

function remove_item(obj) {
	var no = obj;
	var request = new Request();
	var hrf = "removeoption?rest_id=" + request.getParameter("rest_id")
			+ "&no=" + no;
	option.action = hrf;
	alert(hrf);
	option.submit();
}

function remove_all() {
	var request = new Request();
	var hrf = "allremove?rest_id=" + request.getParameter("rest_id");
	option.action = hrf;
	alert(hrf);
	option.submit();
}

function remove_menu(obj) {
	var request = new Request();
	var no = obj;
	var hrf = "menudelte?rest_id=" + request.getParameter("rest_id") + "&no="
			+ no;
	menumodi.action = hrf;
	alert(hrf);
	menumodi.submit();
}

function menuplus(obj) {
	var request = new Request();
	var cnt = obj;
	var hrf = "menuplus?rest_id=" + request.getParameter("rest_id") + "&cnt="
			+ cnt;
	alert(obj);
	mif.action = hrf;
	
	mif.submit();

}

function pay_submt() {
	var request = new Request();
	var newwin = window.open('_blank', 'winname', 'width=500, height=300');
	var hrf = "../../pay/list?rest_id=" + request.getParameter("rest_id");
	option.action = hrf;
	option.target = "winname";
	option.submit();
}

function idCheck() {

	jf.action = "idReg";
	jf.submit();
}

function idCheck2() {

	jf.action = "idReg2";
	jf.submit();
}

function openDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
            /* document.getElementById('post1').value = data.postcode1;
            document.getElementById('post2').value = data.postcode2; */
            document.getElementById('addr').value = data.address;

            //전체 주소에서 연결 번지 및 ()로 묶여 있는 부가정보를 제거하고자 할 경우,
            //아래와 같은 정규식을 사용해도 된다. 정규식은 개발자의 목적에 맞게 수정해서 사용 가능하다.
            //var addr = data.address.replace(/(\s|^)\(.+\)$|\S+~\S+/g, '');
            //document.getElementById('addr').value = addr;

            document.getElementById('addr2').focus();
        }
    }).open();
}


function menu() {
	var gnb = document.getElementById("Gnb");
	var btn_gnb = document.getElementById("btn_gnb");
	btn_gnb.classList.toggle("open");
	gnb.classList.toggle("open");
		
}


$(document).ready(function() {
	$(".noman").bind("keyup", function() {
			var inputVal = $(this).val();

			$(this).val(inputVal.replace(/[^a-z0-9]/g, ''));


	});
	$(".input").bind("keyup", function() {
		if (!(event.keyCode >= 37 && event.keyCode <= 40)) {

			var inputVal = $(this).val();

			$(this).val(inputVal.replace(/[^a-z0-9]/gi, ''));

		}

	});
	
	$(".input2").bind("keyup", function() {
				var re = /[~!@\#$%^&*\()\=+']/gi;

				var temp = $(".input").val();

					if (re.test(temp)) { // 
						$(".input").val(temp.replace(re, ""));
						alert("특수문자를 사용하실수없습니다.");
					}


			});
	$(".addresscheck").click(function() {
	navigator.geolocation.getCurrentPosition(function(position){
	    console.log('latitude: ', position.coords.latitude);
	    console.log('longitude: ', position.coords.longitude);
	    });
	});
	$('#addcheck').click(function(){
		var request = new Request();
		alert($('#addr').val());
		$.ajax({

			url:'http://maps.googleapis.com/maps/api/geocode/json',
			type:'GET',
			data:{address:$('#addr').val()},
			dataType:'json',
			success:function(data){
				//log(data.results[0].geometry.location.lat,data.results[0].geometry.location.lng);
				//xlet.value = data.results[0].geometry.location.lat;
				
				/*log(data.results[0].geometry.location.lat);
				log(data.results[0].geometry.location.lng);*/
//				$('#xlet').val(data.results[0].geometry.location.lat);
//				$('#ylng').val(data.results[0].geometry.location.lng);
			
				$("#regshop").attr("action","reg?xlet="+data.results[0].geometry.location.lat+"&ylng="+data.results[0].geometry.location.lng);
				regshop.submit();
				alert(data.results[0].geometry.location.lat+"<br>"+data.results[0].geometry.location.lng);
				//ylng.value = ata.results[0].geometry.location.lng;
			}
			
		});
		
		
	});
});






