<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="payh">�����ϱ�</div>
<form action="next1" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${param.rest_id }" />
	<input type="hidden" name="user_id" value="${loginuser.user_id }" />
	<table class="paytable">
		<tr>
			<th colspan="4" class="th1">01 . ����ּ� ����</th>
		</tr>
		<tr>
			<th>�޴��� ��ȣ</th>
			<td colspan="3"><input type="text" name="phone" value="${loginuser.user_phone}"></td>
		</tr>
		<tr>
			<th>��� �ּ�</th>
			<td colspan="3"><input type="text" name="address" value="${loginuser.user_address}"></td>

		</tr>
		<tr>
			<th colspan="4" class="th1">��޽� ��û����</th>
		</tr>
		<tr>
			<td colspan="4" class="p0"><textarea name="content"></textarea></td>
		</tr>
		<tr>
			<th colspan="4" class="th1">02 . �ֹ� ����</th>
		</tr>
		<tr>
			<th>�ֹ� �޴�</th>
			<th>�޴�����</th>
			<th>����</th>
			<th>�� ����</th>
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
			<th>�� �ֹ��ݾ�</th>
			<td colspan="3">${price }<input type="hidden" name="price" value="${price }"
				readonly="readonly"></td>

		</tr>
		<tr>
			<th colspan="4" class="th1">03 . ���� ���� ����</th>
		</tr>
		<tr>

			<td colspan="4"><input type="radio" name="payhow" checked="checked"
				value="ī�� ����" />ī�� ���� <input type="radio" name="payhow"
				value="���� ����" />���� ����</td>

		</tr>
	</table>
	<p class="bx_btn center" >
		<a href="javascript:close()" class="btn type5">���</a><button class="btn type4" >��������</button>
	</p>
</form>
