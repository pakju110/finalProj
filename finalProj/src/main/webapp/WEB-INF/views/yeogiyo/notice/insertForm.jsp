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

<form action="insert" method="post" enctype="multipart/form-data">
<input type="hidden" name="gno" value="${data.dd.gno=data.dd.no}"/>
	<table border="">
		
		<tr>
			<td>ī�װ�</td>
			<td><select name="cate">
<c:if test="${loginuser.user_id == 'admin'}">
					<option value="notice" >��������</option>
					<option value="fnq" >�����ϴ� ����</option>
</c:if>
					<option value="qna" >1:1����</option>		
				</select></td>
		</tr>	
		<tr>
			<td>����</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td><textarea cols="40" rows="5" name="content" > [����] </textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="���" />
				<input type="reset" value="�ʱ�ȭ" />
				<a href="list">�������</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>