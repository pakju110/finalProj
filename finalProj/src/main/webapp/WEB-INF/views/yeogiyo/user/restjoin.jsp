<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<form action="restreg" method="post" enctype="multipart/form-data" name="jf">
		<table border="">
			<tr>
				<td>id</td>
				<td><input type="text" name="user_id" /><input type="button" onclick="idCheck2()" name="sch" class="sch" value="id중복확인"/></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="text" name="user_pw" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="user_name" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="user_phone" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="user_address" /></td>
			</tr>
			<!-- <tr>
			<td>등급</td>
			<td><input type="text" name="grade" /></td>
		</tr> -->
		<tr>
			<td>파일</td>
			<td><input type="file" name="ff" /></td>
		</tr>
			<tr>

				<td colspan="2" align="center">
				<c:choose>
					<c:when test="${idchek == 'tr'}">
					사용가능한 아이디입니다.
					</c:when>
					<c:otherwise>아이디가 중복이거나 중복체크를 해주세요</c:otherwise>
				</c:choose>
				<c:if test='${idchek == "tr"}'>
				<input type="submit" value="가입" />
				</c:if>
					<a href="../../user/join/list">취소</a></td>
			</tr>
		</table>
	</form>
