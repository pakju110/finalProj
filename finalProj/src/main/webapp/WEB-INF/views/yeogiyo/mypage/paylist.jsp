<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<table border=1>
<br>
<br>
결제내역은 7일까지만 표시됩니다.
<br>
<br>

<tr>
<td>주문 번호</td>
<td>주문 일자</td>
<td>가게명</td>
<td>메뉴</td>
<td>수량</td>
<td>결제금액</td>
<td>결제 방법</td>



</tr>

<c:forEach items="${data.dd2}" var="pay" >
<tr>
<td>${pay.orderno }</td>
<td><fmt:formatDate value="${pay.reg_date}" pattern="yyyy-MM-dd"/></td>
<td>${pay.rest_id }</td>
<td>${pay.name }</td>
<td>${pay.cnt }</td>
<td>${pay.price }</td>
<td>${pay.payhow }</td>


</tr>
</c:forEach>

</table>
