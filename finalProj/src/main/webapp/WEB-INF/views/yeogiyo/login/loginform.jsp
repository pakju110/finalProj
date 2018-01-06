

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
<form action="loginres" method="post">
	<div><input type="text" name="user_id"/></div>
	<div><input type="text" name="user_pw"/></div>
	<div><input type="submit" value="로그인"/></div>

</form>
</body>
</html>
<%-- 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- bootstrap -->


</head>
<body>

개인로그인
	<form action="../../login/second/freeLogReg.jsp">
	 <input type="hidden" name="goUrl" value="${nowUrl }" />

		아이디<input type="text" name="memId"/> value="${memId }"<br>
		비밀번호<input type="text" name="memPw" />
		<input type="submit" value="로그인" class="btn btn-primary"/>
	</form>
	
	<form class="form-horizontal" action="freeLogReg">
<fieldset>

<!-- Form Name -->
<legend>개인 로그인</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="userid">아이디</label>  
  <div class="col-md-4">
  <input id="userid" name="memId" type="text" placeholder="아이디를 입력해주세요." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">비밀번호</label>
  <div class="col-md-4">
    <input id="password" name="memPw" type="password" placeholder="비밀번호를 입력해주세요." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnSubmit"></label>
  <div class="col-md-4">
    <button id="btnSubmit" name="btnSubmit" class="btn btn-primary">로그인</button>
  </div>
</div>

</fieldset>
</form>



</body>
</html> --%>