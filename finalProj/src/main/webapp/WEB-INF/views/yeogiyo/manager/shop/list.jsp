<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<table class="e_table2">
	<tr>
		<td class="join_t1"><a href="list"><b>전체보기</b></a></td>
		<td class="join_t1" colspan="2"><a href="wlist"><b>신청대기목록</b></a></td>
	</tr>
	<tr>
		<td>ID</td>
		<td>가게이름</td>
		<td>이름</td>
	</tr>
	<c:forEach items="${data.dd}" var="vo">
		<tr>
			<td><a href="view?rest_id=${vo.rest_id}&ct=0">${vo.rest_id}</a></td>
			<td>${vo.name}</td>
			<td>${vo.name}</td>
		</tr>
	</c:forEach>

</table>

