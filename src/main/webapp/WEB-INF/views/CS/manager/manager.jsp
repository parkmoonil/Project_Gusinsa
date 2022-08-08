<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager_Members Page</title>
<link rel="stylesheet" href="resources/css/cs/manager.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="manager_main">
<%@include file="../cs_nav/manager_nav.jsp" %>
	<div class="manager_board">
		<div class="manager_main_title">
			<h3>Manager_Members Page</h3>
		</div>
		
		<div>
			<table>
				<tr>
					<th>번호</th>
					<th>상호명</th>
					<th>브랜드명</th>
				</tr>
				
			
			</table>
		</div>
		
			<hr />
			${totRowcnt }
	<%-- 		<form action="EnterBoard" method="post">
				<c:if test="${searchVO.totPage>1 }">
			      <c:if test="${ searchVO.page>1}">
			     	 <a href="manager_enter?page=1">[처음]</a>
			     	 <a href="manager_enter?page=${searchVO.page-1 }">[이전]</a>
			      </c:if>
      			<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
			         <c:choose>
			            <c:when test="${i eq searchVO.page }">
			               <span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			            </c:when>
			            <c:otherwise>
			               <a href="manager_enter?page=${i }" style="text-decoration: none">${i }</a>  &nbsp;
			      		</c:otherwise>
			         </c:choose>
      			</c:forEach>
					<c:if test="${ searchVO.totPage>searchVO.page}">
				      <a href="manager_enter?page=${searchVO.page+1 }">[다음]</a>
				      <a href="manager_enter?page=${searchVO.totPage }">[마지막]</a>
				    </c:if>
   				</c:if>
			</form> --%>
	</div>
</div> 
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>