<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="payh">�����ϱ�</div>
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
			<th class="th1" colspan="2">�ſ�ī��</th>
		</tr>
		<tr>
			<th>ī�弱��</th>
			<td><select name="payhow">
					<option value="BCī��">BCī��</option>
					<option value="īī����ũī��">īī����ũ ī��</option>
					<option value="����ī��">����ī��</option>
					<option value="�Ե�ī��">�Ե�ī��</option>
					<option value="����ī��">����ī��</option>
			</select></td>
		</tr>
		<tr>
			<th>����ݾ�</th>
			<td>${data.dd.price }��</td>
		</tr>
		<tr>
			<th colspan="2" class="th1">ī���ȣ</th>
			
		</tr>
		<tr>
			<td colspan="2" class="card"><input type="text" > - <input type="text"
				> - <input type="text" > - <input
				type="text"></td>
		</tr>
		<tr>
			<th class="th1" colspan="2">��ȿ���</th>
		</tr>
		<tr>
			<td colspan="2" class="card2">
			<input type="text"> / <input
				type="text">
				</td>
		</tr>
	</table>
	<p class="bx_btn center">
		<a href="javascript:close()" class="btn type5">���</a>
		<button class="btn type4">����</button>
	</p>
</form>