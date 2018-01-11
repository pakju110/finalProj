<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<form action="cfreg" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${loginuser.user_id}">
	<input type="hidden" name="no" value="${data.dd.no }"> <input
		type="hidden" name="nowMM" value="${data.dd.nowMM }"> <input
		type="hidden" name="cf_sysimg" value="${data.dd.cf_sysimg }">
	<input type="hidden" name="cf_oriimg" value="${data.dd.cf_oriimg }">
	<table class="e_table2">
		<tr>
			<th class="join_t1" colspan="2">신용카드</th>
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
			<th>결제금액</th>
			<td>50000원</td>
		</tr>
		<tr>
			<th>카드번호</th>
			<td><input type="text" name="card1">-<input type="text"
				name="card2">-<input type="text" name="card3">-<input
				type="text" name="card4"></td>
		</tr>
		<tr>
			<th>유효년월</th>
			<td><input type="text" name="cardyear">/<input
				type="text" name="cardmonth"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="결제완료" /> <a
				href="../../mypage/cf/cf">취소</a></td>
		</tr>
	</table>
</form>