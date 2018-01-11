<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<table class="e_table2">
	<tr>
		<!-- <td><a href="list">��ü����</a></td> -->
		<td class="join_t1"><a href="wlist">��û�� ������</a></td>
		<td class="join_t1"><a href="nowcflist">���� ������</a></td>
		<td class="join_t1"><a href="endcflist">���� ������</a></td>
	</tr>
	<tr>
		<td>��û ���� ���̵�</td>
		<td>��û��</td>
		<td>��� ��</td>
		<td>������</td>
		<td>������</td>
		<td>�����̹���</td>
		<td>���ο���</td>

	</tr>

	<c:forEach items="${data.dd}" var="vo">
		<tr>
			<td><a href="view?Rest_id=${vo.rest_id }">${vo.rest_id}</a></td>
			<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd" /></td>
			<td>${vo.sinchung}</td>
			<td><fmt:formatDate value="${vo.start_date}"
					pattern="yyyy-MM-dd" /></td>
			<td><fmt:formatDate value="${vo.end_date}" pattern="yyyy-MM-dd" /></td>
			<td><img alt="�ȳ��� " src="../../../resources/cf/${vo.cf_sysimg}"
				width="320" height="140"></td>
			<%-- <td><a href="view?id=${vo.id}&ct=0">${vo.name}</a></td> --%>
			<td>${vo.approval }</td>
		</tr>
	</c:forEach>


</table>
