<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="cfreg" method="post" enctype="multipart/form-data">
	<input type="text" name="rest_id" value="${loginuser.user_id}">
		<table border="">
			
			<tr>
			<td>희망 요청월</td>
			<td><select name="sinchung">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				</select>
				월
			</td>
			</tr>
		
			
			<tr>
				<td>기간</td>
				<td>매달 1일 ~ 말일 (약30일)</td>
			</tr>
		
			<tr>
				<td>비용</td>
				<td>50000원</td>
			</tr>
		
		<tr>
			<td>파일</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
		<td>광고용이미지 주의사항</td>
			<td>광고용이미지는 480*240 사이즈에 최적화되어있습니다.<br>
			그 외의경우 제대로 보이지 않을 수 있습니다.</td>
		
		</tr>
			<tr>

				<td colspan="2" align="center">
				<input type="submit" value="신청하기" />
					<a href="../../mypage/list/list">취소</a></td>
			</tr>
		</table>
	</form>
</body>
</html>