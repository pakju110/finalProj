<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<form action="reg" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="badaonid" /> <input
		type="hidden" name="user_id" value="4040" />

	<table border=1>
		<tr>
			<td>01 . 배달주소 정보</td>
		</tr>
		<tr>
			<td>휴대폰 번호</td>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td>배달 주소</td>
			<td><input type="text" name="address"></td>
			<!--  <td><input type = "text" name="address2"></td> -->
		</tr>
		<tr>
			<td>배달시 요청사항</td>
			<td><input type="text" name=content></td>


		</tr>
		<tr>
			<td>02 . 주문 정보</td>
		</tr>
		<tr>
			<td>주문 메뉴</td>
			<td>메뉴가격</td>
			<td>수량</td>
			<td>총 가격</td>
		</tr>
		<tr>
			<td><input type="text" name="menu" value="badaonmenu"
				readonly="readonly"></td>
			<td><input type="text" name="price" value="5500"
				readonly="reaonly"></td>
			<td><input type="text" name="count" value="2" readonly="reaonly"></td>
			<td><input type="text" name="rowprice" value="한줄합친거"
				readonly="reaonly"></td>

		</tr>
		<tr>
			<td>03 . 결제 수단 선택</td>
		</tr>
		<tr>

			<td><input type="radio" name="payhow" checked="checked"
				value="카드 결제" />카드 결제 <input type="radio" name="payhow"
				value="현금 결제" />현금 결제</td>

		</tr>



		<tr>
			<td>결제정보</td>
		</tr>

		<tr>
			<td>총 주문금액</td>
			<td><input type="text" name="totalprice" value="11000"
				readonly="reaonly"></td>

		</tr>

		<tr>
			<td colspan=3 align="center"><input type="submit" value="확인">
				<a href="list">뒤로</a></td>

		</tr>
	</table>
</form>
