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

<form name="fmt" action="replyReg" method="post" enctype="multipart/form-data">
<input type="hidden" name="no" value="${data.dd.no }" />
<input type="hidden" name="gno" value="${data.dd.gno }" />
	<table border="">
		<tr>
			<td>����</td>
			<td><input type="text" name="title"  value="[Re]${data.dd.title}" /></td>
		</tr>
		<tr>
			<td>����</td>	
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
			<textarea cols="40" rows="5" name="content" >			
${data.dd.content}
[Re]--------------		
	
			</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="�ۼ�" />
				<a href="ModifyForm?no=${data.dd.no }">�ʱ�ȭ</a>
				<a href="List">�������</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>