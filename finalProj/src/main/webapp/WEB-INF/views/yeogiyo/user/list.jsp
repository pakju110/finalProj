<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="">
		<tr>
			<td>id</td>
			<td>가입일</td>
			<td>이름</td>
			<td>등급</td>
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td>${vo.user_id}</td>
				<td>${vo.reg_date}</td>
				<td><a href="view?user_id=${vo.user_id}">${vo.user_name}</a></td>
				<td>${vo.grade}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align="right"><a href="registerForm">회원가입</a></td>
		</tr>
	</table>
</body>
</html>