<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<table class="e_table2">
		<tr>
			<td class="join_t1">id</td>
			<td class="join_t1">${data.dd.user_id}</td>
		</tr>
		<tr>
			<td>������</td>
			<td><fmt:formatDate value="${data.dd.reg_date}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td>${data.dd.user_name}</td>
		</tr>

		<tr>
			<td>��ȭ��ȣ</td>
			<td>${data.dd.user_phone}</td>
		</tr>

		<tr>
			<td>�ּ�</td>
			<td>${data.dd.user_address}</td>
		</tr>

<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
		<tr>
			<td>����</td>
			<td>
				${data.dd.orifile}
				<img alt="" src="../../../resources/up/${data.dd.orifile}">
			</td>
			</tr>
		</c:if>
		<tr>
			<td>���</td>
			<td>${data.dd.grade}</td>
		</tr>
		<%-- <tr>
			<td>����</td>
			<td>${data.dd.sysFile}-${data.dd.oriFile}<br>
			<img alt="" src="../resources/up/${data.dd.sysFile}">

			</td>
		</tr> --%>
		<tr>

			<td colspan="2" align="right">
			<a href="modifyForm?user_id=${data.dd.user_id}">ȸ�� ��� ����</a> 
			<a href="list">����Ʈ��</a>
			</td>
		</tr>

	</table>

