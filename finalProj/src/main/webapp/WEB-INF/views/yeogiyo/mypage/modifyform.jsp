<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


<script type="text/javascript">
function fileDelete(){
	if(confirm("������ �����Ͻðڽ��ϱ�?"))
	{
		fmt.action="fileDelete"
		fmt.submit()
	}
	
}


</script>



</head>
<body>
	<form action="modify" method="post">
	<input type="hidden" name="user_id" value="${loginuser.user_id}" />
		<table border="">
		
			<tr>
				<td>pw</td>
				<td><input type="text" name="user_pw" /></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="user_phone"
					value="${loginuser.user_phone}" /></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="user_address"
					value="${loginuser.user_address}" /></td>
			</tr>
			<%-- <c:if test="${data.dd.grade ne 'u' && data.dd.grade ne 'admin'}">
			<tr>
	<td>����</td>	
			<td>
			<c:choose>
				<c:when test="${data.dd.orifile==null || data.dd.orifile==''}">
					<input type="file" name="ff" />
				</c:when>
				<c:otherwise>
				${data.dd.orifile}
				<input type="hidden" name="ff" value="${data.dd.orifile}" />
				<input type="file" name="ff" />
				</c:otherwise>
			</c:choose>
		
			</td>
		</tr>
</c:if> --%>

			<tr>

				<td colspan="2" align="center"><input type="submit" value="����" />
					<a href="view?user_id=${loginuser.user_id}">�ڷ�</a></td>
			</tr> 
		</table>
	</form>
</body>
</html>