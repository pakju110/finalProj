<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

function reser(nnn){
	var mm = document.getElementById("mm");
	
	location.href="cf2?nowMM="+mm.value+"&no="+nnn;
	
}
function mmChange(){
	var mm = document.getElementById("mm");
	
	location.href="cf?nowMM="+mm.value;
}

</script>

<jsp:include page="navi3.jsp" />

<input type="hidden" name="rest_id" value="${loginuser.user_id}">
<table class="e_table2">
	<tr>
		<th class="join_t1">광고가능여부</th>
		<td class="join_t2"><c:forEach begin="1" end="3" var="no">
				<c:set var="noNum" value="true" />
				<c:forEach items="${data.dd.isNums }" var="nums">
					<c:if test="${no==nums.no }">
						<c:set var="noNum" value="false" />

						<img src="../../../resources/cf/${nums.cf_sysimg }" alt="불러오기실패">
					</c:if>

				</c:forEach>
				<c:if test="${noNum }">

					<input type="button" onclick="reser(${no })" value="${no }번자리 신청가능">
				</c:if>
			</c:forEach></td>


	</tr>
	<tr>
		<th>광고 희망년월</th>
		<td><select name="sinchung" onchange="mmChange()" id="mm">
				<c:forEach items="${data.dd.dds }" var="dds">
					<c:set var="sss" value="" />
					<option value="${dds }"
						<c:if test="${dds==data.dd.nowMM }">
					selected="selected"
					</c:if>>${dds }</option>
				</c:forEach>

		</select></td>
	</tr>


	<tr>
		<th>일시</th>
		<td>1개월</td>
	</tr>

	<tr>
		<th>비용</th>
		<td>${50000 }원</td>
	</tr>
</table>


