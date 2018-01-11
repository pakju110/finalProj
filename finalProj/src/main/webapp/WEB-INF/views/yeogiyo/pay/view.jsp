<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
${data.dd.orderno}
 --%>
 <div class="payh">결재완료</div>
 <div class="payclear">
 	<div class="bx_btn center"><img src="../../resources/img/logo.png" width="120px"/></div>
 	<p>${loginuser.user_id} 님</p>
 	<p>결제가 완료 되었습니다!</p>
 	<p class="bx_btn center"><a href="#a" onclick="btn_close()" class="btn type4">닫기</a></p>
 </div>
