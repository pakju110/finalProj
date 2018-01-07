<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="t1" value="로그인" />
<c:set var="t2" value="마이페이지" />
<table width="100%">
	<tr>

		<c:forEach items="${data.topMenu }" var="mm">

			<c:if test='${loginuser.user_id == null && mm.korName != "마이페이지"}'>
				<td><a href="${data.depth}${mm.name}/${mm.url }/list">${mm.korName }</a></td>
			</c:if>
			<c:if test="${loginuser.user_id != null}">
				<c:if test='${ mm.korName != "로그인" }'>
					<c:if test='${ mm.korName != "회원가입"}'>
						<td><a href="${data.depth}${mm.name}/${mm.url }/list">${mm.korName }</a></td>
					</c:if>
				</c:if>
			</c:if>
		</c:forEach>
		<td><c:if
				test="${loginuser.user_id != null && loginuser.grade eq 'admin'}">
				<a href="${data.depth}manager/user/list">관리자메뉴</a>
			</c:if></td>



		<td><c:if test="${loginuser.user_id != null}">
${ loginuser.user_name } 님 안녕하셔유<a
					href="${data.depth}login/login/logout">로그아웃</a>
			</c:if></td>




	</tr>
</table>

<div class="header">
	<div class="bx_tp">
		<div class="con">
			<h1>
				<a href="#"><img src="../../../resources/img/logo.png" alt="여기여"></a>
			</h1>
			<div class="bx_login">
			<c:if test="${loginuser.user_id == null}">
				<a href="${data.depth}login/login/list" class="btn type1">로그인</a>
				<a href="${data.depth}user/join/list" class="btn type2">회원가입</a>
			</c:if>
			<c:if test="${loginuser.user_id != null}">
				${ loginuser.user_name } 님 안녕하세요.
				<a href="${data.depth}login/login/logout" class="btn type1">로그아웃</a>
			</c:if>
			</div>
		</div>
	</div>
	<div class="gnb">
			<ul>
				<li><a href="${data.depth}shop/all/list">전체</a></li>
				<li><a href="${data.depth}shop/chicken/list">치킨</a></li>
				<li><a href="${data.depth}shop/pizza/list">피자</a></li>
				<li><a href="${data.depth}shop/china/list">중국집</a></li>
				<li><a href="${data.depth}shop/jok/list">족발/보쌈</a></li>
				<li><a href="${data.depth}shop/ni/list">야식</a></li>
				<li><a href="${data.depth}shop/jp/list">일식</a></li>
				<li><a href="${data.depth}shop/hs/list">한식</a></li>
				<li><a href="${data.depth}shop/bs/list">분식</a></li>
				<li><a href="${data.depth}shop/ps/list">패스트푸드</a></li>
			</ul>
		</div>
</div>