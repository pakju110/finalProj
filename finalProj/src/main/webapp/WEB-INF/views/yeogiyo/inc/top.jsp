<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table width="100%">
	<tr><c:set var="t1" value="�α���"/>
	<c:set var="t2" value="����������"/>
		<c:forEach items="${data.topMenu }" var="mm">
		
		<c:if test='${loginuser.user_id == null && mm.korName != "����������"}'>
		<td><a href="${data.depth}${mm.name}/${mm.url }/list">${mm.korName }</a></td>
		</c:if>
			<c:if test="${loginuser.user_id != null}">
			<c:if test='${ mm.korName != "�α���" }'>
			<c:if test='${ mm.korName != "ȸ������"}'>
			<td><a href="${data.depth}${mm.name}/${mm.url }/list">${mm.korName }</a></td>
			</c:if>
			</c:if>
			</c:if>
		</c:forEach>
		
		
		<td><c:if test="${loginuser.user_id != null && loginuser.grade eq 'admin'}">
<a href="${data.depth}manager/user/list">�����ڸ޴�</a>
</c:if></td>
		
		
		
		<td><c:if test="${loginuser.user_id != null}">
${ loginuser.user_name } �� �ȳ��ϼ���<a href="${data.depth}login/login/logout">�α׾ƿ�</a>
</c:if></td>




	</tr>
</table>