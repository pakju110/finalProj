<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<table border="">
		<tr>
			<td>�۹�ȣ</td>
			<td>�����</td>
			<td>�̸�</td>
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td>${vo.rest_id}</td>
				<td>${vo.name}</td>
				<td><a href="view?rest_id=${vo.rest_id}">${vo.name}</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4" align="right"><a href="registerForm">ȸ������</a></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><a href="test">test</a></td>
		</tr>
		
	</table>
<div class="bx_pagebtn">
			<c:if test="${data.startPage>1 }">
				<a href="?page=1">[ó������]</a>
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
				<a href="?page=${data.totalPage }">[����������]</a>
			</c:if>
		</div>