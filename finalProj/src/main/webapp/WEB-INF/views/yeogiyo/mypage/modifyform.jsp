<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="navi3.jsp" />
<script type="text/javascript">
	function fileDelete() {
		if (confirm("파일을 삭제하시겠습니까?")) {
			fmt.action = "fileDelete"
			fmt.submit()
		}

	}
</script>

<form action="modify" method="post">
	<table class="e_table2">
		<tbody>
			<tr>
				<th class="join_t1"><p class="th_rel">
						<label for="et4">ID</label>
					</p></th>
				<td class="join_t2" colspan="3">${loginuser.user_id}<input
					type="hidden" name="user_id" value="${loginuser.user_id}" /></td>
			</tr>
			<tr>
				<th><p class="th_rel">
						<label for="et4">PW</label>
					</p></th>
				<td colspan="3"><input type="password" name="user_pw" /></td>
			</tr>

			<tr>
				<th><p class="th_rel">
						<label for="et4">전화번호</label>
					</p></th>
				<td colspan="3"><input type="text" name="user_phone"
					value="${loginuser.user_phone}" /></td>
			</tr>
			<tr>
				<th><p class="th_rel">
						<label for="et4">주소</label>
					</p></th>
				<td colspan="3" ><input type="text" name="user_address"
					value="${loginuser.user_address}" style="width: 650px" /></td>
			</tr>
		</tbody>
	</table>


<div class="bx_btn center">
	
	<button class="btn type4">수정</button>
	<a href="../mypage/list" class="btn type5">취소</a>
</div>

</form>

