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
			<td>�ɼ�no</td>
			<td>id</td>
			<td>�޴�no</td>
			<td>name</td>
			<td>����</td>
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