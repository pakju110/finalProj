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
			<td>�����${data.dd.no}������</td>
			

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
				<input type="submit" value="��û�ϱ�" />
					<a href="../../mypage/cf/cf">���</a></td>
			</tr>
		</table>
	</form>
</body>
</html>