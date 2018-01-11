<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<jsp:include page="navi3.jsp" />

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
			<td><textarea cols="40" rows="5" name="content" >궁금하신</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록" class="btn type4"/>
				<input type="reset" value="초기화" class="btn type4"/>
				<a href="qnalist" class="btn type5">목록으로</a>
			</td>
		</tr>
	</table>
</form>


