<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<body>
<table class="e_table2">
      <tr>
      <td colspan="5" class="join_t1">
         <form action="inpaysch" method="post">
      <select name="year1">
      <option value="2017">2017</option>
      <option value="2018">2018</option>
       </select>
       년
      <select name="month1">
      <c:forEach begin="1" end="12" step="1" var="month" varStatus="noo">
      <c:if test="${noo.index < 10 }">
         <option value="0${month }">0${month }</option>
      </c:if>
      <c:if test="${noo.index >= 10 }">
      <option value="${month }">${month }</option>
      </c:if>
      </c:forEach>
      </select>
      월
      ~
      
      <select name="year2">
      <option value="2017">2017</option>
      <option value="2018">2018</option>
       </select>
        년
      <select name="month2">
      
      <c:forEach begin="1" end="12" step="1" var="month" varStatus="noo">
      <c:if test="${noo.index < 10 }">
         <option value="0${month }">0${month }</option>
      </c:if>
      <c:if test="${noo.index >= 10 }">
      <option value="${month }">${month }</option>
      </c:if>
      </c:forEach>
      </select>
      월
      
      <input type="submit" value="검색">
      </form>
      </td>
      </tr>
      
         <tr>
         <td>신청가게 아이디</td>
         <td>광고신청일</td>
         
         <td>비용</td>
         <td>결제방식</td>
         
         
      </tr>

   <c:forEach items="${data.dd}" var="vo">
         <tr>
            <td>${vo.rest_id}</td>
            <td><fmt:formatDate value="${vo.reg_date}" pattern="yyyy-MM-dd"/></td>
            
            <td>${vo.price}</td>
               <td>${vo.payhow }</td>
            
         </tr>

      </c:forEach>

      
   </table>
</body>
</html>