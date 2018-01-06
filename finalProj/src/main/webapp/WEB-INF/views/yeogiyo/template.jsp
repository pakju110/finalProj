<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../../../resources/js/layout.css" rel="stylesheet">

<script type="text/javascript" src="../../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../../resources/js/common.js"></script>
</head>
<body>
<table border="">
	<tr>
		<td colspan="2">
		<jsp:include page="inc/top.jsp"/>
		</td>
	</tr>
	<tr>
	<c:set value="2" var="mainCol"/>


<c:if test="${data.subMenu!=null}">
	<td>
		<jsp:include page="inc/sub.jsp"/>	
	</td>
	<c:set value="1" var="mainCol"/>
</c:if>
		
		
		<td colspan="${mainCol }">
		<jsp:include page="${data.cate1 }/${data.service }.jsp"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<jsp:include page="inc/bottom.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>