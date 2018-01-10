<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="payh">결재하기</div>
<form action="reg" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${data.dd.rest_id }" /> <input
		type="hidden" name="user_id" value="${data.dd.user_id }" /> <input
		type="hidden" name="phone" value="${data.dd.phone}"> <input
		type="hidden" name="address" value="${data.dd.address}"> <input
		type="hidden" name="content"> 
		<input type="hidden"
		name="price" value="${data.dd.price }" readonly="readonly"> 
		<input
		type="hidden" name="payhow"
		value="${data.dd.payhow }" />
	<table class="paytable">
		<tr>
			<th class="th1" colspan="2">신용카드</th>
		</tr>
		<tr>
			<th>카드선택</th>
			<td><select name="payhow">
					<option value="BC카드">BC카드</option>
					<option value="카카오뱅크카드">카카오뱅크 카드</option>
					<option value="국민카드">국민카드</option>
					<option value="롯데카드">롯데카드</option>
					<option value="현대카드">현대카드</option>
			</select></td>
		</tr>
		<tr>
			<th>결재금액</th>
			<td>${data.dd.price }원</td>
		</tr>
		<tr>
			<th colspan="2" class="th1">카드번호</th>
			
		</tr>
		<tr>
			<td colspan="2" class="card"><input type="text" > - <input type="text"
				> - <input type="text" > - <input
				type="text"></td>
		</tr>
		<tr>
			<th class="th1" colspan="2">유효년월</th>
		</tr>
		<tr>
			<td colspan="2" class="card2">
			<input type="text"> / <input
				type="text">
				</td>
		</tr>
	</table>
	<p class="bx_btn center">
		<a href="javascript:close()" class="btn type5">취소</a>
		<button class="btn type4">결재</button>
	</p>
</form>