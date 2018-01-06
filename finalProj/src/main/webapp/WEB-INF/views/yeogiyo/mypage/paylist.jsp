<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table border=1>

<tr>
<td>주문 일자</td>
<td>주문 번호</td>
<td>가게명</td>
<td>메뉴</td>
<td>수량</td>
<td>결제금액</td>
<td>결제 방법</td>



</tr>

<c:forEach items="${data.dd2}" var="pay" >
<tr>
<td>${pay.reg_date }</td>
<td>나중에 받아올 주문번호</td>
<td>${pay.rest_id }</td>
<td>${pay.menu }</td>
<td>${pay.count }</td>
<td>${pay.price*pay.count }</td>
<td>${pay.payhow }</td>


</tr>
</c:forEach>

</table>
