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
			<td>��� ��û��</td>
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
				��
			</td>
			</tr>
		
			
			<tr>
				<td>�Ⱓ</td>
				<td>�Ŵ� 1�� ~ ���� (��30��)</td>
			</tr>
		
			<tr>
				<td>���</td>
				<td>50000��</td>
			</tr>
		
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
		<td>������̹��� ���ǻ���</td>
			<td>������̹����� 480*240 ����� ����ȭ�Ǿ��ֽ��ϴ�.<br>
			�� ���ǰ�� ����� ������ ���� �� �ֽ��ϴ�.</td>
		
		</tr>
			<tr>

				<td colspan="2" align="center">
				<input type="submit" value="��û�ϱ�" />
					<a href="../../mypage/list/list">���</a></td>
			</tr>
		</table>
	</form>
</body>
</html>