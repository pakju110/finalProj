<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<table class="e_table2">
	<tr>
		<td class="join_t1">아이디</td>
		<td class="join_t1">${data.dd.rest_id }</td>
	</tr>
	<tr>
		<td>브랜드</td>
		<td>${data.dd.brand }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${data.dd.name }</td>
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
		<td>주소</td>
		<td>${data.dd.addr },${data.dd.addr2 }</td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td>${data.dd.tel }</td>
	</tr>
	<tr>
		<td>MENU</td>
		<td><c:forEach items="${data.dd2}" var="me">
				<c:if test="${me.state == 'on'}">
					<div class="menu">
						<a href="javascript:;"> <c:if test="${me.sysfile != null }">
								<span class="img"><img
									src="../../../resources/up/${me.sysfile}"></span>
							</c:if> <span class="txt"> <span class="bx">${me.name }</span> <span
								class="bx txt_right">${me.price }원</span>
						</span>
						</a>
					</div>
				</c:if>
			</c:forEach></td>
	</tr>
	<tr>
		<td>영업시간</td>
		<td>OPEN <c:if test="${data.dd.opentime < 10 }">0</c:if>${data.dd.opentime}:00
			~ CLOSE<c:if test="${data.dd.closetime < 10 }">0</c:if>${data.dd.closetime}:00</td>
	</tr>
	<tr>
		<td colspan="2">${data.dd.contents}</td>
	</tr>
	<tr>
		<td colspan="2" align="right"><a
			href="modifyForm?rest_id=${data.dd.rest_id}" class="btn type4">회원수정</a>
			<a href="list" class="btn type5">리스트로</a></td>
	</tr>
</table>
