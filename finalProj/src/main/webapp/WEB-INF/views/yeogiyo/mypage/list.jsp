<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<jsp:include page="navi3.jsp" />
	
<table class="e_table2">
	<tbody>
		<tr>
			
			<th class="join_t1"><p class="th_rel">
					<label for="et4">ID</label>
				</p></th>
			<td class="join_t2" colspan="3">${loginuser.user_id}</td>
		</tr>
		<tr>
			<th><p class="th_rel">
					<label for="et6">이름</label>
				</p></th>
			<td>${data.dd.user_name}</td>
			<th><p class="th_rel">
					<label for="et6">가입일</label>
				</p></th>
			<td><fmt:formatDate value="${data.dd.reg_date }" pattern="yyyy-MM-dd HH:mm" /></td>
		</tr>
		
		<tr>
			<th><p class="th_rel">
					<label for="et4">전화번호</label>
				</p></th>
			<td colspan="3">${data.dd.user_phone}</td>
		</tr>
		<tr>
			<th><p class="th_rel">
					<label for="et4">주소</label>
				</p></th>
			<td colspan="3">${data.dd.user_address}</td>
		</tr>
		<c:if test="${data.dd.grade ne 'u' && data.dd.grade ne 'admin'}">
			<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}"><tr>
			<td colspan="4">
				<img alt="" src="../../../resources/up/${data.dd.orifile}">
			</td>
		</tr>
		</c:if>
		</c:if>
	</tbody>
</table>
<div class="bx_btn notice"><a href="../modify/modifyform" class="btn type4">수정</a></div>
<%--	<table border="">
		 <tr>
			<td>id</td>
			<td>${loginuser.user_id}</td>
		</tr>
	 <tr>
			<td>가입일</td>
			<td>${data.dd.reg_date}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${data.dd.user_name}</td>
		</tr>

		<tr>
			<td>전화번호</td>
			<td>${data.dd.user_phone}</td>
		</tr>

		<tr>
			<td>주소</td>
			<td>${data.dd.user_address}</td>
		</tr>

		<tr>
			<td>등급</td>
			<td>${loginuser.grade}</td>
		</tr>
		<c:if test="${data.dd.grade ne 'u' && data.dd.grade ne 'admin'}">
			<c:if test="${data.dd.orifile!=null && data.dd.orifile!='null'}">
				<tr>
			<td>파일</td>
			<td>
				${data.dd.orifile}
				<img alt="" src="../../../resources/up/${data.dd.orifile}">
			</td>
			</tr>
			</c:if>
		</c:if>
		<tr>

			<td colspan="2" align="right"><a
				href="deleteForm?user_id=${loginuser.user_id}">회원탈퇴</a> <a
				href="modifyForm?user_id=${loginuser.user_id}">회원수정</a>
			</td>
		</tr>

	</table>

 --%>