<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" value="${loginuser.user_id}" name="id"/>
	<table border=1>
		<%-- <tr>
			<td>GNO</td><td>${data.dd.gno }</td>
		</tr> --%>
		<tr>
			<td>��ȣ</td><td>${data.dd.no }</td>
		</tr><tr>
			<td>����</td><td>${data.dd.title }</td>
		</tr><tr>
			<td>��ȸ��</td><td>${data.dd.cnt }</td>
		</tr><tr>
			<td>�ۼ���</td><td>
<fmt:formatDate value="${data.dd.regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
		<tr>
			<td>����</td>
			<td>
				${data.dd.orifile}
				<img alt="" src="../../../resources/img/${data.dd.orifile}">
			</td>
			</tr>
		</c:if>
			<tr>
			<td>����</td><td>${data.dd.content}</td>
		</tr><tr>
			<td colspan="2" align="right">
		
<c:if test="${loginuser.user_id == 'admin' && data.dd.re == 0}">
				<a href="replyForm?no=${data.dd.no }">�亯</a>
</c:if>
<c:if test="${loginuser.user_id == 'admin' || loginuser.user_id == data.dd.id}">
				<a href="deleteForm?no=${data.dd.no }">����</a>
				<a href="modifyForm?no=${data.dd.no }">����</a>
</c:if>
				<a href="list">����Ʈ��</a>
			</td>
		</tr>
	</table>
</body>
</html>