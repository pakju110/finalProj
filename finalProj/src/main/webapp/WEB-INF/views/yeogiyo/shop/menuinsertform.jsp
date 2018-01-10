<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<form action="menuinsert" method="post" enctype="multipart/form-data"
	name="mif">

	<table class="e_table2">

		<c:forEach begin="0" end="${param.cnt}" step="1" varStatus="no">
			<c:choose>
				<c:when test="${no.index == 0 }">
					<tr>
						<td colspan="2" class="join_t1">메뉴${no.index + 1}<input
							type="hidden" name="mm[${no.index }].state" value="on" /><input
							type="hidden" value="${data.dd.rest_id}"
							name="mm[${no.index }].id" /></td>
					</tr>

				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="2" class="join_t2">메뉴${no.index +1}<input
							type="hidden" name="mm[${no.index }].state" value="on" /><input
							type="hidden" value="${data.dd.rest_id}"
							name="mm[${no.index }].id" /></td>
					</tr>

				</c:otherwise>
			</c:choose>
			<tr>
				<th>NAME</th>
				<td><input type="text" name="mm[${no.index }].name" /></td>
			</tr>
			<tr>
				<th>PRAICE</th>
				<td><input type="text" name="mm[${no.index }].price" value="0"
					class="noman" /></td>
			</tr>
			<tr>
				<th>IMG</th>
				<td><input type="file" name="mm[${no.index }].ff" /></td>
			</tr>
		</c:forEach>

	</table>
	<p class="bx_btn ptb10 txt_right">
		<a href="javascript:menuplus(${param.cnt})" class="btn type5">메뉴추가</a>
		<button class="btn type4">생성</button>
	</p>
</form>