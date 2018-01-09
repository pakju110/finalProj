<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="">
	<tr >
			<td><a href="list">전체보기</a></td><td><a href="wlist">신청대기목록</a></td>
		</tr>
		<tr>
			<td>글번호</td>
			<td>등록일</td>
			<td>이름</td>
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td>${vo.rest_id}</td>
				<td>${vo.name}</td>
				<td><a href="view?id=${vo.rest_id}&ct=0">${vo.name}</a></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>