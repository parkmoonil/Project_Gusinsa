<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css">
<link rel="stylesheet" href="resources/css/cses/board.css" />
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="cs_nav/cs_left_nav.jsp" %>   
    <div class="cs_main_board">
        <div class="line"> </div>
        <table class="cs_table_bestfaq">
            <h3 class="cs_table_title">BEST FAQ</h3>
            <tr>
                <th class="cs_table_row1">분류</th>
                <th>제목</th>
            </tr>
            <tr>
                <td>데이타베이스</td>
                <td>일단적어봄</td>
            </tr>
            <tr>
                <td>데이타베이스</td>
                <td>일단적어봄</td>
            </tr>
            <tr>
                <td>데이타베이스</td>
                <td>일단적어봄</td>
            </tr>
            <tr>
                <td>데이타베이스</td>
                <td>일단적어봄</td>
            </tr>
            <tr>
                <td>데이타베이스</td>
                <td>일단적어봄</td>
            </tr>
        </table>
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

<footer>
<%@include file="../../../../resources/common/footer.jsp" %>
</footer>
</body>
</html>