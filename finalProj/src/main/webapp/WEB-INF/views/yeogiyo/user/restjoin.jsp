<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<form action="restreg" method="post" enctype="multipart/form-data" name="jf">
		<table border="">
			<tr>
				<td>id</td>
				<td><input type="text" name="user_id" /><input type="button" onclick="idCheck2()" name="sch" class="sch" value="id�ߺ�Ȯ��"/></td>
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
			<!-- <tr>
			<td>���</td>
			<td><input type="text" name="grade" /></td>
		</tr> -->
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
			<tr>

				<td colspan="2" align="center">
				<c:choose>
					<c:when test="${idchek == 'tr'}">
					��밡���� ���̵��Դϴ�.
					</c:when>
					<c:otherwise>���̵� �ߺ��̰ų� �ߺ�üũ�� ���ּ���</c:otherwise>
				</c:choose>
				<c:if test='${idchek == "tr"}'>
				<input type="submit" value="����" />
				</c:if>
					<a href="../../user/join/list">���</a></td>
			</tr>
		</table>
	</form>
