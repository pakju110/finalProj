<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<ul class="navi3">
	<c:forEach items="${data.subMenu }" var="mm">
		<c:choose>
			<c:when test="${mm.name != data.cate2 }">
				<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:when>
			<c:otherwise>
				<li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>





<br>
<br>
���������� 7�ϱ����� ǥ�õ˴ϴ�.
<br>
<br>

<table class="e_table2">
		<tbody>
			<tr>

				<th class="join_t1"><p class="th_rel">
						<label for="et4">�ֹ���ȣ</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">�ֹ�����</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">���Ը�</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">�޴�</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">����</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">�����ݾ�</label>
					</p></th>
					
					<th class="join_t1"><p class="th_rel">
						<label for="et4">���� ���</label>
					</p></th>		
			</tr>
			
			<c:forEach items="${data.dd2}" var="pay">
			<tr>
				<td>${pay.orderno}</td>
				<td><fmt:formatDate value="${pay.reg_date}" pattern="yyyy-MM-dd"/></td>	
				<td>${pay.rest_id }</td>
				<td>${pay.name }</td>
				<td>${pay.cnt }</td>
				<td>${pay.price }</td>
				<td>${pay.payhow }</td>			
			</tr>
			
			</c:forEach>
		</tbody>
	</table>


