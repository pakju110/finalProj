<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="insert" method="post" enctype="multipart/form-data">
<input type="hidden" name="gno" value="${data.dd.gno=data.dd.no}"/>
	<table border="">
		
		<tr>
			<td>카테고리</td>
			<td><select name="cate">
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
			<td><textarea cols="40" rows="5" name="content" > [내용] </textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록" />
				<input type="reset" value="초기화" />
				<a href="list">목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>