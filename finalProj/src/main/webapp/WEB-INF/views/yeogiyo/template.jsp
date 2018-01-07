<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../../../resources/js/layout.css" rel="stylesheet">

<script type="text/javascript" src="../../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../../resources/js/common.js"></script>
</head>
<body>

	<div class="wrap">
		<jsp:include page="inc/top.jsp" />
		<p>
			서브메뉴시다<br>
			<c:if test="${data.subMenu!=null}">
				<jsp:include page="inc/sub.jsp" />
			</c:if>
		</p>
		<div class="contents">

			<div class="con">
				<jsp:include page="${data.cate1 }/${data.service }.jsp" />

			</div>
		</div>
		<div class="footer">
			<div class="con">
				<jsp:include page="inc/bottom.jsp" />
				<a href="#">회사소개</a> <a href="${data.depth}notice/notice/list">고객센터</a>
			</div>
		</div>
	</div>
	<div class="test_slider">슬라이드 들어갈까</div>
	<div class="home">
		<ul>
			<li><a href="#">전체</a></li>
			<li><a href="#">치킨</a></li>
			<li><a href="#">피자</a></li>
			<li><a href="#">중국집</a></li>
			<li><a href="#">족발/보쌈</a></li>
			<li><a href="#">야식</a></li>
			<li><a href="#">돈까스&amp;회&amp;일식</a></li>
			<li><a href="#">한식</a></li>
			<li><a href="#">분식</a></li>
			<li><a href="#">패스트푸드</a></li>
		</ul>
	</div>
	
	<input type="text" id="post1"> - <input type="text" id="post2">
<input type="button" onclick="openDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="addr">
<input type="text" id="addr2">
 ㄴㅇㅁㄴ
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script>
    function openDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
                document.getElementById('post1').value = data.postcode1;
                document.getElementById('post2').value = data.postcode2;
                document.getElementById('addr').value = data.address;
 
                //전체 주소에서 연결 번지 및 ()로 묶여 있는 부가정보를 제거하고자 할 경우,
                //아래와 같은 정규식을 사용해도 된다. 정규식은 개발자의 목적에 맞게 수정해서 사용 가능하다.
                //var addr = data.address.replace(/(\s|^)\(.+\)$|\S+~\S+/g, '');
                //document.getElementById('addr').value = addr;
 
                document.getElementById('addr2').focus();
            }
        }).open();
    }
</script>
</body>

</html>

