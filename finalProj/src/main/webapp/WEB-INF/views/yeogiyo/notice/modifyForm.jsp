<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
function fileDelete(){
	if(confirm("������ �����Ͻðڽ��ϱ�?"))
	{
		fmt.action="fileDelete"
		fmt.submit()
	}
}

</script>

<form name="fmt" action="modify" method="post" enctype="multipart/form-data">
<input type="hidden" name="no" value="${data.dd.no }" />
<input type="hidden" name="id" value="${data.dd.id }" />
	<table border="">
	
		<tr>
			<td>����</td>
			<td><input type="text" name="title"  value="${data.dd.title }" /></td>
		</tr>
		<tr>
			<td>����</td>	
			<td>
			<c:choose>
				<c:when test="${data.dd.sysfile==null || data.dd.sysfile==''}">
					<input type="file" name="ff" />
				</c:when>
				<c:otherwise>
				<input type="hidden" name="sysfile" value="${data.dd.sysfile}" />
				<a href="javascript:fileDelete();">���ϻ���</a>
				${data.dd.sysfile}
				</c:otherwise>
			</c:choose>
		
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td><textarea cols="40" rows="5" name="content" >${data.dd.content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">

				<input type="submit" value="����" />				
				<a href="modifyForm?no=${data.dd.no}">�ʱ�ȭ</a>
				<a href="list">�������</a>
			</td>
		</tr>
	</table>
</form>
