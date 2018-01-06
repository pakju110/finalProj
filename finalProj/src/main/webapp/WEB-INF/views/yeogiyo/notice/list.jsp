<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="">
		<tr>
			<td>��ȣ</td>
			<td>ī�װ�</td>
			<td>�ۼ���</td>
			<td>����</td>
			<td>�ۼ���</td>
			<td>��ȸ��</td>
		</tr>
		
<c:forEach items="${data.dd }" var="vo" varStatus="no">	
		<tr>			
			<td>${data.startNum+no.index }</td>			
			<td>${vo.cate}</td>
			<td>${vo.pname}</td>
			<td><a href="detail?no=${vo.no}">${vo.title}</a></td>		
			<td><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></td>
			<td>${vo.cnt }</td>
		</tr>
		
</c:forEach>
<tr>
			<td colspan="4" align="center">

			<c:if test="${data.startPage>1 }">
			<a href="?page=1">[ó������]</a>
			<a href="?page=${data.startPage-1 }">&gt;</a>
			</c:if>
			<c:forEach begin="${data.startPage }" end="${data.endPage }" var="i">
				<c:choose>
					<c:when test="${data.nowPage==i }">[${i }]</c:when>
					<c:otherwise>
						<a href="?page=${i }">${i }</a>	
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${data.endPage<data.totalPage }">
			<a href="?page=${data.endPage+1 }">></a>
			<a href="?page=${data.totalPage }">[����������]</a>
			</c:if>
			</td>
	</tr>	
		<tr>
			<td colspan="6" align="right">
<c:if test="${data.btnGo}">
				<a href="insertForm">�۾���</a>
</c:if>
			</td>					
		</tr>			
	</table>

</body>
</html>