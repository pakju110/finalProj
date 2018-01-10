<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=true"></script>
	<c:if test="${loginuser.grade == 'w' }">
	<form action="reg" method="post" enctype="multipart/form-data" name="regshop" id="regshop">
		<input type="hidden" name="grade" value="w"/>
		<table class="e_table2">
			<tr>
				<th class="join_t1">브랜드</th>
				<td class="join_t2"><input type="text" name="brand" /><input type="hidden" name="rest_id" value="${loginuser.user_id }" /></td>
			</tr>
			<tr>
				<th>type</th>
				<td>
					<select name="type">
						<option value="chicken">치킨</option>
						<option value="pizza">피자</option>
						<option value="china">중국집</option>
						<option value="jok">족발/보쌈</option>
						<option value="ni">야식</option>
						<option value="jp">일식</option>
						<option value="hs">한식</option>
						<option value="bs">분식</option>
						<option value="ps">패스트푸드</option>
					</select>
					
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" id="addr" name="addr"  onclick="openDaumPostcode()"><br>
					상세주소 : <input type="text" id="addr2" name="addr2" >
					<!-- <input type="hidden" name="xlet" id="xlet" /><input type="hidden" name="ylng" id="ylng" /> -->
					</td>
			</tr>
			<tr>
				<th>오픈시간</th>
				<td>
					<select name="opentime">
						<c:forEach begin="0" end="24" varStatus="i" >
							<option value="${i.index}">${i.index}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>마감시간</th>
				<td>
					<select name="closetime">
						<c:forEach begin="0" end="24" varStatus="i" >
							<option value="${i.index}">${i.index}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
				<textarea name="contents" class="textarea"></textarea>
				</td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" name="ff" /></td>
			</tr>
		</table>
		<div class="bx_btn ptb10 txt_right"><a href="list" class="btn type5">취소</a><a href="#a" id="addcheck" class="btn type4">가입</a></div>
	</form>
	</c:if>
	