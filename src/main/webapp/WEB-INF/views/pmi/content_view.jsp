<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/board.css" />
<link rel="stylesheet" href="resources/main.css" />
<header>
<%-- <%@include file="common/header.jsp" %> --%>
</header>
</head>
<body>
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
                <li class="cs_left_list"><a href="">
                    1:1 문의하기
                </li></a>
                <li class="cs_left_list"><a href="./communication.html">
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
		<div class="line" ></div>
		<h3>공지사항</h3>
		<form action="content_update" method="post">
		<input type="hidden" name="nnum" value="${content_view.nnum}" />
			<table class="noitce_table_content_view">
				<tr>
					<th>${content_view.ntitle }</th>
					<td class="notice_view_date">${content_view.ndate }</td>
				</tr>
				<tr>
					<td colspan="2"><pre>${content_view.ncontent }</pre></pre></td>
				</tr>
			</table>
			<input type="submit" value="수정"/> &nbsp;&nbsp;
			<a href="noticeboard">목록</a> &nbsp;&nbsp;
			<a href="delete?nnum=${content_view.nnum}">삭제</a> &nbsp;&nbsp;
		</form>
	</div>
</div>
<%-- <footer><%@include file="common/footer.jsp" %></footer> --%>
</body>
</html>