<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<table class="e_table2">
	<tr>
		<!-- <td><a href="list">전체보기</a></td> -->
		<td class="join_t1"><a href="wlist">신청중 광고보기</a></td>
		<td class="join_t1"><a href="nowcflist">현재 광고보기</a></td>
		<td class="join_t1"><a href="endcflist">지난 광고보기</a></td>
	</tr>
	<tr>
		<td>신청 가게 아이디</td>
		<td>신청일</td>
		<td>희망 월</td>
		<td>시작일</td>
		<td>종료일</td>
		<td>광고이미지</td>
		<td>승인여부</td>

	</tr>

	<c:forEach items="${data.dd}" var="vo">
		<tr>
			<td><a href="view?Rest_id=${vo.rest_id }">${vo.rest_id}</a></td>
			<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd" /></td>
			<td>${vo.sinchung}</td>
			<td><fmt:formatDate value="${vo.start_date}"
					pattern="yyyy-MM-dd" /></td>
			<td><fmt:formatDate value="${vo.end_date}" pattern="yyyy-MM-dd" /></td>
			<td><img alt="안나옴 " src="../../../resources/cf/${vo.cf_sysimg}"
				width="320" height="140"></td>
			<%-- <td><a href="view?id=${vo.id}&ct=0">${vo.name}</a></td> --%>
			<td>${vo.approval }</td>
		</tr>
	</c:forEach>


</table>
