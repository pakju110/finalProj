<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<table border=1>
<br>
<br>
���������� 7�ϱ����� ǥ�õ˴ϴ�.
<br>
<br>

<tr>
<td>�ֹ� ��ȣ</td>
<td>�ֹ� ����</td>
<td>���Ը�</td>
<td>�޴�</td>
<td>����</td>
<td>�����ݾ�</td>
<td>���� ���</td>



</tr>

<c:forEach items="${data.dd2}" var="pay" >
<tr>
<td>${pay.orderno }</td>
<td><fmt:formatDate value="${pay.reg_date}" pattern="yyyy-MM-dd"/></td>
<td>${pay.rest_id }</td>
<td>${pay.name }</td>
<td>${pay.cnt }</td>
<td>${pay.price }</td>
<td>${pay.payhow }</td>


</tr>
</c:forEach>

</table>
