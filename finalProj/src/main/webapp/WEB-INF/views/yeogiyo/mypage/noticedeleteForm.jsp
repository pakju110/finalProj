
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="navi3.jsp" />

<form action="noticedeleteReg" method="post">
	<input type="hidden"  name="no" value="${data.dd.no }" />

	<table class="e_table2">
		<tr>
			<th class="join_t1">��ȣ</th>
			<td class="join_t2"><input type="password" name="pw"/></td>
		</tr>
		<%-- <tr>
			<th>�����̸�</th>
			<td>${data.dd.sysfile}</td>
		</tr> --%>
		<tr>
			
			<td colspan="2" align="center">
				<input type="submit" value="����"  />
				<a href="detail?no=${data.dd.no }">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
