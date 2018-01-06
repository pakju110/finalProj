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
	<form name="menumodi" action="menumodify" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${data.dd.id }" />
		<c:forEach items="${data.dd2}" var="me" varStatus="no">
			<div>
			<input type="hidden" value="${me.no}" name="mm[${no.index }].no" />
			<input type="hidden" value="${me.id}" name="mm[${no.index }].id" />
				<p><input type="text" value="${me.type}" name="mm[${no.index }].type"/></p>
				<p><input type="text" value="${me.name}" name="mm[${no.index }].name"/></p>
				<p><input type="text" value="${me.price}" name="mm[${no.index }].price"/></p>
				<%-- <p><input type="file" value="${me.ff}" name="mm[${no.index }].ff"/></p> --%>
				<p><input type="radio" name="mm[${no.index }].state" value="on" />판매 
				<input type="radio" name="mm[${no.index }].state" value="off" />판매중지</p>
				<p><button value="${me.no}" onclick="remove_menu(this)">삭제</button></p>
			</div>
		</c:forEach>
		<p><input type="submit" value="전송"/></p>
	</form>
</body>
</html>


