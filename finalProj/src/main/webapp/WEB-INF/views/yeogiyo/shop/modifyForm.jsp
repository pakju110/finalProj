<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="modify" method="post">
	<input type="hidden" name="id" value="${data.dd.id }" />
	<table border="">
		<tr>
			<td>�۹�ȣ</td>
			<td>${data.dd.id}</td>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="text" value="${data.dd.opentime}"
				name="opentime" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="text" value="${data.dd.closetime}"
				name="closetime" /></td>
		</tr>
		


		<tr>
			<td>�� ����</td>
			<td><input type="text" value="${data.dd.contents}"
				name="contents" /></td>
		</tr>


		<%-- <tr>
			<td>����</td>

			<td><c:choose>
					<c:when test="${data.dd.sysfile != null}">
						<input type="file" name="ff" value="${data.dd.sysfile}" />
					</c:when>
					<c:otherwise>
						<input type="file" name="ff" value="" />
					</c:otherwise>
				</c:choose></td>

		</tr> --%>

		<tr>

			<td colspan="2" align="center"><input type="submit" value="����" />
				<a href="view?id=${data.dd.id }">�ڷ�</a></td>
		</tr>

	</table>
</form>


