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
	<form action="reg" method="post" enctype="multipart/form-data">
		<input type="hidden" name="rest_id" value="badaonid" />
			<input type="hidden" name="user_id" value="4040" />
<table border=1>
	<tr>
		<td>����ּ� ����</td>
	</tr>
	<tr>
		<td>�޴��� ��ȣ</td>
		<td>${data.dd.phone }</td>
	</tr>
	<tr>
		<td>��� �ּ�</td>
		<td>${data.dd.address }</td>
	</tr>
	<tr>
		<td>��޽� ��û����</td>
		<td>${data.dd.content }</td>
		
		
	</tr>
	<tr>
		<td>02 . �ֹ� ����</td>
		</tr>
	<tr>
		<td>�ֹ� �޴�</td>
		<td>�޴�����</td>
		<td>����</td>
		<!-- <td>����</td> -->
	</tr>
	
	<tr>
		<td>${data.dd.menu }</td>
		<td>${data.dd.price }</td>
		<td>${data.dd.count }</td>
		<td></td>
		<!-- <td>����</td> -->
	</tr>
	<tr>
		<td>03 . ���� ���� ����</td>
		</tr>
		
	<tr>
		<td>
		${data.dd.payhow }
		</td>		
	</tr>

	<tr>
		<td> ��������</td>
	</tr>
	
	<tr>
		<td>�� �ֹ��ݾ�</td>
		<td>${data.dd.price*data.dd.count }<td>
	</tr>
	
	
	<tr>
			<td colspan="2" align="right">
			<a href="deleteForm?user_id=${data.dd.user_id}">�ֹ�����</a>
				 <a href=" ">Ȩ����</a>
			
			</td>
		</tr>
</table>
</form>
</body>
</html>