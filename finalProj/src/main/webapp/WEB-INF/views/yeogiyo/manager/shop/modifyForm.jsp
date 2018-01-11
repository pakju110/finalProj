<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="modify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${data.dd.rest_id }" />
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
			<td>영업시간</td>
			<td>OPEN <c:if test="${data.dd.opentime < 10 }">0</c:if>${data.dd.opentime}:00
					~
					CLOSE<c:if test="${data.dd.closetime < 10 }">0</c:if>${data.dd.closetime}:00</td>
		</tr>
		<tr>
			<td colspan="2">${data.dd.contents}</td>
		</tr>
		<tr>
			<td>등급</td>
			<td>
				${data.dd.grade } : 
			<select name="grade">
				<option value="r">r</option>
				<option value="u">u</option>
				<option value="w">w</option>
			</select>
			
			</td>
		</tr>
	</table>
	<div class="bx_btn ptb10 txt_right">
		<a href="view?rest_id=${data.dd.rest_id }" class="btn type5">취소</a>
		<button class="btn type4">수정</button>
	</div>
</form>




