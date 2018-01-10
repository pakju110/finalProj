<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="header">
	<div class="bx_tp">
		<div class="con">
			<h1>
				<a href="${data.depth}shop/all/list"><img src="../../../resources/img/logo.png" alt="여기여"></a>
			</h1>
			<div class="bx_login">
			<c:if test="${loginuser.user_id == null}">
				<a href="${data.depth}login/login/list" class="btn type1">로그인</a>
				<a href="${data.depth}user/join/list" class="btn type2">회원가입</a>
			</c:if>
			<c:if test="${loginuser.user_id != null}">
				<a  onclick="menu()" id="btn_gnb"><span class="bx">
				<span></span><span></span><span></span>
			</span></a>
				<ul class="bx_mymenu"  id="Gnb">
					<li><a href="${data.depth}mypage/mypage/list">마이페이지</a></li>
					
					<c:if
				test="${loginuser.user_id != null && loginuser.grade eq 'admin'}">
				<li><a href="${data.depth}manager/user/list">관리자메뉴</a></li>
				
			</c:if>
			<li><a href="${data.depth}login/login/logout" class="">로그아웃</a></li>
				</ul>
			</c:if>
			</div>
		</div>
	</div>
	<c:if test="${data.cate1 == 'shop' }">
		<div class="bx_serch">
			<div class="bx_con">
				<form action="serchlist" name="adressserch" method="post" id="adressserch">
					<a href="javascript:;" class="btn_xyserch"><img src="../../../resources/img/ico/btn_serch1.png"></a>
					<p><input type="text" id="serch" name="serch" class="serch_input" value="${param.pramaddr }"><a href="javascript:;" class="btn_serch btn_addrserch">검색</a></p>
				</form>
			</div>
		</div>
	</c:if>
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