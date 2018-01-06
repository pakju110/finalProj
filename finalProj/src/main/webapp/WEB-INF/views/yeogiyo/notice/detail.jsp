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
			<td>번호</td><td>${data.dd.no }</td>
		</tr><tr>
			<td>제목</td><td>${data.dd.title }</td>
		</tr><tr>
			<td>조회수</td><td>${data.dd.cnt }</td>
		</tr><tr>
			<td>작성일</td><td>
<fmt:formatDate value="${data.dd.regdate }" pattern="yyyy-MM-dd HH:mm"/></td>
		</tr>
		<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
		<tr>
			<td>파일</td>
			<td>
				${data.dd.orifile}
				<img alt="" src="../../../resources/img/${data.dd.orifile}">
			</td>
			</tr>
		</c:if>
			<tr>
			<td>내용</td><td>${data.dd.content}</td>
		</tr><tr>
			<td colspan="2" align="right">
		
<c:if test="${loginuser.user_id == 'admin' && data.dd.re == 0}">
				<a href="replyForm?no=${data.dd.no }">답변</a>
</c:if>
<c:if test="${loginuser.user_id == 'admin' || loginuser.user_id == data.dd.id}">
				<a href="deleteForm?no=${data.dd.no }">삭제</a>
				<a href="modifyForm?no=${data.dd.no }">수정</a>
</c:if>
				<a href="list">리스트로</a>
			</td>
		</tr>
	</table>
</body>
</html>