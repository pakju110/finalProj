<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
function fileDelete(){
	if(confirm("파일을 삭제하시겠습니까?"))
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
			<th class="join_t1">제목</th>
			<td class="join_t2"><input type="text" name="title"  value="${data.dd.title }" /></td>
		</tr>
		<tr>
			<th>파일</th>	
			<td>
			<c:choose>
				<c:when test="${data.dd.sysfile==null || data.dd.sysfile==''}">
					<input type="file" name="ff" />
				</c:when>
				<c:otherwise>
				<input type="hidden" name="sysfile" value="${data.dd.sysfile}" />
				<a href="javascript:fileDelete();">파일삭제</a>
				${data.dd.sysfile}
				</c:otherwise>
			</c:choose>
		
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="40" rows="5" name="content" >${data.dd.content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">

				<button class="btn type4">수정</button>			
				<a href="modifyForm?no=${data.dd.no}" class="btn type4">초기화</a>
				<a href="list" class="btn type5">목록으로</a>
			</td>
		</tr>
	</table>
</form>
