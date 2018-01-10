<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="payh">결재하기</div>
<form action="next1" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${param.rest_id }" />
	<input type="hidden" name="user_id" value="${loginuser.user_id }" />
	<table class="paytable">
		<tr>
			<th colspan="4" class="th1">01 . 배달주소 정보</th>
		</tr>
		<tr>
			<th>휴대폰 번호</th>
			<td colspan="3"><input type="text" name="phone" value="${loginuser.user_phone}"></td>
		</tr>
		<tr>
			<th>배달 주소</th>
			<td colspan="3"><input type="text" name="address" value="${loginuser.user_address}"></td>

		</tr>
		<tr>
			<th colspan="4" class="th1">배달시 요청사항</th>
		</tr>
		<tr>
			<td colspan="4" class="p0"><textarea name="content"></textarea></td>
		</tr>
		<tr>
			<th colspan="4" class="th1">02 . 주문 정보</th>
		</tr>
		<tr>
			<th>주문 메뉴</th>
			<th>메뉴가격</th>
			<th>수량</th>
			<th>총 가격</th>
		</tr>
		<c:set var="price" value="0"/>
		<c:forEach items="${data.cart }" var="cart1">
		<tr>
			<th>${cart1.name }</th>
			<td>${cart1.price / cart1.cnt }</td>
			<td>${cart1.cnt }</td>
			<td>${cart1.price }<c:set var="price" value="${price + cart1.price }"/></td>
		</tr>
		</c:forEach>


		<tr>
			<th>총 주문금액</th>
			<td colspan="3">${price }<input type="hidden" name="price" value="${price }"
				readonly="readonly"></td>

		</tr>
		<tr>
			<th colspan="4" class="th1">03 . 결제 수단 선택</th>
		</tr>
		<tr>

			<td colspan="4"><input type="radio" name="payhow" checked="checked"
				value="카드 결제" />카드 결제 <input type="radio" name="payhow"
				value="현금 결제" />현금 결제</td>

		</tr>
	</table>
	<p class="bx_btn center" >
		<a href="javascript:close()" class="btn type5">취소</a><button class="btn type4" >다음으로</button>
	</p>
</form>
