<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/inquiry.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>           
	<div class="cs_main_board">
	    <div class="line"> </div>
	    <h3 class="inquiry_title">1:1 문의하기</h3>
	    <form action="" method="post">
		    <table class="inquiry_table">
		        <tr>
		            <th>문의 분류</th>
		            <td>
			            <select name="">
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
			            <div class="title_input">
			        	    <input type="text" title="제목입력" placeholder="제목을 입력해주세요." maxlength="100" cols="40" rows="2" />
			            </div>
			       </td>
		        </tr>
		        <tr>
		            <th>내용
		           		<span class="point">*</span>
		            </th>
		            <td><textarea name="" id="" cols="53" rows="14"></textarea></td>
		        </tr>
		        <tr>
		            <th>
		            	첨부파일
		            </th>
		           <td>
		      			<input type="button" value="첨부파일">
		           </td>
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
		    	<input type="submit" value="전송" class="save_button">
		    </div>
	    </form>
	</div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>