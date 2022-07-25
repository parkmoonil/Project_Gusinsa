<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/main.css" />
<link rel="stylesheet" href="resources/board.css" />
<link rel="stylesheet" href="resources/communication.css" />
<header>
<%-- <%@include file="common/header.jsp --%>" %>
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
                <li class="cs_left_list"><a href="">
                    FAQ
                </a></li>
                <li class="cs_left_list"><a href="inquiry">
                    1:1 문의하기
                </li></a>
                <li class="cs_left_list"><a href="communication">
                    고객의 소리
                </a></li>
                <li class="cs_left_list"><a href="">
                    입점문의
                </a></li>
                <li class="cs_left_list"><a href="">
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
		<h2>고객의 소리</h2>
		<div class="cs_communication_main">
			<h2>칭찬/불만/개선 제안 등 고객님이 주신 다양한 의견에</h2>
			<h2>보답해 드릴 수 있도록 최선을 다하는 구신사가 되겠습니다.</h2>
		</div>
        <div>
            <a href="communication2" class="cs_communication_main_button">작성하기</a>
        </div>
	</div>
</div>
</body>
</html>