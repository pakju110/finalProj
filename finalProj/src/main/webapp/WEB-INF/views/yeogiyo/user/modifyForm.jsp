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
		<input type="hidden" name="user_id" value="${data.dd.user_id }" />
		<table border="">

			<tr>
				<td>pw</td>
				<td><input type="text" name="user_pw" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="user_phone"
					value="${data.dd.user_phone}" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="user_address"
					value="${data.dd.user_address}" /></td>
			</tr>

			<tr>

				<td colspan="2" align="center"><input type="submit" value="수정" />
					<a href="view?user_id=${data.dd.user_id }">뒤로</a></td>
			</tr>
		</table>
	</form>
</body>
</html>