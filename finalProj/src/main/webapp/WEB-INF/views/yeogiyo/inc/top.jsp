<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table width="100%">
	<tr><c:set var="t1" value="로그인"/>
	<c:set var="t2" value="마이페이지"/>
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
		
		
		<td><c:if test="${loginuser.user_id != null && loginuser.grade eq 'admin'}">
<a href="${data.depth}manager/user/list">관리자메뉴</a>
</c:if></td>
		
		
		
		<td><c:if test="${loginuser.user_id != null}">
${ loginuser.user_name } 님 안녕하셔유<a href="${data.depth}login/login/logout">로그아웃</a>
</c:if></td>




	</tr>
</table>