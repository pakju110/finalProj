<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=true"></script>
	<c:if test="${loginuser.grade == 'w' }">
	<form action="reg" method="post" enctype="multipart/form-data" name="regshop" id="regshop">
		<input type="hidden" name="grade" value="w"/>
		<table class="e_table2">
			<tr>
				<th class="join_t1">�귣��</th>
				<td class="join_t2"><input type="text" name="brand" /><input type="hidden" name="rest_id" value="${loginuser.user_id }" /></td>
			</tr>
			<tr>
				<th>type</th>
				<td>
					<select name="type">
						<option value="chicken">ġŲ</option>
						<option value="pizza">����</option>
						<option value="china">�߱���</option>
						<option value="jok">����/����</option>
						<option value="ni">�߽�</option>
						<option value="jp">�Ͻ�</option>
						<option value="hs">�ѽ�</option>
						<option value="bs">�н�</option>
						<option value="ps">�н�ƮǪ��</option>
					</select>
					
				</td>
			</tr>
			<tr>
				<th>�̸�</th>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<th>��ȭ��ȣ</th>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<th>�ּ�</th>
				<td><input type="text" id="addr" name="addr"  onclick="openDaumPostcode()"><br>
					���ּ� : <input type="text" id="addr2" name="addr2" >
					<!-- <input type="hidden" name="xlet" id="xlet" /><input type="hidden" name="ylng" id="ylng" /> -->
					</td>
			</tr>
			<tr>
				<th>���½ð�</th>
				<td>
					<select name="opentime">
						<c:forEach begin="0" end="24" varStatus="i" >
							<option value="${i.index}">${i.index}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>�����ð�</th>
				<td>
					<select name="closetime">
						<c:forEach begin="0" end="24" varStatus="i" >
							<option value="${i.index}">${i.index}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>����</th>
				<td>
				<textarea name="contents" class="textarea"></textarea>
				</td>
			</tr>
			<tr>
				<th>����</th>
				<td><input type="file" name="ff" /></td>
			</tr>
		</table>
		<div class="bx_btn ptb10 txt_right"><a href="list" class="btn type5">���</a><a href="#a" id="addcheck" class="btn type4">����</a></div>
	</form>
	</c:if>
	