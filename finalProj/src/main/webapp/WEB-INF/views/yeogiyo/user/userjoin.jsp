<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="privacy_con2">
	<p class="h2">ȸ������</p>
	<form action="reg" method="post" enctype="multipart/form-data"
		name="jf">
		<div class="privacy_form1">
			<input type="text" name="user_name" placeholder="�̸� �Է�" 
				maxlength="12" class="input_100_43">
		</div>
		<div class="privacy_form2">
			<input type="text" name="user_id" placeholder="���̵��Է�" title="���̵��Է�"
				maxlength="12" class="input_100_43">
			<!-- <a href="#a" class="btn btn_id_check" onclick="idCheck()">�ߺ�Ȯ��</a> -->
			<%-- <input type="button"
				onclick="idCheck2()" name="sch" class="sch" value="id�ߺ�Ȯ��" />
			<p>
				<c:choose>
					<c:when test="${idchek == 'tr'}">
					��밡���� ���̵��Դϴ�.
					</c:when>
					<c:otherwise>���̵� �ߺ��̰ų� �ߺ�üũ�� ���ּ���</c:otherwise>
				</c:choose>
			</p> --%>
		</div>
		<div class="privacy_form3">
			<input type="password" name="user_pw"
				placeholder="��й�ȣ (����/����/Ư�� 6~12��)" maxlength="12"
				class="input_100_43" id="password" onchange="samepassword()">
			<p class="pri_pw_img1"></p>
		</div>
		<div class="privacy_form4">
			<input type="password" name="user_pw"
				placeholder="��й�ȣ ��Ȯ�� (����/����/Ư�� 6~12��)" maxlength="12"
				class="input_100_43"  onchange="samepassword()" id="confirm">
			<p class="pri_pw_img2"></p>
		</div>
		<div class="privacy_form6">
			<span id = "res" ></span>
		</div>
		<div class="privacy_form5">
			<input type="text" name="user_phone" placeholder="��ȭ��ȣ �Է�"
				class="input_100_43">
		</div>
		<div class="privacy_form5">
			<input type="text" name="user_address" placeholder="�ּ� �Է�"
				class="input_100_43">
		</div>
		<div class="check_box">

	
			<a href="../../user/join/list" class="btn type5">���</a>
			<button class="btn type4">ȸ������</button>
		</div>
	</form>

</div>
