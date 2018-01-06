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
		<input type="hidden" name="grade" value="w"/>
		<table border="">
			<tr>
				<td>id</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>브랜드</td>
				<td><input type="text" name="brand" /></td>
			</tr>
			<tr>
				<td>type</td>
				<td>
					<select name="type">
						<option value="chicken">치킨</option>
						<option value="pizza">피자</option>
					</select>
					
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr" /></td>
			</tr>
			<tr>
				<td>오픈시간</td>
				<td><input type="text" name="opentime" /></td>
			</tr>
			<tr>
				<td>마감시간</td>
				<td><input type="text" name="closetime" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="contents" /></td>
			</tr>
			<tr>
				<td>파일</td>
				<td><input type="file" name="ff" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="가입" />
					<a href="list">리스트로</a></td>
			</tr>
		</table>
	</form>
</body>
</html>