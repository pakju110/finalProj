<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<table class="e_table2">
	<tr>
		<th class="join_t1"><a href="list"><b>전체보기</b></a></th>
		<td class="join_t1" colspan="2"><a href="wlist"><b>신청대기목록</b></a></td>
	</tr>
	<tr>
		<td>ID</td>
		<td>가게이름</td>
		<td>이름</td>
	</tr>
	<c:forEach items="${data.dd}" var="vo">
		<tr>
			<td>${vo.rest_id}</td>
			<td>${vo.name}</td>
			<td><a href="view?rest_id=${vo.rest_id}&ct=0">${vo.name}</a></td>
		</tr>
	</c:forEach>
	
</table>
<div class="bx_pagebtn">

			<c:if test="${data.startPage>1 }">
				<a href="?page=1">[처음으로]</a>
				<a href="?page=${data.startPage-1 }" class="btn">&gt;</a>
			</c:if> <c:forEach begin="${data.startPage }" end="${data.endPage }" var="i">
				<c:choose>
					<c:when test="${data.nowPage==i }"><span class="btn on">${i }</span></c:when>
					<c:otherwise>
						<a href="?page=${i }" class="btn">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach> <c:if test="${data.endPage<data.totalPage }">
				<a href="?page=${data.endPage+1 }" class="btn">></a>
				<a href="?page=${data.totalPage }">[마지막으로]</a>
			</c:if>
		</div>
