<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#bbb{
	background-color: #f00;
}
span{
	background-color: #ff0;
}
p span{
	background-color: #0f0;
}
.ttt{
	border: solid 1px #000;
}
.ttt span{
	font-size: 40px;
}
.ttt > span{
	font-style: italic;
}  
li:first-child{
	color: #0f0;
}
li:last-child{
	color: #f00;
}
li:nth-child(2){
	color: #00f;
}
li:nth-child(2n){
	color: #faa;
}
li:nth-child(2n+1){
	color: #aaf;
}
.kkk{
	width:100px;
	height:20px;
	background-color: #0f0;
}

</style>
<script type="text/javascript">
	window.onload=function(){
		//alert("�ε�ƴ�");
		
		
		
		//alert(aaa.innerHTML);
		var sp = document.getElementsByTagName("span");
		log("span��:"+sp.length);
		
		log("span:"+sp);
		log("sp.item(0).ddd:"+sp.item(0).getAttribute("ddd"));
		sp.item(0).innerHTML = '�ѷ�� �ѷ�';
		sp.item(1).setAttribute('ddd','�Ҿƹ��� ���');
		
		var ccc=document.getElementById("ccc");
		
		ccc.style.background='#fc0';
		
		var newItem = document.createElement('div');
		newItem.setAttribute('class','kkk');
		
		var aaa=document.getElementById("aaa");
		aaa.appendChild(newItem);
		
		
		var ccc=document.getElementById("ccc");
		ccc.parentNode.removeChild(ccc);
		
		//var pp = document.getElementsByTagName("p").item(1);
		//pp.removeChild(ccc);
		
		function log(str){
			var con=document.getElementById("con");
			con.innerHTML+=str+"<br>";
		}
		
		
		
	};

	

</script>

</head>
<body>
<span id="aaa" ddd="�Ʊ� ���">�Ϳ���</span>
<p class="ttt">
	����1
	<span id="bbb" ddd="���� ���">���</span>
</p>
<div>
	<p>
		p->����2
		<span id="ccc" ddd="�ƺ� ���">���̽�</span>
	</p>
</div>
<div class="ttt">
	<p>
		p->����3
		<span id="ddd" ddd="�ҸӴ� ���">�ڻ���</span>
	</p>
	<ul>
		<li>����</li>
		<li>ȣ����</li>
		<li>��</li>
		<li>�Ǿ�</li>
		<li>�ϸ�</li>
		<li>�䳢</li>
		<li>������</li>
		<li>�罿</li>
	</ul>
</div>
<div id="con"></div>


</body>
</html>