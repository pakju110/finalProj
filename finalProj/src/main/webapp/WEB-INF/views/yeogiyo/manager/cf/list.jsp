<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="">
	<tr>
	<!-- <td><a href="list">��ü����</a></td> -->
	

		</tr>
		<tr>
			<td>��û ���� ���̵�</td>
			<td>��û��</td>
			<td>��� ��</td>
		
			<td>�����̹���</td>
			
			
		</tr>
		

		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td><%-- <a href="view?Rest_id=${vo.rest_id }">${vo.rest_id}</a> --%>${vo.rest_id}</td>
				<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd"/></td>
				<td>${vo.startDD}</td>
				
				<td><img alt="�ȳ��� "src="../../../resources/cf/${vo.cf_sysimg}" width="320" height="140"></td>
				<%-- <td><a href="view?id=${vo.id}&ct=0">${vo.name}</a></td> --%>
				
			</tr>
		</c:forEach>

		
	</table>
</body>
</html>