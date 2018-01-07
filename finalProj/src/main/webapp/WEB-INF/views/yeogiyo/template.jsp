<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../../../resources/js/layout.css" rel="stylesheet">

<script type="text/javascript" src="../../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../../resources/js/common.js"></script>
</head>
<body>

	<div class="wrap">
		<jsp:include page="inc/top.jsp" />
		<p>
			����޴��ô�<br>
			<c:if test="${data.subMenu!=null}">
				<jsp:include page="inc/sub.jsp" />
			</c:if>
		</p>
		<div class="contents">

			<div class="con">
				<jsp:include page="${data.cate1 }/${data.service }.jsp" />

			</div>
		</div>
		<div class="footer">
			<div class="con">
				<jsp:include page="inc/bottom.jsp" />
				<a href="#">ȸ��Ұ�</a> <a href="${data.depth}notice/notice/list">������</a>
			</div>
		</div>
	</div>
	<div class="test_slider">�����̵� ����</div>
	<div class="home">
		<ul>
			<li><a href="#">��ü</a></li>
			<li><a href="#">ġŲ</a></li>
			<li><a href="#">����</a></li>
			<li><a href="#">�߱���</a></li>
			<li><a href="#">����/����</a></li>
			<li><a href="#">�߽�</a></li>
			<li><a href="#">���&amp;ȸ&amp;�Ͻ�</a></li>
			<li><a href="#">�ѽ�</a></li>
			<li><a href="#">�н�</a></li>
			<li><a href="#">�н�ƮǪ��</a></li>
		</ul>
	</div>
	
	<input type="text" id="post1"> - <input type="text" id="post2">
<input type="button" onclick="openDaumPostcode()" value="�����ȣ ã��"><br>
<input type="text" id="addr">
<input type="text" id="addr2">
 ��������
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script>
    function openDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ְ�, Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById('post1').value = data.postcode1;
                document.getElementById('post2').value = data.postcode2;
                document.getElementById('addr').value = data.address;
 
                //��ü �ּҿ��� ���� ���� �� ()�� ���� �ִ� �ΰ������� �����ϰ��� �� ���,
                //�Ʒ��� ���� ���Խ��� ����ص� �ȴ�. ���Խ��� �������� ������ �°� �����ؼ� ��� �����ϴ�.
                //var addr = data.address.replace(/(\s|^)\(.+\)$|\S+~\S+/g, '');
                //document.getElementById('addr').value = addr;
 
                document.getElementById('addr2').focus();
            }
        }).open();
    }
</script>
</body>

</html>

