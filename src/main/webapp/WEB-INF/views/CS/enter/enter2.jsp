<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/enter.css?after" />
<link rel="stylesheet" href="resources/css/cs/main.css?after" />
<link rel="stylesheet" href="resources/css/cs/board.css?after" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %> 
	<div class="cs_main_board">
		<div>
            <h2>입점문의 페이지</h2>
        </div>
        
        <div>
            <div class="enter_guide">
            <ol>
                <li>구신사와 함께할 브랜드를 모집합니다.</li>
                <li>문의 검토 후 담당 MD와 연락이 가능하도록 연락처를 정확히 기재해주세요.</li>
                <li>입점문의 신청 후 담당 MD 검토 및 계약 체결까지 시일이 소요될 수 있습니다.</li>
                <li>방문이 필요하신분은 좌측아래의 고객센터로 연락을 요청해주세요.</li>
                <li>구신사는 개인정보를 철저히 관리하고 있습니다.</li>
           	</ol>
            </div>
        </div>
        
        <div class="enter_final">
				<h2>작성해 주신 문의가 정상적으로 접수되었습니다.</h2>
				<h2>감사합니다.</h2>
		</div> 

	</div>
</div>	
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>