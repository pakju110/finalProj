<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <form action="restreg" method="post" enctype="multipart/form-data"
	name="jf">
	<table border="">
		<tr>
			<td>id</td>
			<td><input type="text" name="user_id" /><input type="button"
				onclick="idCheck2()" name="sch" class="sch" value="id�ߺ�Ȯ��" /></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="text" name="user_pw" /></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="user_name" /></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type="text" name="user_phone" /></td>
		</tr>
		<tr>
			<td>�ּ�</td>
			<td><input type="text" name="user_address" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>

			<td colspan="2" align="center"><c:choose>
					<c:when test="${idchek == 'tr'}">
					��밡���� ���̵��Դϴ�.
					</c:when>
					<c:otherwise>���̵� �ߺ��̰ų� �ߺ�üũ�� ���ּ���</c:otherwise>
				</c:choose> <c:if test='${idchek == "tr"}'>
					<input type="submit" value="����" />
				</c:if> <a href="../../user/join/list">���</a></td>
		</tr>
	</table>
</form> --%>
<div class="privacy_con2">
	<p class="h2">ȸ������</p>
	<form action="restreg" method="post" enctype="multipart/form-data"
		name="jf">
		<div class="privacy_form1">
			<input type="text" name="user_name" placeholder="�̸� �Է�" 
				maxlength="12" class="input_100_43">
		</div>
		<div class="privacy_form2">
			<input type="text" name="user_id" placeholder="���̵��Է�" title="���̵��Է�"
				maxlength="12" class="input_100_43">
			<a href="#a" class="btn btn_id_check" onclick="idCheck2()">�ߺ�Ȯ��</a>
			<input type="button"
				onclick="idCheck2()" name="sch" class="sch" value="id�ߺ�Ȯ��" />
			<p>
				<c:choose>
					<c:when test="${idchek == 'tr'}">
					��밡���� ���̵��Դϴ�.
					</c:when>
					<c:otherwise>���̵� �ߺ��̰ų� �ߺ�üũ�� ���ּ���</c:otherwise>
				</c:choose>
			</p>
		</div>
		<div class="privacy_form3">
			<input type="password" name="user_pw"
				placeholder="��й�ȣ (����/����/Ư�� 6~12��)" maxlength="12"
				class="input_100_43">
			<p class="pri_pw_img1"></p>
		</div>
		<div class="privacy_form4">
			<input type="text" name="user_pw"
				placeholder="��й�ȣ ��Ȯ�� (����/����/Ư�� 6~12��)" maxlength="12"
				class="input_100_43">
			<p class="pri_pw_img2"></p>
		</div>
		<div class="privacy_form5">
			<input type="file" name="ff" class="input_100_43 ff"/>
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

			<c:if test='${idchek == "tr"}'>
				<button class="btn_dong_daum01">ȸ������</button>
			</c:if>
			<a href="../../user/join/list">���</a>


		</div>
	</form>

</div>
</div>




