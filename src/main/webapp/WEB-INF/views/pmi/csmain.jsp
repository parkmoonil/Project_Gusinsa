<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/main.css">
<link rel="stylesheet" href="resources/board.css" />
</head>
<body>
<header>
<%-- <%@include file="common/header.jsp"%> 	 --%>
</header>

	 
<div class="cs_main">
    <div class="cs_left_nav">
        <h2 class="cs_left_title"><a href="csmain">
            고객센터
        </a></h2>
        <ul>
            <li class="cs_left_list" ><a href="noticeboard">
                공지사항
            </a></li>
            <li class="cs_left_list"><a href="./faq.html">
                FAQ
            </a></li>
            <li class="cs_left_list"><a href="inquiry">
                1:1 문의하기
            </a></li>
            <li class="cs_left_list"><a href="./communication.jsp">
                고객의 소리
            </a></li>
            <li class="cs_left_list"><a href="./enter.html">
                입점문의
            </a></li>
            <li class="cs_left_list"><a href="./membership.html">
                멤버쉽(클럽)안내
            </a></li>
        </ul>

        <div class="cs_left_contact">
            <h4>고객센터</h4>
            <h3>1555-1234</h3>
            <h6>평일09:00 ~ 18:00</h6>
            <h6>주말 및 공휴일 휴무</h6>
        </div>
    </div>
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
			<c:forEach items="${noticeboard}" var="dto" begin="1" end="5">
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
<%-- <%@include file="common/footer.jsp" %> --%>
</footer>
	
</body>
</html>