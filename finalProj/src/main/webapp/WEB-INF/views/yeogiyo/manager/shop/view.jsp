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
			<td>글번호</td>
			<td>${data.dd.id}</td>
		</tr>
		<%-- <tr>
			<td colspan="2"><jsp:include page="menu.jsp"/></td>
		</tr> --%>
		<tr>
			<td>제목</td>
			<td>${data.dd.name}</td>
		</tr>
		<tr>
			<td>글 내용</td>
			<td>${data.dd.contents}</td>
		</tr>
		<c:if test="${!empty data.dd.sysfile}">
			<tr>
				<td>파일</td>
				<td>${data.dd.sysfile}-${data.dd.orifile}<br> <img
					alt="" src="../../../resources/up/${data.dd.sysfile}">
				</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="2" align="right"><a
				href="deleteForm?id=${data.dd.id}">회원탈퇴</a> 
				<a href="modifyForm?id=${data.dd.id}">회원수정</a> <a href="list">리스트로</a>
				<a href="menuinsertform?id=${data.dd.id}">메뉴생성</a>
				<a href="menumodifyForm?id=${data.dd.id}">메뉴수정</a>
			</td>
		</tr>
	</table>
</body>
</html>