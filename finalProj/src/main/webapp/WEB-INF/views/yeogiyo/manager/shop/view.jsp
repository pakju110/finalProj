<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<table class="e_table2">
	<tr>
		<td class="join_t1">아이디</td>
		<td class="join_t1">${data.dd.rest_id}</td>
	</tr>
	<%-- <tr>
			<td colspan="2"><jsp:include page="menu.jsp"/></td>
		</tr> --%>
	<tr>
		<td>이름</td>
		<td>${data.dd.name}</td>
	</tr>
	<tr>
		<td>설명</td>
		<td>${data.dd.contents}</td>
	</tr>
	<c:if test="${!empty data.dd.sysfile}">
		<tr>
			<td>파일</td>
			<td>${data.dd.sysfile}-${data.dd.orifile}<br> <img alt=""
				src="../../../resources/up/${data.dd.sysfile}">
			</td>
		</tr>
	</c:if>
	<tr>
		<td colspan="2" align="right"><a
			href="modifyForm?rest_id=${data.dd.rest_id}">회원수정</a> <a href="list">리스트로</a>

		</td>
	</tr>
</table>
