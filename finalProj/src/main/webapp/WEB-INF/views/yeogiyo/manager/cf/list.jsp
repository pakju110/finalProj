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
		</tr>
		<tr>
			<td>��û ���� ���̵�</td>
			<td>��û��</td>
			<td>������</td>
			<td>������</td>
			<td>�����̹���</td>
			<td>���ο���</td>
			
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td>${vo.rest_id}</td>
				<td>${vo.reg_date}</td>
				<td>${vo.start_date}</td>
				<td>${vo.end_date}</td>
				<td>${vo.cf_sysimg}</td>
				
				<%-- <td><a href="view?id=${vo.id}&ct=0">${vo.name}</a></td> --%>
				<td>${vo.approval }</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>