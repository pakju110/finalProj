/**
 * 
 */

function Request(){
	 var requestParam ="";
	  this.getParameter = function(param){
	  var url = unescape(location.href); 
	   var paramArr = (url.substring(url.indexOf("?")+1,url.length)).split("&"); 
	   for(var i = 0 ; i < paramArr.length ; i++){
	     var temp = paramArr[i].split("=");
	     if(temp[0].toUpperCase() == param.toUpperCase()){
	       requestParam = paramArr[i].split("=")[1]; 
	       break;
	     }
	   }
	   return requestParam;
	 }
	}
function add_item(obj){
	 
    var no = obj.value;

    var request = new Request();
 	var hrf = "orderoption?id="+request.getParameter("id")+"&no="+no;
  	option.action=hrf;
  	alert(hrf);
    option.submit();
}

function remove_item(obj){	 
    var no = obj.value;
    var request = new Request(); 
 	var hrf = "removeoption?id="+request.getParameter("id")+"&no="+no;
  	option.action=hrf;
  	alert(hrf);
    option.submit();
}

function remove_all(obj){	 
    var request = new Request(); 
 	var hrf = "allremove?id="+request.getParameter("id");
  	option.action=hrf;
  	alert(hrf);
    option.submit();
}

function remove_menu(obj){
	var request = new Request(); 
	var no = obj.value;
	var hrf = "menudelte?id="+request.getParameter("id")+"&no="+no;
	menumodi.action=hrf;
  	alert(hrf);
  	menumodi.submit();
}

function menuplus(obj)
{
	var request = new Request(); 
	var cnt = obj.value;
	var hrf = "menuplus?id="+request.getParameter("id")+"&cnt="+cnt;
	mif.action=hrf;
	alert(hrf);
	mif.submit();
			
}

function pay_submt(){
	var request = new Request(); 
	var newwin = window.open('_blank','winname','width=500, height=300');
	var hrf = "../../pay/list?rest_id="+request.getParameter("id");
	option.action=hrf;
	option.target= "winname";
	option.submit();
}
