<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="m_tabs2" class="my5_con">
	<ul class="navi3">
		<c:forEach items="${data.subMenu }" var="mm">
			<c:choose>
				<c:when test="${mm.name != data.cate2 }">
					<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
				</c:when>
				<c:otherwise><li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li></c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
</div>
<form action="deleteReg" method="post">
	<input type="hidden"  name="no" value="${data.dd.no }" />
	<table class="e_table2">
		<tr>
			<td class="join_t1">암호</td>
			<td class="join_t2"><input type="text" name="pw"/></td>
		</tr>
		<%-- <tr>
			<td>파일이름</td>
			<td>${data.dd.sysfile}</td>
		</tr> --%>
		<tr>
			
			<td colspan="2" align="center">
				<button class="btn type4">삭제</button>
				<a href="detail?no=${data.dd.no }" class="btn type5">뒤로</a>
			</td>
		</tr>
	</table>
</form>

