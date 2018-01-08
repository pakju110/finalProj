<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="">
		<tr>
			<td>�۹�ȣ</td>
			<td>${data.dd.rest_id}</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="menu.jsp"/></td>
		</tr>
		<tr>
			<td>����</td>
			<td>${data.dd.name}</td>
		</tr>
		<tr>
			<td>�� ����</td>
			<td>${data.dd.contents}</td>
		</tr>
		<tr>
			<td>���½ð�</td>
			<td>${data.dd.opentime}</td>
		</tr>
		<tr>
			<td>�����ð�</td>
			<td>${data.dd.closetime}</td>
		</tr>
		<c:if test="${!empty data.dd.sysfile}">
			<tr>
				<td>����</td>
				<td>${data.dd.sysfile}-${data.dd.orifile}<br> <img
					alt="" src="../../../resources/up/${data.dd.sysfile}">
				</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="2" align="right"><a
				href="deleteForm?id=${data.dd.rest_id}">ȸ��Ż��</a> 
				<a href="modifyForm?id=${data.dd.rest_id}">ȸ������</a> <a href="list">����Ʈ��</a>
				<a href="menuinsertform?id=${data.dd.rest_id}&cnt=0">�޴�����</a>
				<a href="menumodifyForm?id=${data.dd.rest_id}">�޴�����</a>
			</td>
		</tr>
	</table>
	<c:if test="${data.review != null}">
		<c:forEach items="${data.review}" var="review">
			<p>�亯 : ${review.title}</p>
		</c:forEach>
	</c:if>
	<div>
		<c:if test="${reviewgrade }"><br>��۱��� ����!!!!!!!!!!!!!!!!!!!!!!<br></c:if>
		<form action="reviewinsert?id=${data.dd.rest_id }" method="post" enctype="multipart/form-data">
			<input type="hidden" name="rest_id" value="${data.dd.rest_id}">
			<input type="hidden" name="user_id" value="${loginuser.user_id}">
			<select name="star">
				<option value="0">������ �������ּ���.</option>
				<option value="0">��</option>
				<option value="1">��</option>
				<option value="2">�ڡ�</option>
				<option value="3">�ڡڡ�</option>
				<option value="4">�ڡڡڡ�</option>
				<option value="5">�ڡڡڡڡ�</option>
			</select>
			<input type="text" name="title">
			<input type="file" name="ff">
			<textarea name="contents"></textarea>
			<input type="submit" value="�����ض�"/>
		</form>
	</div>
</body>
</html>