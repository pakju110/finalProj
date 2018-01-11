<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="navi3">
	<c:forEach items="${data.subMenu }" var="mm">
		<c:if test="${loginuser.grade == 'w' || loginuser.grade == 'r' }">
			<li><a href="../../shop/all/view?rest_id=${loginuser.user_id }">내가게 관리</a></li>
		</c:if>
		
		<c:choose>
			<c:when test="${mm.name != data.cate2 }">
				<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:when>
			<c:otherwise>
				<li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
