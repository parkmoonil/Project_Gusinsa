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
<script>
function checkSubmit() {
	  
	  var tags = {
			'ititle' : '제목',
			'icontent' : '내용',
	  		
	  }
	  var keyso = Object.keys(tags);
	  console.log(keyso);
	  console.log(keyso[0]);
	  for (i = 0; i < keyso.length; i++ ) {
		  var tag = document.getElementsByName(keyso[i]);
		  if (tag[0].value == '') {
			  alert(tags[keyso[i]] + "을(를) 입력해주세요.");
			  return false;
		  }
	  }
	  return true;
	}
</script>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>           
<div class="cs_main_board">
	    <div class="line"> </div>
	    <h3 class="inquiry_title">1:1 문의하기</h3>
	    <form action="Inquiry_write" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit()">
		    <table class="inquiry_table">
		        <tr>
		            <th>문의 분류</th>
		            <td>
			            <select name="iselect1">
				            <option value="iselect1">주문결제</option>
				            <option value="iselect1">배송문제</option>
				            <option value="iselect1">취소/교환/반품 문의</option>
				            <option value="iselect1">쿠폰/마일리지/포인트 문의</option>         
				            <option value="iselect1">이벤트/상품후기 문의</option>
				            <option value="iselect1">회원/회원정보 문의</option>
				            <option value="iselect1">시스템오류 문의</option>
			            </select>
		            </td>
		        </tr>
		        <tr>
		            <th>제목</th>
		            <td>
			            <div class="title_input">
			        	    <input type="text" name="ititle" title="제목입력" cols="40" rows="2"  placeholder="제목을 입력해주세요." maxlength="100" />
			            </div>
			       </td>
		        </tr>
		        <tr>
		            <th>내용
		           		<span class="point">*</span>
		            </th>
		            <td>
		            	<pre><textarea name="icontent" id="" cols="57" rows="14" placeholder="내용을 입력해주세요."></textarea></pre>
		            </td>
		        </tr>
		        <tr>
		            <th>
		            	첨부파일
		            </th>
		           <td>
		      			<input type="file" value="첨부파일" name="ifile" />
		           </td>
		        </tr>
		        <tr>
		            <th>답변수신</th>
		            <td> 
		                <input type="radio" name="iselect2" value="SMS로 받기" checked="checked">SMS로 받기
		                <input type="radio" name="iselect2" value="Email로 받기">Email로 받기
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