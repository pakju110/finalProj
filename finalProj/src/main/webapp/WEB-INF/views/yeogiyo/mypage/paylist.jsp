<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table border=1>

<tr>
<td>�ֹ� ����</td>
<td>�ֹ� ��ȣ</td>
<td>���Ը�</td>
<td>�޴�</td>
<td>����</td>
<td>�����ݾ�</td>
<td>���� ���</td>



</tr>

<c:forEach items="${data.dd2}" var="pay" >
<tr>
<td>${pay.reg_date }</td>
<td>���߿� �޾ƿ� �ֹ���ȣ</td>
<td>${pay.rest_id }</td>
<td>${pay.menu }</td>
<td>${pay.count }</td>
<td>${pay.price*pay.count }</td>
<td>${pay.payhow }</td>


</tr>
</c:forEach>

</table>
