<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="navi3.jsp" />

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
	<table class="e_table2">
	
		<tr>
			<th class="join_t1">����</th>
			<td class="join_t2"><input type="text" name="title"  value="${data.dd.title }" /></td>
		</tr>
		<tr>
			<th>����</th>	
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
			<th>����</th>
			<td><textarea cols="40" rows="5" name="content" >${data.dd.content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">

					<button class="btn type4">����</button>		
				<a href="noticemodifyForm?no=${data.dd.no}" class="btn type4">�ʱ�ȭ</a>
				<a href="qnalist" class="btn type5">�������</a>
			</td>
		</tr>
	</table>
</form>
