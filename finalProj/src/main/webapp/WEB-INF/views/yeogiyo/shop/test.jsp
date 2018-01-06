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
			<td>옵션no</td>
			<td>id</td>
			<td>메뉴no</td>
			<td>name</td>
			<td>가격</td>
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>	
				<td>${vo.ono}</td>
				<td>${vo.menuno}</td>
				<td>${vo.id}</td>
				<td>${vo.name}</td>
				<td><a href="view?id=${vo.id}">${vo.price}</a></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>