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
			<td>�۹�ȣ</td>
			<td>${data.dd.id}</td>
		</tr>
		<tr>
			<td>�����</td>
			<td>${data.dd.reg_date}</td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.title}</td>
		</tr>
		<tr>
			<td>�� ����</td>
			<td>${data.dd.content}</td>
		</tr>
		<c:if test="${!empty data.dd.updownfile}">
			<tr>
				<td>����</td>
				<td>${data.dd.updownfile}-${data.dd.oridown}<br> <img
					alt="" src="../../../resources/up/${data.dd.updownfile}">
				</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="2" align="right"><a
				href="deleteForm?id=${data.dd.id}">ȸ��Ż��</a> <a
				href="modifyForm?id=${data.dd.id}">ȸ������</a> <a href="list">����Ʈ��</a>
			</td>
		</tr>
	</table>
</body>
</html>