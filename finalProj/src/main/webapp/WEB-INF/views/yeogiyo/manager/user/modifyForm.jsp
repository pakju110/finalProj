<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<form action="grademodify" method="post">
		<input type="hidden" value="${data.dd.user_id }" name="user_id">
	<table class="e_table2">

			<tr>
				<td  class="join_t1">아이디</td>
				<td  class="join_t1">${data.dd.user_id }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${data.dd.user_name }</td>
			</tr>
				<tr>
				<td>등급</td>
				<td><select name="grade">
				<option>r</option>
				<option>u</option>
				<option>w</option>
				</select></td>
			</tr>

			<tr>

				<td colspan="2" align="center"><input type="submit" value="수정" />
					<a href="view?user_id=${data.dd.user_id }">뒤로</a></td>
			</tr>
		</table>
	</form>

