<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<ul class="navi3">
	<c:forEach items="${data.subMenu }" var="mm">
		<c:choose>
			<c:when test="${mm.name != data.cate2 }">
				<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${data.cate2 == 'cf'  }">
						<c:if test="${data.service == mm.url }">
						<li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
						</c:if>
						<c:if test="${data.service != mm.url }">
						<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
						</c:if>
					</c:when>
					<c:otherwise>
						<li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
					</c:otherwise>
					</c:choose>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>