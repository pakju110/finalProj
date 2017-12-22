<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<table width="100%">

		<c:forEach items="${data.subMenu }" var="mm">
			<tr>
				<td><a href="../${mm.name}/${mm.url }">${mm.korName }</a></td>
			</tr>
		</c:forEach>
	</table>
