<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="privacy_con2">
	<p class="h2">회원가입</p>
	<form action="reg" method="post" enctype="multipart/form-data"
		name="jf">
		<div class="privacy_form1">
			<input type="text" name="user_name" placeholder="이름 입력" 
				maxlength="12" class="input_100_43">
		</div>
		<div class="privacy_form2">
			<input type="text" name="user_id" placeholder="아이디입력" title="아이디입력"
				maxlength="12" class="input_100_43">
			<!-- <a href="#a" class="btn btn_id_check" onclick="idCheck()">중복확인</a> -->
			<%-- <input type="button"
				onclick="idCheck2()" name="sch" class="sch" value="id중복확인" />
			<p>
				<c:choose>
					<c:when test="${idchek == 'tr'}">
					사용가능한 아이디입니다.
					</c:when>
					<c:otherwise>아이디가 중복이거나 중복체크를 해주세요</c:otherwise>
				</c:choose>
			</p> --%>
		</div>
		<div class="privacy_form3">
			<input type="password" name="user_pw"
				placeholder="비밀번호 (영문/숫자/특문 6~12자)" maxlength="12"
				class="input_100_43" id="password" onchange="samepassword()">
			<p class="pri_pw_img1"></p>
		</div>
		<div class="privacy_form4">
			<input type="password" name="user_pw"
				placeholder="비밀번호 재확인 (영문/숫자/특문 6~12자)" maxlength="12"
				class="input_100_43"  onchange="samepassword()" id="confirm">
			<p class="pri_pw_img2"></p>
		</div>
		<div class="privacy_form6">
			<span id = "res" ></span>
		</div>
		<div class="privacy_form5">
			<input type="text" name="user_phone" placeholder="전화번호 입력"
				class="input_100_43">
		</div>
		<div class="privacy_form5">
			<input type="text" name="user_address" placeholder="주소 입력"
				class="input_100_43">
		</div>
		<div class="check_box">

	
			<a href="../../user/join/list" class="btn type5">취소</a>
			<button class="btn type4">회원가입</button>
		</div>
	</form>

</div>
