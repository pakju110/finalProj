<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<td>${data.dd.user_id}</td>
		</tr>
		<tr>
			<td>������</td>
			<td>${data.dd.reg_date}</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td>${data.dd.user_name}</td>
		</tr>

		<tr>
			<td>��ȭ��ȣ</td>
			<td>${data.dd.user_phone}</td>
		</tr>

		<tr>
			<td>�ּ�</td>
			<td>${data.dd.user_address}</td>
		</tr>

<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
		<tr>
			<td>����</td>
			<td>
				${data.dd.orifile}
				<img alt="" src="../../../resources/up/${data.dd.orifile}">
			</td>
			</tr>
		</c:if>
		<tr>
			<td>���</td>
			<td>${data.dd.grade}</td>
		</tr>
		<%-- <tr>
			<td>����</td>
			<td>${data.dd.sysFile}-${data.dd.oriFile}<br>
			<img alt="" src="../resources/up/${data.dd.sysFile}">

			</td>
		</tr> --%>
		<tr>

			<td colspan="2" align="right"><a
				href="deleteForm?user_id=${data.dd.user_id}">ȸ��Ż��</a> <a
				href="modifyForm?user_id=${data.dd.user_id}">ȸ������</a> <a href="list">����Ʈ��</a>
			</td>
		</tr>

	</table>

</body>
</html>