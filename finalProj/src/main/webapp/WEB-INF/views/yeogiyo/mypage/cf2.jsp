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
			<td class="join_t2">�����${data.dd.no}������</td>
			

			</tr>
			<tr>
			<td>���� ������ </td>
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
				<td>�Ͻ�</td>
				<td>�ּ�1����~�ִ�3����</td>
			</tr> -->
		
			<tr>
				<td>���</td>
				<td><input type="hidden" readonly="readonly" name="price" value="50000">50000��</td>
			</tr>
		
		<tr>
			<td>����</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
		<td>������̹��� ���ǻ���</td>
			<td>������̹����� 480*240 ����� ����ȭ�Ǿ��ֽ��ϴ�.<br>
			�� ���ǰ�� ����� ������ ���� �� �ֽ��ϴ�.</td>
		
		</tr>
			<tr>

				<td colspan="2" align="center">
					<div class="bx_btn center">
						<button class="btn type4">��û�ϱ�</button>
						<a href="../../mypage/cf/cf" class="btn type5">���</a>
					</div>

				</td>
			</tr>
		</table>
	</form>
</body>
