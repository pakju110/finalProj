<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="reg" method="post" enctype="multipart/form-data">
		<table border="">
			<tr>
				<td>id</td>
				<td><input type="text" name="user_id" /></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="text" name="user_pw" /></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="user_name" /></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="user_phone" /></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="user_address" /></td>
			</tr>
			<!-- <tr>
			<td>���</td>
			<td><input type="text" name="grade" /></td>
		</tr> 
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>-->
			<tr>

				<td colspan="2" align="center"><input type="submit" value="����" />
					<a href="list">����Ʈ��</a></td>
			</tr>
		</table>
	</form>
</body>
</html>