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
<link rel="stylesheet" href="resources/css/cs/communication3.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>          
	<div class="cs_main_board">
		<div class="line" ></div>
		<h2>고객의 소리</h2>
		<div class="cs_communication_main">
			<div class="step_progress_area">
				<div class="step_progress_status">
			              <div class="step_progress">
			                  <em>01</em>
			                  <strong>개인 정보 확인</strong>
			              </div>
			              <div class="step_progress">
			                  <em>02</em>
			                  <strong>고객 의견 등록</strong>
			              </div>
			              <div class="step_progress_on">
			                  <em>03</em>
			                  <strong>접수 완료</strong>
			              </div>
		         </div>
		     </div>   
		    <div class=commu_final>
				<h2>작성해 주신 문의가 정상적으로 접수되었습니다.</h2>
				<h2>감사합니다.</h2>
			</div> 
		</div>
	</div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>