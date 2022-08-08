<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취소반품 조회</title>
</head>
<style>



.Mypage{
    width: 80%;
    height: auto;
    
    text-align: center;
    
}
.mypage_content{
    width: 75%;
    float: right;
    height: auto;
    margin-top: 20px;
    margin-right: 40px;
}
.mypage_content hr{
    float: left;
}
.mypage_list{
    float: left;
    width: 20%;
    text-align: center;
    
    
    height: 100%;
    margin: auto;
}
hr{
    width: 90%;
}
#mypage_list_a{
    text-decoration: none;
    padding-bottom: 10px;
}
#mypage_list_a:link{
    color: rgb(197, 197, 197);
}
#mypage_list_a:hover{
    color: rgb(78, 78, 78);
}
.mypage_content table{
    width: 90%;
    text-align: center;
    
}
#table_head td{
    font-size: 20px;
    font-weight: bold;
}
</style>

<body>
<%@include file="../../../../resources/common/header.jsp" %> 
       <!-- 여기서부터 시작 -->
    <div id = "hing">

    </div>
    <div class="MyPage">

        <div class="mypage_content">
           <h1>취소반품 조회</h1>
           <hr> <br>
           <table>
            <tr id="table_head">
                <td>주문일자/주문번호</td>
                <td>상품정보</td>
                <td>수량</td>
                <td>결제금액</td>
                <td>상태</td>
            </tr>
            <tr>
                <td>2022-02-01</td>
                <td>거적데기</td>
                <td>1</td>
                <td>500원</td>
                <td>반품준비중</td>
            </tr>

           </table>
           

        </div>
        <div class = "mypage_list">
            <h1>마이페이지</h1>
            <hr>
            <h2>아이디님 안녕하세요!</h2>
            <hr>
            <h2>나의 쇼핑내역</h2>
            <a href="${pageContext.request.contextPath }/mypage/mypage_orderlist" id="mypage_list_a" style="color: rgb(145, 144, 144);">주문배송 조회</a> <br>
            <a href="${pageContext.request.contextPath }/mypage/mypage_orderlist_back" id="mypage_list_a" style="color: rgb(145, 144, 144);">취소반품 조회</a> <br>
            <a href="buylist" id="mypage_list_a" style="color: rgb(145, 144, 144);">구매내역</a> <br>
            <hr>
            <h2>나의 관심내역</h2>
            <a href="../MyCart" id="mypage_list_a" style="color: rgb(145, 144, 144);">장바구니</a> <br>
            <hr>
            <h2>나의 커뮤니티</h2>
            <a href="#" id="mypage_list_a" style="color: rgb(145, 144, 144);">1대1 문의 내역</a> <br>
            <a href="#" id="mypage_list_a" style="color: rgb(145, 144, 144);">고객의 소리</a> <br>
            <a href="#" id="mypage_list_a" style="color: rgb(145, 144, 144);">나의 상품 리뷰</a> <br>
            <a href="#" id="mypage_list_a" style="color: rgb(145, 144, 144);">나의 상품 문의</a> <br>
            <h2>회원정보관리</h2>
            <a href="#" id="mypage_list_a" style="color: rgb(145, 144, 144);">회원정보 수정</a> <br>
            <a href="#" id="mypage_list_a" style="color: rgb(145, 144, 144);">비밀번호 변경</a><br>

            
            
            
       

        </div>
    </div>
</body>
</html>