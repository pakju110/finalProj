<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	  

	<form action="menuinsert" method="post" enctype="multipart/form-data" name="mif">
		<c:forEach begin="0" end="${param.cnt}" step="1" varStatus="no">
			<input type="hidden" value="${data.dd.id}" name="mm[${no.index }].id" />
			<p>Type<input type="text" name="mm[${no.index }].type"/></p>
			<p>name<input type="text" name="mm[${no.index }].name"/></p>
			<p>price<input type="text" name="mm[${no.index }].price" value="0"/></p>
			<p>file<input type="file" name="mm[${no.index }].ff"/></p>
			<p><input type="hidden" name="mm[${no.index }].state" value="on"/>
			<%-- <input type="hidden" value="${data.dd.id}" name="opp[${no.index }].id" />
			<p>option name<input type="text" name="opp[${no.index }].name"/></p>
			<p>option price<input type="text" name="opp[${no.index }].price" value="0"/></p>
			<p><input type="radio" name="opp[${no.index }].grade" value="on"/><input type="radio" name="opp[${no.index }].grade" value="off" checked="checked"/> --%>
		</c:forEach>
		<p><button value="${param.cnt}" onclick="menuplus(this)">메뉴추가</button></p>
		<p><input type="submit" value="전송"/></p> 

	</form>
