

<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

PersonVO vo = new PersonVO();
vo.setUser_id(request.getParameter("memId"));
vo.setUser_pw(request.getParameter("memPw"));


String msg = "id�� pw�� ��ġ���� �ʽ��ϴ�.";
String url = "../../center/first/index.jsp";


PersonVO res = new PersonDAO().login(vo);

if(res!=null)
{
	session.setAttribute("mem", res);
	msg = res.getUser_name()+"�� �α��� �Ǿ����ϴ�.";
	
}else{
	
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	
	url +="?memId="+vo.getUser_id();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
</body>
</html> --%>