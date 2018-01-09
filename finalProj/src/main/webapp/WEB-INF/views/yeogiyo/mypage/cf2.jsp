<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">


/* function mnChange(){
	var mn = document.getElementById("mn");
	

}
 */
</script>
</head>
<body>
	<form action="card " method="post" enctype="multipart/form-data">
	<input type="hidden" name="rest_id" value="${loginuser.user_id}">
		<table border="">
		
			<tr>
			<td><input type="hidden" name="no" value="${data.dd.no}"></td>
			<td>여기요${data.dd.no}번광고</td>
			

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
				<input type="submit" value="신청하기" />
					<a href="../../mypage/cf/cf">취소</a></td>
			</tr>
		</table>
	</form>
</body>
</html>