<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=true"></script>
	<c:if test="${loginuser.grade == 'w' }">
	<form action="reg" method="post" enctype="multipart/form-data" name="regshop" id="regshop">
		<input type="hidden" name="grade" value="w"/>
		<table border="">
			<tr>
				<td>id</td>
				<td><input type="hidden" name="rest_id" value="${loginuser.user_id }" /></td>
			</tr>
			<tr>
				<td>브랜드</td>
				<td><input type="text" name="brand" /></td>
			</tr>
			<tr>
				<td>type</td>
				<td>
					<select name="type">
						<option value="chicken">치킨</option>
						<option value="pizza">피자</option>
					</select>
					
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" id="addr" name="addr"  onclick="openDaumPostcode()"><br>
					상세주소 : <input type="text" id="addr2" name="addr2" >
					<!-- <input type="hidden" name="xlet" id="xlet" /><input type="hidden" name="ylng" id="ylng" /> -->
					</td>
			</tr>
			<tr>
				<td>오픈시간</td>
				<td><input type="text" name="opentime" /></td>
			</tr>
			<tr>
				<td>마감시간</td>
				<td><input type="text" name="closetime" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="contents" /></td>
			</tr>
			<tr>
				<td>파일</td>
				<td><input type="file" name="ff" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="#a" id="addcheck">가입</a>
					<a href="list">리스트로</a></td>
			</tr>
		</table>
	</form>
	</c:if>
