<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
<form action="cfreg" method="post" enctype="multipart/form-data">
<input type="hidden" name="rest_id" value="${loginuser.user_id}">
<input type="hidden" name="no" value="${data.dd.no }">
<input type="hidden" name="nowMM" value="${data.dd.nowMM }">
<input type="hidden" name="cf_sysimg" value="${data.dd.cf_sysimg }">
<input type="hidden" name="cf_oriimg" value="${data.dd.cf_oriimg }">
	<table class="e_table2">
<tr>
<td class="join_t1"colspan="2">�ſ�ī��</td>
</tr>
<tr>
<td>ī�弱��</td>
<td>
<select name="payhow">
<option value="BCī��">BCī��</option>
<option value="īī����ũī��">īī����ũ ī��</option>
<option value="����ī��">����ī��</option>
<option value="�Ե�ī��">�Ե�ī��</option>
<option value="����ī��">����ī��</option>
</select>
</td>
</tr>
<tr>
<td>�����ݾ�</td>
<td>50000��</td>
</tr>
<tr>
<td>ī���ȣ</td>
<td><input type="text" name="card1">-<input type="text" name="card2">-<input type="text" name="card3">-<input type="text" name="card4"></td>
</tr>
<tr>
<td>��ȿ���</td>
<td><input type="text" name="cardyear">/<input type="text" name="cardmonth"></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="�����Ϸ�"/>
<a href="../../mypage/cf/cf">���</a></td>
</tr>
</table>
</form>