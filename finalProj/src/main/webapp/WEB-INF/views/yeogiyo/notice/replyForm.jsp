<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="m_tabs2" class="my5_con">
	<ul class="navi3">
		<c:forEach items="${data.subMenu }" var="mm">
			<c:choose>
				<c:when test="${mm.name != data.cate2 }">
					<li><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li>
				</c:when>
				<c:otherwise><li class="m5_on"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></li></c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
<body>

<form name="fmt" action="replyReg" method="post" enctype="multipart/form-data">
<input type="hidden" name="no" value="${data.dd.no }" />
<input type="hidden" name="gno" value="${data.dd.gno }" />
	<table class="e_table2">
		<tr>
			<td class="join_t1">제목</td>
			<td class="join_t2"><input type="text" name="title"  value="[Re]${data.dd.title}" /></td>
		</tr>
		<tr>
			<td>파일</td>	
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td>
			<textarea cols="40" rows="5" name="content" >			
${data.dd.content}
[Re]--------------		
	
			</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			
				<button class="btn type4">작성</button>
				<a href="replyForm?no=${data.dd.no }" class="btn type4">초기화</a>
				<a href="list" class="btn type5">목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
