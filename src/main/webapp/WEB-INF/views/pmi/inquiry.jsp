<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/main.css" />
<link rel="stylesheet" href="resources/board.css" />
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
                <li class="cs_left_list">
                    1:1 문의하기
                </li>
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
	    <div class="line"> </div>
	    <h3 class="cs_inquiry_title">1:1 문의하기</h3>
	    <table class="cs_inquiry_table">
	        <tr>
	            <th>문의 분류</th>
	            <td>
	            <select name="inquiry">
	            <option value="">문의선택</option>
	            <option value="">주문결제</option>
	            <option value="">배송문제</option>
	            <option value="">취소/교환/반품 문의</option>
	            <option value="">쿠폰/마일리지/포인트 문의</option>         
	            <option value="">이벤트/상품후기 문의</option>
	            <option value="">회원/회원정보 문의</option>
	            <option value="">시스템오류 문의</option>
	            </select>
	            </td>
	        </tr>
	        <tr>
	            <th>제목</th>
	            <td>
		            <div>
		        	    <input type="text" title="제목입력" placeholder="제목을 입력해주세요." maxlength="100" cols="40" rows="2" />
		            </div>
		       </td>
	        </tr>
	        <tr>
	            <th>내용<span>*</span></th>
	            <td><textarea name="" id="" cols="30" rows="5"></textarea></td>
	        </tr>
	        <tr>
	            <th>첨부파일</th>
	           <td><input type="button" value="첨부파일"></td>
	        </tr>
	        <tr>
	            <th>답변수신</th>
	            <td> 
	                <input type="checkbox">SMS로 받기 
	                <input type="checkbox">Email로 받기
	            </td>
	        </tr>
	    </table>
	    <div class="inquiry_button">
	    <input type="button" value="취소" class="cancel_button"><input type="button" value="저장" class="save_button">
	    </div>
	</div>
</div>
<%-- <%@include file="common/footer.jsp" %> --%>
</body>
</html>