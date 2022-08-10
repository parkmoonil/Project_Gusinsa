<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문배송 조회</title>
<link rel="stylesheet" href="resources/css/cs/main.css">
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/faq.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>


<div class="cs_left_nav">
        <h2 class="cs_left_title"><a href="csmain">
            마이페이지
        </a></h2>
        <ul>
            <li class="cs_left_list" ><a href="noticeboard">
                주문배송 조회
            </a></li>
            <li class="cs_left_list"><a href="faqboard">
                장바구니
            </a></li>
            <li class="cs_left_list"><a href="inquiry">
                1:1 문의하기
            </a></li>
            <li class="cs_left_list"><a href="communication">
                고객의 소리
            </a></li>

        </ul>

    </div>
</body>
</html>   
    <div class="cs_main_board">
       <div class="line"></div>
       <h2>주문배송 조회</h2>
       <table>
            <tr>
                <th class="faqboard_header">주문번호 / 주문일자</th>
                <th class="faqboard_title">상품이름</th>
                <th class="faqboard_title">사이즈</th>
                <th class="faqboard_title">색상</th>
                <th class="faqboard_date">수량</th>
                <th class="faqboard_date">결제금액</th>
                <th class="faqboard_date">상태</th>
            </tr>
            
        </table>
        
    	

    </div>
</div>

</body>
</html>