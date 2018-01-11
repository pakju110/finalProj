<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="insert" method="post" enctype="multipart/form-data">
<input type="hidden" name="gno" value="${data.dd.gno=data.dd.no}"/>
<table class="e_table2">
		
		<tr>
			<th class="join_t1">카테고리</th>
			<td class="join_t2"><select name="cate">
		<c:if test="${loginuser.user_id == 'admin'}">
					<option value="notice" >공지사항</option>
					<option value="fnq" >자주하는 질문</option>
</c:if>
					<option value="qna" >1:1문의</option>		
				</select></td>
		</tr>	
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<th>파일</th>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="40" rows="5" name="content" > [내용] </textarea></td>
		</tr>

	</table>
	<div class="bx_btn ptb10 center">
	<button class="btn type4">등록</button>
				<button type="reset"  class="btn type4">초기화</button>
				<a href="list" class="btn type5">목록으로</a>
	</div>
</form>
