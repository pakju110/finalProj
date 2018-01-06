 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:forEach items="${data.dd2}" var="me">
	<c:if test="${me.state == 'on'}">
	<div>
		<p><button onclick="add_item(this)" value="${me.no}">${me.name}</button></p>
	</div>
	</c:if>
</c:forEach>

<form name="option" method="post" action="orderoption">

	<c:if test="${(loginuser.user_id != null)&&(data.cart != null)}">
	${data.cart }
		<button onclick="remove_all(this)" >전체삭제</button>
		<c:forEach items="${data.cart }" var="cart" varStatus="no">
			<p>${cart.name} /<button value="${cart.no}" onclick="remove_item(this)" >-</button>${cart.cnt}<button value="${cart.no}" onclick="add_item(this)" >+</button></p>
		</c:forEach>
		<a onclick="pay_submt()">주문하기</a>
	</c:if>
</form>

