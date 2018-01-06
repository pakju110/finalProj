<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
${data.dd.orderno}
 --%>
 
 ¹¹ ½Ã¹ß
 
 ${loginuser.user_id}
 
 <c:forEach items="${data.cart}" var="dddd">
 <p>${dddd.name }</p>
 </c:forEach>
 