<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css">
<link rel="stylesheet" href="resources/css/cs/board.css" />
</head>
<body>
<div class="cs_left_nav">
        <h2 class="cs_left_title"><a href="mypage_orderlist">
            마이페이지
        </a></h2>
        <ul>
            <li class="cs_left_list" ><a href="mypage_user_pwcheck">
                회원정보 수정
            </a></li>
            <li class="cs_left_list"><a href="mypage_orderlist" id = "mypage_orderlist">
                주문 내역
            </a></li>
            <li class="cs_left_list"><a href="MyCart">
                장바구니
            </a></li>
            <li class="cs_left_list"><a href="mypage_mycommu">
                고객의 소리 문의내역
            </a></li>
            <li class="cs_left_list"><a href="mypage_inquiry">
                문의내역
            </a></li>
        </ul>
        <h2 class="cs_left_title"><a href="mypage_orderlist">
            상품 리뷰
        </a></h2>
        <ul>
            <li class="cs_left_list" ><a href="mypage_possible_review">
                작성 가능한 리뷰
            </a></li>
            <li class="cs_left_list"><a href="mypage_written_review">
                내가 작성한 리뷰
            </a></li>

        </ul>
        
    </div>
</body>
</html>