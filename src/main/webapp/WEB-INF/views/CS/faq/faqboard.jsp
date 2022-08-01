<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/faq.css" />
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %> 
 	<div class=cs_main_board>
	    <div class="line"></div>
	    <div class="faq_search">
	        <h2>FAQ</h2>
	    </div>
	    
	    <table>
	        <tr>
	            <th class="faqboard_header">분류</th>
	            <th class="faqboard_title">제목</th>
	        </tr>
	        <c:forEach items="${faqboard }" var="dto2" begin="0" end="10">
	            <tr>
	                <td>
	                   	${dto2.fheader }
	                </td>
	                <td>${dto2.ftitle }</td>
	            </tr>
	        </c:forEach>
	    </table>
	    <div class="write_button">
	        <a href="faq_writeview">글쓰기</a>
	    </div>
	</div>
</div>   
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>