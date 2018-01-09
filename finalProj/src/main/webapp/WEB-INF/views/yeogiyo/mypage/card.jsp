<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="cfreg" method="post" enctype="multipart/form-data">
<input type="hidden" name="rest_id" value="${loginuser.user_id}">
<input type="hidden" name="no" value="${data.dd.no }">
<input type="hidden" name="nowMM" value="${data.dd.nowMM }">
<input type="hidden" name="cf_sysimg" value="${data.dd.cf_sysimg }">
<input type="hidden" name="cf_oriimg" value="${data.dd.cf_oriimg }">
<table border="1">
<tr>
<td colspan="2">신용카드</td>
</tr>
<tr>
<td>카드선택</td>
<td>
<select name="payhow">
<option value="BC카드">BC카드</option>
<option value="카카오뱅크카드">카카오뱅크 카드</option>
<option value="국민카드">국민카드</option>
<option value="롯데카드">롯데카드</option>
<option value="현대카드">현대카드</option>
</select>
</td>
</tr>
<tr>
<td>결제금액</td>
<td>50000원</td>
</tr>
<tr>
<td>카드번호</td>
<td><input type="text" name="card1">-<input type="text" name="card2">-<input type="text" name="card3">-<input type="text" name="card4"></td>
</tr>
<tr>
<td>유효년월</td>
<td><input type="text" name="cardyear">/<input type="text" name="cardmonth"></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="결제완료"/>
<a href="../../mypage/cf/cf">취소</a></td>
</tr>
</table>
</form>