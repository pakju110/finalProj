<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="header">
	<div class="bx_tp">
		<div class="con">
			<h1>
				<a href="${data.depth}shop/all/list"><img src="../../../resources/img/logo.png" alt="���⿩"></a>
			</h1>
			<div class="bx_login">
			<c:if test="${loginuser.user_id == null}">
				<a href="${data.depth}login/login/list" class="btn type1">�α���</a>
				<a href="${data.depth}user/join/list" class="btn type2">ȸ������</a>
			</c:if>
			<c:if test="${loginuser.user_id != null}">
				<a  onclick="menu()" id="btn_gnb"><span class="bx">
				<span></span><span></span><span></span>
			</span></a>
				<ul class="bx_mymenu"  id="Gnb">
					<li><a href="${data.depth}mypage/mypage/list">����������</a></li>
					
					<c:if
				test="${loginuser.user_id != null && loginuser.grade eq 'admin'}">
				<li><a href="${data.depth}manager/user/list">�����ڸ޴�</a></li>
				
			</c:if>
			<li><a href="${data.depth}login/login/logout" class="">�α׾ƿ�</a></li>
				</ul>
			</c:if>
			</div>
		</div>
	</div>
	<c:if test="${data.cate1 == 'shop' }">
		<div class="bx_serch">
			<div class="bx_con">
				<form action="serchlist" name="adressserch" method="post" id="adressserch">
					<a href="javascript:;" class="btn_xyserch"><img src="../../../resources/img/ico/btn_serch1.png"></a>
					<p><input type="text" id="serch" name="serch" class="serch_input" value="${param.pramaddr }"><a href="javascript:;" class="btn_serch btn_addrserch">�˻�</a></p>
				</form>
			</div>
		</div>
	</c:if>
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