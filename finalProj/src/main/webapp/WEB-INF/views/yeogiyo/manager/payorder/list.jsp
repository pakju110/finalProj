<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<table class="e_table2">



	<tr>
		<td class="join_t1" colspan="3">
			<form action="schlist" method="post">
				<select name="year1">
					<option value="2017">2017</option>
					<option value="2018">2018</option>
				</select> 년 <select name="month1">
					<c:forEach begin="1" end="12" step="1" var="month" varStatus="noo">
						<c:if test="${noo.index < 10 }">
							<option value="0${month }">0${month }</option>
						</c:if>
						<c:if test="${noo.index >= 10 }">
							<option value="${month }">${month }</option>
						</c:if>
					</c:forEach>
				</select> 월 ~ <select name="year2">
					<option value="2017">2017</option>
					<option value="2018">2018</option>
				</select> 년 <select name="month2">

					<c:forEach begin="1" end="12" step="1" var="month" varStatus="noo">
						<c:if test="${noo.index < 10 }">
							<option value="0${month }">0${month }</option>
						</c:if>
						<c:if test="${noo.index >= 10 }">
							<option value="${month }">${month }</option>
						</c:if>
					</c:forEach>
				</select> 월

				<button class="btn type2">검색</button>
			</form>
		</td>
	</tr>
	<tr>
		<td>가게명</td>
		<td>날짜</td>
		<td>가격</td>
	</tr>

	<c:set var="sum" value="0" />
	<c:forEach items="${data.dd}" var="vo">
		<c:set var="pricetotal" value="${vo.price + sum}" />
		<tr>
			<td>${vo.rest_id}</td>
			<td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd" /></td>
			<td>${vo.price }</td>

		</tr>
	</c:forEach>


</table>
