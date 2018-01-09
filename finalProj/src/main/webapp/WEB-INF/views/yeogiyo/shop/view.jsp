<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table border="">
	<tr>
		<td>글번호</td>
		<td>${data.dd.rest_id}</td>
	</tr>
	<tr>
		<td colspan="2"><jsp:include page="menu.jsp" /></td>
	</tr>
	<tr>
		<td>제목</td>
		<td>${data.dd.name}</td>
	</tr>
	<tr>
		<td>글 내용</td>
		<td>${data.dd.contents}</td>
	</tr>
	<tr>
		<td>오픈시간</td>
		<td>${data.dd.opentime}</td>
	</tr>
	<tr>
		<td>마감시간</td>
		<td>${data.dd.closetime}</td>
	</tr>
	<c:if test="${!empty data.dd.sysfile}">
		<tr>
			<td>파일</td>
			<td>${data.dd.sysfile}-${data.dd.orifile}<br> <img alt=""
				src="../../../resources/up/${data.dd.sysfile}">
			</td>
		</tr>
	</c:if>
	<tr>
		<td colspan="2" align="right"><a
			href="deleteForm?id=${data.dd.rest_id}">회원탈퇴</a> <a
			href="modifyForm?id=${data.dd.rest_id}">회원수정</a> <a href="list">리스트로</a>
			<a href="menuinsertform?id=${data.dd.rest_id}&cnt=0">메뉴생성</a> <a
			href="menumodifyForm?id=${data.dd.rest_id}">메뉴수정</a></td>
	</tr>
</table>
<c:if test="${data.review != null}">
	<c:forEach items="${data.review}" var="review">
		<p>답변 : ${review.title}</p>
	</c:forEach>
</c:if>
<div>
	<c:if test="${reviewgrade }">
		<br>댓글권한 있음!!!!!!!!!!!!!!!!!!!!!!<br>
	</c:if>
	<form action="reviewinsert?id=${data.dd.rest_id }" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="rest_id" value="${data.dd.rest_id}">
		<input type="hidden" name="user_id" value="${loginuser.user_id}">
		<select name="star">
			<option value="0">별점을 선택해주세요.</option>
			<option value="0">☆</option>
			<option value="1">★</option>
			<option value="2">★★</option>
			<option value="3">★★★</option>
			<option value="4">★★★★</option>
			<option value="5">★★★★★</option>
		</select> <input type="text" name="title"> <input type="file" name="ff">
		<textarea name="contents"></textarea>
		<input type="submit" value="전송해라" />
	</form>
</div>



<div class="shop view both">
	<div class="left">
		<div class="bx_top both">
			<div class="left">
				<img alt="" src="../../../resources/up/${data.dd.sysfile}">
			</div>
			<div class="left">
				<p>${data.dd.name}</p>
				<p>
					<c:forEach begin="1" end="${data.dd.star}">
						<span class="ft_yel">★</span>
					</c:forEach>
				</p>
				<p>
					<c:if test="${data.dd.opentime < 10 }">0</c:if>${data.dd.opentime}
					~
					<c:if test="${data.dd.closetime < 10 }">0</c:if>${data.dd.closetime}
				</p>
			</div>
		</div>
		<div class="bx_cen">
			<c:forEach items="${data.dd2}" var="me">
				<c:if test="${me.state == 'on'}">
					<div>
						<a href="javascript:add_item(${me.no})">
							<c:if test="${me.sysfile != null }">
								<span class="img"><img src="../../../resources/up/${me.sysfile}"></span>
							</c:if>
								<span class="txt"></span>
						</a>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div class="right">
<form name="option" method="post" action="orderoption">

	<c:if test="${(loginuser.user_id != null)&&(data.cart != null)}">
	${data.cart }
		<button onclick="remove_all(this)" >전체삭제</button>
		<c:forEach items="${data.cart }" var="cart" varStatus="no">
			<p>${cart.name} /<button value="${cart.no}" onclick="remove_item(${me.no})" >-</button>${cart.cnt}<button value="${cart.no}" onclick="add_item(${me.no})" >+</button></p>
		</c:forEach>
		<a onclick="pay_submt()">주문하기</a>
	</c:if>
</form>
	</div>
</div>