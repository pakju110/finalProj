<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="modify" method="post" 
	enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${data.dd.rest_id }" />
	<table class="e_table2">
		<tr>
			<th class="join_t1">오픈시간</th>
			<td class="join_t2"><select name="opentime">
					<c:forEach begin="0" end="24" varStatus="i">

						<option value="${i.index}"
							<c:if test="${data.dd.opentime == i.index}"> selected="selected"</c:if>>${i.index}</option>
					</c:forEach>
			</select></td>
		</tr>
		<tr>
			<th>마감시간</th>
			<td><select name="closetime">
					<c:forEach begin="0" end="24" varStatus="i">
						<option value="${i.index}"
							<c:if test="${data.dd.closetime == i.index}"> selected="selected"</c:if>>${i.index}</option>
					</c:forEach>
			</select></td>
		</tr>
		<tr>
			<th>파일</th>
			<td><input type="file" name="ff" value="${data.dd.sysfile }" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="contents" class="textarea" >${data.dd.contents }</textarea></td>
		</tr>

	</table>
	<div class="bx_btn ptb10 txt_right">
		<a href="view?rest_id=${data.dd.rest_id }" class="btn type5">취소</a>
		<button class="btn type4">수정</button>
	</div>
</form>




