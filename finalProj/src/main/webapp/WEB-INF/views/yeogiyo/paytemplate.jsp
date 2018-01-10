<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결재</title> 
<link rel="stylesheet" type="text/css" href="../../resources/css/default.css">
<link rel="stylesheet" type="text/css" href="../../resources/css/layout.css">

<script type="text/javascript" src="../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../resources/js/common.js"></script>
</head>
<body  onresize="parent.resizeTo(500,500)" onload="parent.resizeTo(800,600)">

<div class="wrap paycon">

			<jsp:include page="pay/${data.service }.jsp"/>


</div>

</body>
</html>