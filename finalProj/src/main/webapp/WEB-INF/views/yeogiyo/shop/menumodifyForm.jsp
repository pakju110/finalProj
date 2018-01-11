<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form name="menumodi" action="menumodify" method="post"
	enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${data.dd.rest_id }" />
	<table class="e_table2">

		<c:forEach items="${data.dd2}" var="me" varStatus="no">
			<c:choose>
				<c:when test="${no.index == 0 }">
					<tr>
						<td colspan="2" class="join_t1">메뉴${no.index + 1}<input
							type="hidden" value="${me.no}" name="mm[${no.index }].no" /> <input
							type="hidden" value="${me.id}" name="mm[${no.index }].id" /> <a
							href="javascript:remove_menu(${me.no})" class="btn type5">삭제</a></td>
					</tr>

				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="2" class="join_t2">메뉴${no.index + 1}<input
							type="hidden" value="${me.no}" name="mm[${no.index }].no" /> <input
							type="hidden" value="${me.id}" name="mm[${no.index }].id" /> <a
							href="javascript:remove_menu(${me.no})" class="btn type5">삭제</a></td>
					</tr>
				</c:otherwise>
			</c:choose>
			<tr>
				<th>NAME</th>
				<td><input type="text" value="${me.name}"
					name="mm[${no.index }].name" /></td>
			</tr>
			<tr>
				<th>PRICE</th>
				<td><input type="text" value="${me.price}"
					name="mm[${no.index }].price" /></td>
			</tr>
			<tr>
				<th>판매정지</th>
				<td>
					<c:if test="${me.state == 'on' }">
						<input type="radio" name="mm[${no.index }].state"
						value="on" checked="checked" />판매<br>
						<input type="radio"
					name="mm[${no.index }].state" value="off" />판매중지
					</c:if>
					<c:if test="${me.state == 'off' }">
						<input type="radio" name="mm[${no.index }].state"
						value="on" />판매<br>
						<input type="radio"
					name="mm[${no.index }].state" value="off"  checked="checked"/>판매중지
					</c:if>
				 </td>
			</tr>
			<tr>
				<th>IMG</th>
				<td><img src="../../../resources/up/${me.sysfile}"><br><br>
					<input type="file" name="mm[${no.index }].ff" />
				</td>
			</tr>
		</c:forEach>

	</table>
	<p class="bx_btn ptb10 txt_right">
		<a href="view?rest_id=${data.dd.rest_id }" class="btn type5">취소</a>
		<button class="btn type4">확인</button>
	</p>
</form>





