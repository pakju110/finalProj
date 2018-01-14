<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<input type="hidden" value="${loginuser.user_id}" name="id" />
<%-- <table border=1>
	<tr>
			<td>GNO</td><td>${data.dd.gno }</td>
		</tr>
	<tr>
		<td>��ȣ</td>
		<td>${data.dd.no }</td>
	</tr>
	<tr>
		<td>����</td>
		<td>${data.dd.title }</td>
	</tr>
	<tr>
		<td>��ȸ��</td>
		<td>${data.dd.cnt }</td>
	</tr>
	<tr>
		<td>�ۼ���</td>
		<td><fmt:formatDate value="${data.dd.regdate }"
				pattern="yyyy-MM-dd HH:mm" /></td>
	</tr>
	<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
		<tr>
			<td>����</td>
			<td>${data.dd.orifile} <img alt=""
				src="../../../resources/img/${data.dd.orifile}">
			</td>
		</tr>
	</c:if>
	<tr>
		<td>����</td>
		<td>${data.dd.content}</td>
	</tr>
	<tr>
		<td colspan="2" align="right"></td>
	</tr>
</table>
 --%>

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

<table class="e_table2">
	<tbody>
		<tr>
			<th class="join_t1"><p class="th_rel">
					<label for="et4">����</label>
				</p></th>
			<td class="join_t2" colspan="3">${data.dd.title }</td>
		</tr>
		<tr>
			<th><p class="th_rel">
					<label for="et6">��ȸ��</label>
				</p></th>
			<td>${data.dd.cnt }</td>
			<th><p class="th_rel">
					<label for="et6">�ۼ���</label>
				</p></th>
			<td><fmt:formatDate value="${data.dd.regdate }"
					pattern="yyyy-MM-dd HH:mm" /></td>
		</tr>
		<tr class="evn_textbox">
			<td colspan="4"><c:if
					test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
					<img alt="" src="../../../resources/img/${data.dd.orifile}">
				</c:if>
				<div>${data.dd.contentBR}</div></td>
		</tr>

	</tbody>
</table>
<div class="bx_btn notice">
	<c:if test="${loginuser.user_id == 'admin' && data.dd.re == 0}">
	<a href="replyForm?no=${data.dd.no }" class="btn type4">�亯</a>
	</c:if>
	<c:if
		test="${loginuser.user_id == 'admin' || loginuser.user_id == data.dd.id}">
		<a href="deleteForm?no=${data.dd.no }" class="btn type4">����</a>
		<c:if test="${loginuser.user_id == data.dd.id && data.dd.re == 0}">
      <a href="modifyForm?no=${data.dd.no }" class="btn type4">����</a>
   </c:if>
	</c:if>
	<a href="list" class="btn type5">����Ʈ��</a>
</div>