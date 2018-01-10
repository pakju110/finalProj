<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="carlist carlist01"> <!-- 자동차 리스트 -->
	<c:forEach items="${data.dd}" var="vo">
            <div class="li lion">
                <a href="view?rest_id=${vo.rest_id}">
                    <span class="img"><img src="../../../resources/up/${vo.sysfile}" alt="" /></span>
                    <span class="con">
                        <span class="h3">${vo.brand}</span>
                        <span class="p1">${vo.name}</span>
                        <span class="p2">${vo.addr }</span>
                    </span>
                    <span class="eff">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                </a>
            </div>
            </c:forEach>
            </div>
            <c:if test="${loginuser.grade == 'w'}">
            <div class="bx_btn notice"><a href="registerForm" class=" btn type4">가게 등록</a></div>
            </c:if>
<div class="bx_pagebtn">

			<c:if test="${data.startPage>1 }">
				<a href="?page=1">[처음으로]</a>
				<a href="?page=${data.startPage-1 }" class="btn">&gt;</a>
			</c:if> <c:forEach begin="${data.startPage }" end="${data.endPage }" var="i">
				<c:choose>
					<c:when test="${data.nowPage==i }"><span class="btn on">${i }</span></c:when>
					<c:otherwise>
						<a href="?page=${i }" class="btn">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach> <c:if test="${data.endPage<data.totalPage }">
				<a href="?page=${data.endPage+1 }" class="btn">></a>
				<a href="?page=${data.totalPage }">[마지막으로]</a>
			</c:if>
		</div>