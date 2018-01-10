<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <table border="">
	<tr>
		<td>�۹�ȣ</td>
		<td>${data.dd.rest_id}</td>
	</tr>
	<tr>
		<td colspan="2"><jsp:include page="menu.jsp" /></td>
	</tr>
	<tr>
		<td>����</td>
		<td>${data.dd.name}</td>
	</tr>
	<tr>
		<td>�� ����</td>
		<td>${data.dd.contents}</td>
	</tr>
	<tr>
		<td>���½ð�</td>
		<td>${data.dd.opentime}</td>
	</tr>
	<tr>
		<td>�����ð�</td>
		<td>${data.dd.closetime}</td>
	</tr>
	<c:if test="${!empty data.dd.sysfile}">
		<tr>
			<td>����</td>
			<td>${data.dd.sysfile}-${data.dd.orifile}<br> <img alt=""
				src="../../../resources/up/${data.dd.sysfile}">
			</td>
		</tr>
	</c:if>
	<tr>
		<td colspan="2" align="right"><a
			href="deleteForm?rest_id=${data.dd.rest_id}">ȸ��Ż��</a> <a
			href="modifyForm?rest_id=${data.dd.rest_id}">ȸ������</a> <a href="list">����Ʈ��</a>
			<a href="menuinsertform?rest_id=${data.dd.rest_id}&cnt=0">�޴�����</a> <a
			href="menumodifyForm?rest_id=${data.dd.rest_id}">�޴�����</a></td>
	</tr>
</table>
<c:if test="${data.review != null}">
	<c:forEach items="${data.review}" var="review">
		<p>�亯 : ${review.title}</p>
	</c:forEach>
</c:if>
<div>
	<c:if test="${reviewgrade }">
		<br>��۱��� ����!!!!!!!!!!!!!!!!!!!!!!<br>
	</c:if>
	<form action="reviewinsert?id=${data.dd.rest_id }" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="rest_id" value="${data.dd.rest_id}">
		<input type="hidden" name="user_id" value="${loginuser.user_id}">
		<select name="star">
			<option value="0">������ �������ּ���.</option>
			<option value="0">��</option>
			<option value="1">��</option>
			<option value="2">�ڡ�</option>
			<option value="3">�ڡڡ�</option>
			<option value="4">�ڡڡڡ�</option>
			<option value="5">�ڡڡڡڡ�</option>
		</select> <input type="text" name="title"> <input type="file" name="ff">
		<textarea name="contents"></textarea>
		<input type="submit" value="�����ض�" />
	</form>
</div>
 --%>


<div class="shop view both">
	<div class="left">
		<div class="bx_top both">
			<div class="left bx_img">
				<img alt="" src="../../../resources/up/${data.dd.sysfile}" width="175px">
			</div>
			<div class="left">
				<p>${data.dd.name}</p>
				<p>
					<c:forEach begin="1" end="${data.dd.star}">
						<span class="ft_yel">��</span>
					</c:forEach>
					<c:if test="${data.dd.star == 0}">��</c:if>
				</p>
				<p>
					OPEN <c:if test="${data.dd.opentime < 10 }">0</c:if>${data.dd.opentime}:00
					~
					CLOSE<c:if test="${data.dd.closetime < 10 }">0</c:if>${data.dd.closetime}:00
				</p>
				<p>${data.dd.addr},${data.dd.addr2}</p>
			</div>
			<c:if test="${data.dd.rest_id == loginuser.user_id }">
				<div class="bx_btn txt_right">
				<a href="menuinsertform?rest_id=${data.dd.rest_id}&cnt=0" class="btn type4">�޴�����</a> 
				<a href="menumodifyForm?rest_id=${data.dd.rest_id}" class="btn type4">�޴�����</a>
</div>
			</c:if>
		</div>
		<p class="menu_h">MENU</p>
		<div class="bx_cen">
			<c:forEach items="${data.dd2}" var="me">
				<c:if test="${me.state == 'on'}">
					<div class="menu">
						<a href="javascript:add_item(${me.no})"> 
							<c:if
								test="${me.sysfile != null }">
								<span class="img"><img
									src="../../../resources/up/${me.sysfile}"></span>
							</c:if> <span class="txt"> <span class="bx">${me.name }</span> <span
								class="bx txt_right">${me.price }��</span>
						</span>
						</a>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div class="right">
		<p class="h">�ֹ���</p>
		<div class="bx_con">
			<form name="option" method="post" action="orderoption">
				<c:if test="${loginuser.user_id != null && data.cart != null }">
					<c:if test="${data.cart[0].name != null }">


						<p class="bx_btn txt_right">
							<a href="javascript:remove_all()" class="btn type5">��ü����</a>
						</p>
						<c:forEach items="${data.cart}" var="cart" varStatus="no">
							<div class="cart">

								<div class="txt">${cart.name}</div>
								<p>
									<a href="javascript:remove_item(${cart.no})"><img
										src="../../../resources/img/ico/btn_mainus.gif" /></a>
									${cart.cnt} <a href="javascript:add_item(${cart.no})"><img
										src="../../../resources/img/ico/btn_plus.gif" /></a>
								</p>
							</div>
						</c:forEach>
						<a onclick="pay_submt()" class="btn type6">�ֹ��ϱ�</a>


					</c:if>
				</c:if>
			</form>
			<c:if test="${loginuser.user_id == null || data.cart == null }">
				<p>�ֹ����� ��� �޴��� �����ϴ�.</p>
			</c:if>
		</div>

	</div>
</div>
<div class="bx_review">
	<p class="h">�ı�</p>
	<c:if test="${data.review != null}">

		<c:forEach items="${data.review}" var="review">
			<div class="review">
				<p>${review.user_id }
					�� <span class="right"><fmt:formatDate
							value="${review.reg_date }" pattern="yyyy-MM-dd HH:mm" /></span>
				</p>
				<p>
					<c:forEach begin="1" end="${review.star}">
						<span class="ft_red">��</span>
					</c:forEach>
					<c:if test="${review.star == 0}">��</c:if>
				</p>
				<p>
					<c:if test="${review.sysfile != null }">
						<span class="img"><img
							src="../../../resources/up/${review.sysfile}"></span>
					</c:if>
				</p>
				<div class="txt_con">${review.contents }</div>
			</div>
		</c:forEach>

	</c:if>

	<div class="review_form">
		<c:if test="${reviewgrade}">
			<form action="reviewinsert?rest_id=${data.dd.rest_id }" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="rest_id" value="${data.dd.rest_id}">
				<input type="hidden" name="user_id" value="${loginuser.user_id}">
				<p>
					<select name="star" class="select">
						<option value="0">������ �������ּ���.</option>
						<option value="0">��</option>
						<option value="1">��</option>
						<option value="2">�ڡ�</option>
						<option value="3">�ڡڡ�</option>
						<option value="4">�ڡڡڡ�</option>
						<option value="5">�ڡڡڡڡ�</option>
					</select>
				</p>
				<p class="bx_file">
					<input type="file" name="ff" >
				</p>
				<p>
					<textarea name="contents" class="contents"></textarea>
				</p>
				<p class="bx_btn txt_right">
					<button class="btn type5">�ۼ�</button>
				</p>
			</form>
		</c:if>

	</div>
</div>