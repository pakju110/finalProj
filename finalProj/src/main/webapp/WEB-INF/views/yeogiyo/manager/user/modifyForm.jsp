<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="grademodify" method="post">
		<input type="hidden" value="${data.dd.user_id }" name="user_id">
		<table border="">

			<tr>
				<td>���̵�</td>
				<td>${data.dd.user_id }</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td>${data.dd.user_name }</td>
			</tr>
				<tr>
				<td>���</td>
				<td><select name="grade">
				<option>r</option>
				<option>u</option>
				<option>w</option>
				</select></td>
			</tr>

			<tr>

				<td colspan="2" align="center"><input type="submit" value="����" />
					<a href="view?user_id=${data.dd.user_id }">�ڷ�</a></td>
			</tr>
		</table>
	</form>
</body>
</html>