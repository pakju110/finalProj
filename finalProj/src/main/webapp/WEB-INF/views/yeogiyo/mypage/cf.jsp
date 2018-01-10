<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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


<body>
	
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
	
	<input type="hidden" name="rest_id" value="${loginuser.user_id}">
		<table class="e_table2">
			<tr>
			<td class="join_t1">광고가능여부</td>
			<td class="join_t2">
			<c:forEach begin="1" end="3" var="no">
				<c:set var="noNum" value="true"/>
					<c:forEach items="${data.dd.isNums }" var="nums">
							<c:if test="${no==nums.no }">
								<c:set var="noNum" value="false"/>
							
							<img src="../../../resources/cf/${nums.cf_sysimg }" alt="불러오기실패">
							</c:if>
						
					</c:forEach>
					<c:if test="${noNum }">
					
						<input type="button" onclick="reser(${no })" value="${no }번자리 신청가능">
					</c:if>
				</c:forEach></td>
			

			</tr>
			<tr>
			<td>광고 희망년월 </td>
			<td><select name="sinchung" onchange="mmChange()" id="mm">
				<c:forEach items="${data.dd.dds }" var="dds">
					<c:set var="sss" value=""/>
					<c:if test="${dds==data.dd.nowMM }">
						<c:set var="sss" value='selected="selected"'/></c:if>
					<option value="${dds }" ${sss }>${dds }</option>
				</c:forEach>
				
				</select>
				
			</td>
			</tr>
		
			
			<tr>
				<td>일시</td>
				<td>1개월</td>
			</tr>
		
			<tr>
				<td>비용</td>
				<td>${50000 }원</td>
			</tr>
		</table>
	
</body>
