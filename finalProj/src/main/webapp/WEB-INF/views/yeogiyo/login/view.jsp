

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${loginuser.user_id != null}">
${ loginuser.user_id } �� �ȳ��ϼ���<a href="logout">�α׾ƿ�</a>
</c:if>
<c:if test="${loginuser == null}">
<a href="loginform">�α����Ϸ���������</a>
${ loginuser.user_id } ���ϴ°ſ���<a href="logout">�α׾ƿ�</a>	


</c:if>
</body>
</html>