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
			<h3>Manager_Commu</h3>
		</div>
		
		<div>
			<table>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>핸드폰</th>
					<th>이메일</th>
					<th>문의유형</th>
					<th>구입처</th>
					<th>답변방법</th>
					<th>SMS수신여부</th>
					<th>제목</th>
					<th>내용</th>
					<th>첨부파일</th>
				</tr>
				
				<c:forEach items="${CommuMembers}" var="cm" begin="0" end="10">
					<tr>
						<td>${cm.cnum}</td>
						<td>${cm.fk_mid}</td>
						<td>${cm.mname}</td>
						<td>${cm.mphone}</td>
						<td>${cm.memail}</td>
						<td>${cm.cselect1}</td>
						<td>${cm.cselect2}</td>
						<td>${cm.cselect3}</td>
						<td>${cm.cselect4}</td>
						<td>${cm.ctitle}</td>
						<td>${cm.ccontent}</td>
						<td>
							<a href="Commudownload?p=resources/upload/&c=${cm.cfile }
							">${cm.cfile }</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
			<hr />
			${totRowcnt }
			<form action="CommuMembers" method="post">
				<c:if test="${searchVO.totPage>1 }">
			      <c:if test="${ searchVO.page>1}">
			     	 <a href="manager_commu?page=1">[처음]</a>
			     	 <a href="manager_commu?page=${searchVO.page-1 }">[이전]</a>
			      </c:if>
      			<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
			         <c:choose>
			            <c:when test="${i eq searchVO.page }">
			               <span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			            </c:when>
			            <c:otherwise>
			               <a href="manager_commu?page=${i }" style="text-decoration: none">${i }</a>  &nbsp;
			      		</c:otherwise>
			         </c:choose>
      			</c:forEach>
					<c:if test="${ searchVO.totPage>searchVO.page}">
				      <a href="manager_commu?page=${searchVO.page+1 }">[다음]</a>
				      <a href="manager_commu?page=${searchVO.totPage }">[마지막]</a>
				    </c:if>
   				</c:if>
			</form>
	</div>
</div> 
</body>
</html>