

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
	<div><input type="submit" value="�α���"/></div>

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

���ηα���
	<form action="../../login/second/freeLogReg.jsp">
	 <input type="hidden" name="goUrl" value="${nowUrl }" />

		���̵�<input type="text" name="memId"/> value="${memId }"<br>
		��й�ȣ<input type="text" name="memPw" />
		<input type="submit" value="�α���" class="btn btn-primary"/>
	</form>
	
	<form class="form-horizontal" action="freeLogReg">
<fieldset>

<!-- Form Name -->
<legend>���� �α���</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="userid">���̵�</label>  
  <div class="col-md-4">
  <input id="userid" name="memId" type="text" placeholder="���̵� �Է����ּ���." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">��й�ȣ</label>
  <div class="col-md-4">
    <input id="password" name="memPw" type="password" placeholder="��й�ȣ�� �Է����ּ���." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnSubmit"></label>
  <div class="col-md-4">
    <button id="btnSubmit" name="btnSubmit" class="btn btn-primary">�α���</button>
  </div>
</div>

</fieldset>
</form>



</body>
</html> --%>