<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<table class="e_table2">
	<tr>
	<!-- <td><a href="list">��ü����</a></td> -->
	

		</tr>
		<tr>
			<td class="join_t1">��û ���� ���̵�</td>
			<td class="join_t1">��û��</td>
			<td class="join_t1">��� ��</td>
		
			<td class="join_t1">�����̹���</td>
			
			
		</tr>
		

		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td><%-- <a href="view?Rest_id=${vo.rest_id }">${vo.rest_id}</a> --%>${vo.rest_id}</td>
				<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd"/></td>
				<td>${vo.startDD}</td>
				
				<td><img alt="�ȳ��� "src="../../../resources/cf/${vo.cf_sysimg}" width="320" height="140"></td>
				<%-- <td><a href="view?id=${vo.id}&ct=0">${vo.name}</a></td> --%>
				
			</tr>
		</c:forEach>

		
	</table>
