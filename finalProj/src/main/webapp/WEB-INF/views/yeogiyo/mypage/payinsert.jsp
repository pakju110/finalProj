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
		<input type="hidden" name="rest_id" value="badaonid" />
			<input type="hidden" name="user_id" value="4040" />
	
<table border=1>
	<tr>
		<td>01 .  ����ּ� ����</td>
	</tr>
	<tr>
		<td>�޴��� ��ȣ</td>
		<td><input type = "text" name="phone"></td>
	</tr>
	<tr>
		<td>��� �ּ�</td>
		<td><input type = "text" name="address"></td>
	<!--  <td><input type = "text" name="address2"></td> -->
	</tr>
	<tr>
		<td>��޽� ��û����</td>
		<td><input type = "text" name=content></td>
		
		
	</tr>
	<tr>
		<td>02 . �ֹ� ����</td>
		</tr>
	<tr>
		<td>�ֹ� �޴�</td>
		<td>�޴�����</td>
		<td>����</td>
		<td>�� ����</td>
	</tr>
	<tr>
		<td><input type="text" name = "menu" value="badaonmenu" readonly="readonly"></td>
		<td><input type="text" name="price" value ="5500" readonly="reaonly"></td>
		<td><input type="text" name="count" value = "2" readonly="reaonly"></td>
		<td><input type="text" name="rowprice" value = "������ģ��" readonly="reaonly"></td>
		
	</tr>
	<tr>
		<td>03 . ���� ���� ����</td>
		</tr>
	<tr>
		
		<td>
		<input type="radio" name="payhow" checked="checked" value="ī�� ����"/>ī�� ����
		<input type="radio" name="payhow"  value="���� ����"/>���� ����
		</td>
		
	</tr>

	
	
	<tr>
		<td> ��������</td>
	</tr>
	
	<tr>
		<td>�� �ֹ��ݾ�</td>
		<td><input type="text" name="totalprice" value ="11000" readonly="reaonly"> </td>

	</tr>
	
	<tr>
	<td colspan=3 align="center"><input type="submit" value="Ȯ��">
	<a href="list">�ڷ�</a>
	</td>
	
	</tr>
</table>
</form>
</body>
</html>