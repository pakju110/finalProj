<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="modify" method="post">
		<input type="hidden" name=" id" value="${data.dd.id }" />
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
				<td><input type="text" value="${data.dd.title}"></td>
			</tr>

			<tr>
				<td>�� ����</td>
				<td><input type="text" value="${data.dd.content}"></td>
			</tr>

			<c:if test="${data.dd.updownfile}==''">
				<tr>
					<td>����</td>
					<td>${data.dd.updownfile}-${data.dd.oridown}<br> <img
						alt="" src="../../../resources/up/${data.dd.updownfile}">

					</td>
				</tr>
			</c:if>
			<tr>

				<td colspan="2" align="center"><input type="submit" value="����" />
					<a href="view?id=${data.dd.id }">�ڷ�</a></td>
			</tr>

		</table>
	</form>
</body>
</html>


