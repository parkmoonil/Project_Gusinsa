<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager_Inquiry</title>
<link rel="stylesheet" href="resources/css/cs/manager.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="manager_main">
<%@include file="../cs_nav/manager_nav.jsp" %>
	<div class="manager_board">
		<div class="manager_main_title">
			<h3>Manager_Inquiry</h3>
		</div>
		
		<div>
			<table>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>문의분류</th>					
					<th>제목</th>
					<th>날짜</th>
				</tr>
				
				<c:forEach items="${InquiryMembers}" var="dto3" begin="0" end="10">
					<tr>
						<td>${dto3.inum}</td>
						<td>${dto3.mid}</td>
						<td>${dto3.iselect1}</td>
						<td>
							<a href="manager_inquirydetails?inum=${dto3.inum}">${dto3.ititle}</a>	
						</td>
						<td>${dto3.idate }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
			<hr />
			${totRowcnt }
			<form action="InquiryMembers" method="post">
				<c:if test="${searchVO.totPage>1 }">
			      <c:if test="${ searchVO.page>1}">
			     	 <a href="manager_inquiry?page=1">[처음]</a>
			     	 <a href="manager_inquiry?page=${searchVO.page-1 }">[이전]</a>
			      </c:if>
      			<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
			         <c:choose>
			            <c:when test="${i eq searchVO.page }">
			               <span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			            </c:when>
			            <c:otherwise>
			               <a href="manager_inquiry?page=${i }" style="text-decoration: none">${i }</a>  &nbsp;
			      		</c:otherwise>
			         </c:choose>
      			</c:forEach>
					<c:if test="${ searchVO.totPage>searchVO.page}">
				      <a href="manager_inquiry?page=${searchVO.page+1 }">[다음]</a>
				      <a href="manager_inquiry?page=${searchVO.totPage }">[마지막]</a>
				    </c:if>
   				</c:if>
			</form>
		
  
	</div>
</div> 
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>