<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="insert" method="post" enctype="multipart/form-data">
<input type="hidden" name="gno" value="${data.dd.gno=data.dd.no}"/>
<table class="e_table2">
		
		<tr>
			<th class="join_t1">ī�װ�</th>
			<td class="join_t2"><select name="cate">
		<c:if test="${loginuser.user_id == 'admin'}">
					<option value="notice" >��������</option>
					<option value="fnq" >�����ϴ� ����</option>
</c:if>
					<option value="qna" >1:1����</option>		
				</select></td>
		</tr>	
		<tr>
			<th>����</th>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<th>����</th>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<th>����</th>
			<td><textarea cols="40" rows="5" name="content" > [����] </textarea></td>
		</tr>

	</table>
	<div class="bx_btn ptb10 center">
	<button class="btn type4">���</button>
				<button type="reset"  class="btn type4">�ʱ�ȭ</button>
				<a href="list" class="btn type5">�������</a>
	</div>
</form>
