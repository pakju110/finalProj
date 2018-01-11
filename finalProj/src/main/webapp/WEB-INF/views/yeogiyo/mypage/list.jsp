<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<jsp:include page="navi3.jsp" />
	
<table class="e_table2">
	<tbody>
		<tr>
			
			<th class="join_t1"><p class="th_rel">
					<label for="et4">ID</label>
				</p></th>
			<td class="join_t2" colspan="3">${loginuser.user_id}</td>
		</tr>
		<tr>
			<th><p class="th_rel">
					<label for="et6">�̸�</label>
				</p></th>
			<td>${data.dd.user_name}</td>
			<th><p class="th_rel">
					<label for="et6">������</label>
				</p></th>
			<td><fmt:formatDate value="${data.dd.reg_date }" pattern="yyyy-MM-dd HH:mm" /></td>
		</tr>
		
		<tr>
			<th><p class="th_rel">
					<label for="et4">��ȭ��ȣ</label>
				</p></th>
			<td colspan="3">${data.dd.user_phone}</td>
		</tr>
		<tr>
			<th><p class="th_rel">
					<label for="et4">�ּ�</label>
				</p></th>
			<td colspan="3">${data.dd.user_address}</td>
		</tr>
		<c:if test="${data.dd.grade ne 'u' && data.dd.grade ne 'admin'}">
			<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}"><tr>
			<td colspan="4">
				<img alt="" src="../../../resources/up/${data.dd.orifile}">
			</td>
		</tr>
		</c:if>
		</c:if>
	</tbody>
</table>
<div class="bx_btn notice"><a href="../modify/modifyform" class="btn type4">����</a></div>
<%--	<table border="">
		 <tr>
			<td>id</td>
			<td>${loginuser.user_id}</td>
		</tr>
	 <tr>
			<td>������</td>
			<td>${data.dd.reg_date}</td>
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

		<tr>
			<td>���</td>
			<td>${loginuser.grade}</td>
		</tr>
		<c:if test="${data.dd.grade ne 'u' && data.dd.grade ne 'admin'}">
			<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
				<tr>
			<td>����</td>
			<td>
				${data.dd.orifile}
				<img alt="" src="../../../resources/up/${data.dd.orifile}">
			</td>
			</tr>
			</c:if>
		</c:if>
		<tr>

			<td colspan="2" align="right"><a
				href="deleteForm?user_id=${loginuser.user_id}">ȸ��Ż��</a> <a
				href="modifyForm?user_id=${loginuser.user_id}">ȸ������</a>
			</td>
		</tr>

	</table>

 --%>