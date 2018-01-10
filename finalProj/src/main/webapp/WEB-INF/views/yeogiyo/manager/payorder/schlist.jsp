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

<body>
<table class="e_table2">
	
	
		
		<tr>
		
		<td  class="join_t1" colspan="3">
		
		
		<form action="schlist" method="post">
		<select name="year1">
		<option value="2017">2017</option>
		<option value="2018">2018</option>
		 </select>
		 년
		<select name="month1">
		<c:forEach begin="1" end="12" step="1" var="month" varStatus="noo">
		<c:if test="${noo.index < 10 }">
			<option value="0${month }">0${month }</option>
		</c:if>
		<c:if test="${noo.index >= 10 }">
		<option value="${month }">${month }</option>
		</c:if>
		</c:forEach>
		</select>
		월
		~
		
		<select name="year2">
		<option value="2017">2017</option>
		<option value="2018">2018</option>
		 </select>
		  년
		<select name="month2">
		
		<c:forEach begin="1" end="12" step="1" var="month" varStatus="noo">
		<c:if test="${noo.index < 10 }">
			<option value="0${month }">0${month }</option>
		</c:if>
		<c:if test="${noo.index >= 10 }">
		<option value="${month }">${month }</option>
		</c:if>
		</c:forEach>
		</select>
		월
		
	 <button class="btn type2">검색</button>
		</form>
		</td>
		</tr>
		
			<tr>
			<td>가게명</td>
			<td>날짜</td>
			<td>가격</td>
		</tr>
		
		
		<c:set value="difngidfgon444" var="rest_id"/>
		<c:set value="0" var="price"/>	
		<c:forEach items="${data.dd}" var="vo" varStatus="no">
			
			<c:if test="${vo.rest_id!=rest_id}">
				
				<c:if test="${ price!=0}">
					<tr>
						<td colspan="2">${rest_id}</td>
						
						<td>${price }</td>
			 
					</tr>
					<c:set value="0" var="price"/>
			</c:if>
				<c:set value="${vo.rest_id}" var="rest_id"/>
			</c:if>
			
			<tr>
				<td>${vo.rest_id}</td>
				<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd"/></td>
				<td>${vo.price }</td>
	 
			</tr>
			
			<c:set value="${price+vo.price }" var="price"/>
			
			<c:if test="${no.index==data.dd.size()-1}">
				<tr>
						<td colspan="2">${rest_id}</td>
						
						<td> ${price }</td>
			 
				</tr>
			</c:if>
			
			
		</c:forEach>

	</table>
</body>
</html>