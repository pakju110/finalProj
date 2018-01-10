<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="reg" method="post" enctype="multipart/form-data">
		<input type="hidden" name="rest_id" value="badaonid" />
			<input type="hidden" name="user_id" value="4040" />
	
<table border=1>
	<tr>
		<td>01 .  배달주소 정보</td>
	</tr>
	<tr>
		<td>휴대폰 번호</td>
		<td><input type = "text" name="phone"></td>
	</tr>
	<tr>
		<td>배달 주소</td>
		<td><input type = "text" name="address"></td>
	 <td><input type = "text" name="address2"></td>
	</tr>
	<tr>
		<td>배달시 요청사항</td>
		<td><input type = "text" name=content></td>
		
		
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
		<td><input type="text" name = "menu" value="badaonmenu" readonly="readonly"></td>
		<td><input type="text" name="price" value ="5500" readonly="reaonly"></td>
		<td><input type="text" name="count" value = "2" readonly="reaonly"></td>
		<td><input type="text" name="rowprice" value = "한줄합친거" readonly="reaonly"></td>
		
	</tr>
	<tr>
		<td>03 . 결제 수단 선택</td>
		</tr>
	<tr>
		
		<td>
		<input type="radio" name="payhow" checked="checked" value="카드 결제"/>카드 결제
		<input type="radio" name="payhow"  value="현금 결제"/>현금 결제
		</td>
		
	</tr>

	
	
	<tr>
		<td> 결제정보</td>
	</tr>
	
	<tr>
		<td>총 주문금액</td>
		<td><input type="text" name="totalprice" value ="11000" readonly="reaonly"> </td>

	</tr>
	
	<tr>
	<td colspan=3 align="center"><input type="submit" value="확인">
	<a href="list">뒤로</a>
	</td>
	
	</tr>
</table>
</form>
</body>
</html> -->

<form action="reg" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${param.rest_id }" />
	<input type="hidden" name="user_id" value="${loginuser.user_id }" />

	<table border=1>
		<tr>
			<td>01 . 배달주소 정보</td>
		</tr>
		<tr>
			<td>휴대폰 번호</td>
			<td><input type="text" name="phone" value="${loginuser.user_phone}"></td>
		</tr>
		<tr>
			<td>배달 주소</td>
			<td><input type="text" name="address" value="${loginuser.user_address}"></td>

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
		<c:set var="price" value="0"/>
		<c:forEach items="${data.cart }" var="cart1">
		<tr>
			<td>${cart1.name }</td>
			<td>${cart1.price / cart1.cnt }</td>
			<td>${cart1.cnt }</td>
			<td>${cart1.price }<c:set var="price" value="${price + cart1.price }"/></td>
		</tr>
		</c:forEach>
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
			<td><input type="text" name="price" value="${price }"
				readonly="readonly"></td>

		</tr>

		<tr>
			<td colspan=3 align="center"><input type="submit" value="확인">
				<a href="list">뒤로</a></td>

		</tr>
	</table>
</form>
