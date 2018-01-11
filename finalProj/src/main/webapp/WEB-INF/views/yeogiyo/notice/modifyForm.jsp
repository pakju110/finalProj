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
				<a href="modifyForm?no=${data.dd.no}" class="btn type4">�ʱ�ȭ</a>
				<a href="list" class="btn type5">�������</a>
			</td>
		</tr>
	</table>
</form>
