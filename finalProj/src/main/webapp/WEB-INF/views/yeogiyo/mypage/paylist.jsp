<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="navi3.jsp" />




<br>
<br>
결제내역은 7일까지만 표시됩니다.
<br>
<br>

<table class="e_table2">
		<tbody>
			<tr>

				<th class="join_t1"><p class="th_rel">
						<label for="et4">주문번호</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">주문일자</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">가게명</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">메뉴</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">수량</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">결제금액</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">결제 방법</label>
					</p></th>		
			</tr>
			
			<c:forEach items="${data.dd2}" var="pay">
			<tr>
				<td>${pay.orderno}</td>
				<td><fmt:formatDate value="${pay.reg_date}" pattern="yyyy-MM-dd"/></td>	
				<td>${pay.rest_id }</td>
				<td>${pay.name }</td>
				<td>${pay.cnt }</td>
				<td>${pay.price }</td>
				<td>${pay.payhow }</td>			
			</tr>
			
			</c:forEach>
		</tbody>
	</table>


