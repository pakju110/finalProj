<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title> 
<link href="../../../resources/js/layout.css" rel="stylesheet">

<script type="text/javascript" src="../../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../../resources/js/common.js"></script>
</head>
<body  onresize="parent.resizeTo(500,300)" onload="parent.resizeTo(800,600)">


			<jsp:include page="pay/${data.service }.jsp"/>


</body>
</html>