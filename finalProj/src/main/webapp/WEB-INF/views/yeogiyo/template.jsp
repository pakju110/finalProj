<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/sub.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/default.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/css/layout.css">

<script type="text/javascript" src="../../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../../resources/js/swiper.min.js"></script>
<script type="text/javascript" src="../../../resources/js/common.js"></script>

</head>
<body>

	<div class="wrap">
		<jsp:include page="inc/top.jsp" />
		<%-- 		<p>
			서브메뉴시다<br>
			<c:if test="${data.subMenu!=null}">
				<jsp:include page="inc/sub.jsp" />
			</c:if>
		</p> --%>
		<div class="contents">

			<div class="con">
				<jsp:include page="${data.cate1 }/${data.service }.jsp" />
				<c:if test="${data.cate1 == 'shop'}">
					<jsp:include page="inc/cf.jsp" />
				</c:if>

			</div>
		</div>
		<div class="footer">
			<div class="con">
				<jsp:include page="inc/bottom.jsp" />
				<a href="#">회사소개</a> <a href="${data.depth}notice/notice/list">고객센터</a>
			</div>
		</div>
	</div>


</body>

</html>

