<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="cfapproval" method="post">
	<table border="">
	<input type="hidden" name="rest_id" value="${data.dd.rest_id}"> 
		<tr>
			<td>���̵�</td>
			<td>${data.dd.rest_id}</td>
		</tr>
		<%-- <tr>
			<td colspan="2"><jsp:include page="menu.jsp"/></td>
		</tr> --%>
		<tr>
			<td>����</td>
			<td>${data.dd.name}</td>
		</tr>
		<tr>
			<td>�� ����</td>
			<td>${data.dd.contents}</td>
		</tr>
		<%-- <c:if test="${!empty data.dd.sysfile}"> --%>
			<tr>
				<td>����</td>
				<td><img alt="�ȳ��� "src="../../../resources/cf/${data.cfdetailimg.cf_sysimg}" width="320" height="140"></td>
			</tr>
		<%-- </c:if> --%>
		
		<tr>
		<td>���ο��� </td>
		<td><select name="approval">
		<option>w</option>
		<option>a</option>
		
		</select></td>
		</tr>
		
		<tr>
			<td colspan="2" align="right">
			<input type="submit" value="����" />
				<a href="list">����Ʈ��</a>
				
			</td>
		</tr>
	</table>
	</form>
