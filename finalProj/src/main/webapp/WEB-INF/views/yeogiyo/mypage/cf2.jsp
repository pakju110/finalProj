<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	

<script type="text/javascript">


/* function mnChange(){
	var mn = document.getElementById("mn");
	

}
 */
</script>
</head>


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


	<form action="card " method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${loginuser.user_id}">
		<table class="e_table2">
		
			<tr>
			<td class="join_t1"><input type="hidden" name="no" value="${data.dd.no}"></td>
			<td class="join_t2">여기요${data.dd.no}번광고</td>
			

			</tr>
			<tr>
			<td>광고 희망년월 </td>
			<td><!-- <select name="sinchung" onchange="mmChange()" id="mn">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select>
				 -->
				 ${data.dd.nowMM }
				 <input type="hidden" readonly="readonly" name="nowMM" value="${data.dd.nowMM }">
			</td>
			</tr>
		
			
			<!-- <tr>
				<td>일시</td>
				<td>최소1개월~최대3개월</td>
			</tr> -->
		
			<tr>
				<td>비용</td>
				<td><input type="hidden" readonly="readonly" name="price" value="50000">50000원</td>
			</tr>
		
		<tr>
			<td>파일</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
		<td>광고용이미지 주의사항</td>
			<td>광고용이미지는 480*240 사이즈에 최적화되어있습니다.<br>
			그 외의경우 제대로 보이지 않을 수 있습니다.</td>
		
		</tr>
			<tr>

				<td colspan="2" align="center">
					<div class="bx_btn center">
						<button class="btn type4">신청하기</button>
						<a href="../../mypage/cf/cf" class="btn type5">취소</a>
					</div>

				</td>
			</tr>
		</table>
	</form>
</body>
