<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="t1" value="�α���" />
<c:set var="t2" value="����������" />
<table width="100%">
	<tr>

		<c:forEach items="${data.topMenu }" var="mm">

			<c:if test='${loginuser.user_id == null && mm.korName != "����������"}'>
				<td><a href="${data.depth}${mm.name}/${mm.url }/list">${mm.korName }</a></td>
			</c:if>
			<c:if test="${loginuser.user_id != null}">
				<c:if test='${ mm.korName != "�α���" }'>
					<c:if test='${ mm.korName != "ȸ������"}'>
						<td><a href="${data.depth}${mm.name}/${mm.url }/list">${mm.korName }</a></td>
					</c:if>
				</c:if>
			</c:if>
		</c:forEach>
		<td><c:if
				test="${loginuser.user_id != null && loginuser.grade eq 'admin'}">
				<a href="${data.depth}manager/user/list">�����ڸ޴�</a>
			</c:if></td>



		<td><c:if test="${loginuser.user_id != null}">
${ loginuser.user_name } �� �ȳ��ϼ���<a
					href="${data.depth}login/login/logout">�α׾ƿ�</a>
			</c:if></td>




	</tr>
</table>

<div class="header">
	<div class="bx_tp">
		<div class="con">
			<h1>
				<a href="#"><img src="../../../resources/img/logo.png" alt="���⿩"></a>
			</h1>
			<div class="bx_login">
			<c:if test="${loginuser.user_id == null}">
				<a href="${data.depth}login/login/list" class="btn type1">�α���</a>
				<a href="${data.depth}user/join/list" class="btn type2">ȸ������</a>
			</c:if>
			<c:if test="${loginuser.user_id != null}">
				${ loginuser.user_name } �� �ȳ��ϼ���.
				<a href="${data.depth}login/login/logout" class="btn type1">�α׾ƿ�</a>
			</c:if>
			</div>
		</div>
	</div>
	<div class="gnb">
			<ul>
				<li><a href="${data.depth}shop/all/list">��ü</a></li>
				<li><a href="${data.depth}shop/chicken/list">ġŲ</a></li>
				<li><a href="${data.depth}shop/pizza/list">����</a></li>
				<li><a href="${data.depth}shop/china/list">�߱���</a></li>
				<li><a href="${data.depth}shop/jok/list">����/����</a></li>
				<li><a href="${data.depth}shop/ni/list">�߽�</a></li>
				<li><a href="${data.depth}shop/jp/list">�Ͻ�</a></li>
				<li><a href="${data.depth}shop/hs/list">�ѽ�</a></li>
				<li><a href="${data.depth}shop/bs/list">�н�</a></li>
				<li><a href="${data.depth}shop/ps/list">�н�ƮǪ��</a></li>
			</ul>
		</div>
</div>