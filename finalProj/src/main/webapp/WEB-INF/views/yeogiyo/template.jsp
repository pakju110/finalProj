<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="">
	<tr>
		<td colspan="2">
		<jsp:include page="inc/top.jsp"/>
		</td>
	</tr>
	<tr>
	<td>
		<jsp:include page="inc/sub.jsp"/>
		</td>
		<td>
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