<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>

<form action="insert" method="post" enctype="multipart/form-data">
<input type="hidden" name="gno" value="${data.dd.gno=data.dd.no}"/>
	<table class="e_table2">
		
		<tr>
			<td class="join_t1">카테고리</td>
			<td class="join_t2"><select name="cate">
<c:if test="${loginuser.user_id == 'admin'}">
					<option value="notice" >공지사항</option>
					<option value="fnq" >자주하는 질문</option>
</c:if>
					<option value="qna" >1:1문의</option>		
				</select></td>
		</tr>	
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>내용</td>
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
</body>
</html>

