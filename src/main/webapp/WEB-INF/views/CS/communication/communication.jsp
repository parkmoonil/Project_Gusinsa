<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/communication.css" />
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>          
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
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>