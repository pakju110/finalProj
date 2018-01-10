<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<ul class="navi3">
	<c:forEach items="${data.subMenu }" var="mm">
		<c:choose>
			<c:when test="${mm.name != data.cate2 }">
				<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:when>
			<c:otherwise>
				<li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
	<form action="deleteReg" method="post">
	<table class="e_table2">
		<tbody>
			<tr>

				<th class="join_t1"><p class="th_rel">
						<label for="et4">ID</label>
					</p></th>
				<td class="join_t2" colspan="3">${loginuser.user_id}
				<input type="hidden" name="user_id" value="${loginuser.user_id}" /></td>
				
			</tr>
			<tr>
				<th><p class="th_rel">
						<label for="et4">PW</label>
					</p></th>
				<td colspan="3"><input type="text" name="user_pw" /></td>
			</tr>

		
		</tbody>
	</table>


<div class="bx_btn center">
	<button class="btn type4">Ż��</button>
	<a href="../mypage/list" class="btn type5">���</a>
</div>
</form>

