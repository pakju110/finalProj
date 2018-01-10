<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<ul class="navi3">
	<c:forEach items="${data.subMenu }" var="mm">
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

<body>
	
<table class="e_table2">
		<tr class="join_t1">
			<td>ID</td>
			<td>가입일</td>
			<td>이름</td>
			<td>등급</td>
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td><a href="view?user_id=${vo.user_id}">${vo.user_id}</a></td>
					<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd"/></td>
				<td>${vo.user_name}</td>
				<td>${vo.grade}</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>