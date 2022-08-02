<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css">
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/faq.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="cs_nav/cs_left_nav.jsp" %>   
    <div class="cs_main_board">
       <div class="line"></div>
       <h2>BEST FAQ</h2>
       <table>
            <tr>
                <th class="faqboard_header">분류</th>
                <th>제목</th>
            </tr>
            <c:forEach items="${faqboard}" var="dto" begin="0" end="5">
				<tr>
					<td class="fheader">
						${dto.fheader}
					</td>
					<td>${dto.ftitle }</td>
				</tr>
			</c:forEach>
        </table>
        <div class="line"></div>
    	<h2>공지사항</h2>
        <table>
			<tr>
				<th class="noticeboard_title">제목</th>
				<th class="noticeboard_date">작성일자</th>
			</tr>
			<c:forEach items="${noticeboard2}" var="dto" begin="0" end="5">
				<tr>
					<td>
					<a href="content_view?nnum=${dto.nnum }">${dto.ntitle}</a>
					</td>
					<td class="noticeboard_td_date">${dto.ndate }</td>
				</tr>
			</c:forEach>
		</table>
    </div>
</div>
<a href="noticeboard">notice</a>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>