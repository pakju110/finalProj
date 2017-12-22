<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table width="100%">
	<tr>
		<c:forEach items="${data.topMenu }" var="mm">
			<td><a href="../../${mm.name}/${mm.url }/list">${mm.korName }</a></td>
		</c:forEach>
	</tr>
</table>