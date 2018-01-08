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

</body>

</html>

