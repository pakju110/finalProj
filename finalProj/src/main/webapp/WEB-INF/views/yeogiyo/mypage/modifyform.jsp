<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<script type="text/javascript">
	function fileDelete() {
		if (confirm("������ �����Ͻðڽ��ϱ�?")) {
			fmt.action = "fileDelete"
			fmt.submit()
		}

	}
</script>

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
				<td colspan="3"><input type="text" name="user_pw" /></td>
			</tr>

			<tr>
				<th><p class="th_rel">
						<label for="et4">��ȭ��ȣ</label>
					</p></th>
				<td colspan="3"><input type="text" name="user_phone"
					value="${loginuser.user_phone}" /></td>
			</tr>
			<tr>
				<th><p class="th_rel">
						<label for="et4">�ּ�</label>
					</p></th>
				<td colspan="3"><input type="text" name="user_address"
					value="${loginuser.user_address}" /></td>
			</tr>
		</tbody>
	</table>


<div class="bx_btn center">
	<a href="view?user_id=${loginuser.user_id}" class="btn type5">�ڷ�</a>
	<button class="btn type4">����</button>
</div>

</form>


<!--<form action="modify" method="post">
	<input type="hidden" name="user_id" value="${loginuser.user_id}" />
		<table border="">
		
			<tr>
				<td>pw</td>
				<td><input type="text" name="user_pw" /></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="user_phone"
					value="${loginuser.user_phone}" /></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="user_address"
					value="${loginuser.user_address}" /></td>
			</tr>
			<tr>

				<td colspan="2" align="center"><input type="submit" value="����" />
					<a href="view?user_id=${loginuser.user_id}">�ڷ�</a></td>
			</tr> 
		</table>
	</form> 	 -->