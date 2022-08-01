<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/cs/membership.css">
    <link rel="stylesheet" href="resources/css/cs/main.css" />
    <title>Document</title>
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>  
    <div class="cs_main_board">
        <div class="mbs_title">
            <p class="mbs_title1">구신사 멤버쉽 안내</p>
            <p class="mbs_title2">회원가입 후 이용 가능한 서비스입니다.</p>
        </div>
        <div class="mbs_guide">
            <p class="mbs_guide1">멤버쉽 가입 안내</p>
            <p class="mbs_guide2">가입하고 멤버쉽 혜택을 누려보세요!</p>
        </div>
        <div class="mbs_online">
            <p class="mbs_online1">온라인 및 모바일</p>
            <p class="mbs_online2">본인 인증 후 까사미아 멤버십에 가입하실 수 있습니다.</p>
            <button class="mbs_online_button">회원 가입하기 ></button>
        </div>
        <div class="mbs_grade">
            <p class="mbs_grade1">멤버쉽 등급 안내</p>
            <p class="mbs_grade2">등급에 따라 특별한 혜택을 누려보세요!</p>
        </div>
        <div class="mbs_board">
        </div>
        <div class="mbs_explain">
            <p class="mbs_explain_title">꼭 확인하세요!</p>
            <li>멤버쉽 등급은 온/오프라인에서 1년 동안 구매하신 누적 금액에 따라 
                매월 1일 회원 등급이 선정되며, 승급된 등급은 1년간 유지 됩니다.</li>
            <li>상시 할인 및 할인 쿠폰은 정상가 상품(입점 브랜드)에 한정됩니다.</li>
            <li>첫 구매5% 할인 쿠폰의 유효 기간은 기입 일로 부터 180일 (약6개월) 입니다.</li>
            <li>발행 쿠폰 및 할인은 일부 매장/상품에 따라 제외될 수 있습니다.</li>   
        </div>
    </div>    
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>