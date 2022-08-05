<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					<th>이름</th>
					<th>핸드폰</th>
					<th>이메일</th>
					<th>문의분류</th>
					<th>제목</th>
					<th>내용</th>
					<th>첨부파일</th>
					<th>답변수신</th>
				</tr>
				
				<c:forEach items="${InquiryMembers}" var="dto3" begin="0" end="10">
					<tr>
						<td>${dto3.inum}</td>
						<td>${dto3.fk_mid}</td>
						<td>${dto3.mname}</td>
						<td>${dto3.mphone}</td>
						<td>${dto3.memail}</td>
						<td>${dto3.iselect1}</td>
						<td>${dto3.ititle}</td>
						<td>${dto3.icontent}</td>
						<td>${dto3.ifile}</td>
						<td>${dto3.iselect2}</td>
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
</body>
</html>