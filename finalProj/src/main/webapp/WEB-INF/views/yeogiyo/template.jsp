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
			����޴��ô�<br>
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
				<a href="#">ȸ��Ұ�</a> <a href="${data.depth}notice/notice/list">������</a>
			</div>
		</div>
	</div>
	<div class="test_slider">�����̵� ����</div>
	<div class="home">
		<ul>
			<li><a href="#">��ü</a></li>
			<li><a href="#">ġŲ</a></li>
			<li><a href="#">����</a></li>
			<li><a href="#">�߱���</a></li>
			<li><a href="#">����/����</a></li>
			<li><a href="#">�߽�</a></li>
			<li><a href="#">���&amp;ȸ&amp;�Ͻ�</a></li>
			<li><a href="#">�ѽ�</a></li>
			<li><a href="#">�н�</a></li>
			<li><a href="#">�н�ƮǪ��</a></li>
		</ul>
	</div>

</body>

</html>

