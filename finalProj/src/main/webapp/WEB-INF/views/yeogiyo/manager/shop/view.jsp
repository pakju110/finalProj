<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="">
		<tr>
			<td>���̵�</td>
			<td>${data.dd.rest_id}</td>
		</tr>
		<%-- <tr>
			<td colspan="2"><jsp:include page="menu.jsp"/></td>
		</tr> --%>
		<tr>
			<td>�̸�</td>
			<td>${data.dd.name}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.contents}</td>
		</tr>
		<c:if test="${!empty data.dd.sysfile}">
			<tr>
				<td>����</td>
				<td>${data.dd.sysfile}-${data.dd.orifile}<br> <img
					alt="" src="../../../resources/up/${data.dd.sysfile}">
				</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="2" align="right">
				<a href="modifyForm?rest_id=${data.dd.rest_id}">ȸ������</a> 
				<a href="list">����Ʈ��</a>
			
			</td>
		</tr>
	</table>
</body>
</html>