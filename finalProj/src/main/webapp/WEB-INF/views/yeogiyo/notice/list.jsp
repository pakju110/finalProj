<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="m_tabs2" class="my5_con">
	<ul class="navi3">
		<c:forEach items="${data.subMenu }" var="mm">
			<c:choose>
				<c:when test="${mm.name != data.cate2 }">
					<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
				</c:when>
				<c:otherwise><li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li></c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
	<div id="my_tab1">
		<table class="e_table2">
			<thead>
				<tr>
					<th class="join_t1">번호</th>
					<th>카테고리</th>
					<th>작성자</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${data.dd }" var="vo" varStatus="no">
					<tr>
						<td>${data.startNum+no.index }</td>
						<td>${vo.cate}</td>
						<td>${vo.pname}</td>
						<td class="tx_left"><a href="detail?no=${vo.no}">${vo.title}</a></td>
						<td><fmt:formatDate value="${vo.regdate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${vo.cnt }</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<div class="bx_btn notice"><c:if test="${data.btnGo}">
				<a href="insertForm" class="btn type4">글쓰기</a>
			</c:if></div>
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
	</div>
</div>
