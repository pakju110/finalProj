<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<tr >
			<td class="join_t1"><a href="list"><b>��ü����</b></a></td>
			<td class="join_t1" colspan="2"><a href="wlist"><b>��û�����</b></a></td>
		</tr>
		<tr>
			<td>�۹�ȣ</td>
			<td>�����</td>
			<td>�̸�</td>
		</tr>
		<c:forEach items="${data.dd}" var="vo">
			<tr>
				<td>${vo.rest_id}</td>
				<td>${vo.name}</td>
				<td><a href="view?id=${vo.rest_id}&ct=0">${vo.name}</a></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>