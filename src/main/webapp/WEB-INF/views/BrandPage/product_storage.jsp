<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/enroll.css" />
<meta charset="UTF-8">
<title>Product enroll</title>
</head>
<body>
<script>
function checkSubmit() {
	  
	  var tags = {
			'p_code' : '상품코드',
			'p_size' : '사이즈',
			'p_amount' : '수량',
			
			
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
<%@include file="../../../../resources/common/header.jsp"%>
<div class="cs_main">
<%-- <%@include file="../CS/cs_nav/cs_left_nav.jsp" %> --%>
	<div class="cs_main_board">
		<div class="line"></div>
		<h2 class="enroll_title">재고등록 페이지</h2>
			<form action="product_storagewrite" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit()">
				<table class="enrollwrite">
					<tr>
						<th>상품코드</th>
						<td><input type="text" name="p_code"/></td>
					</tr>
					<tr>
						<th>재고</th>
						<td><input type="number" name="p_amount"/></td>
					</tr>
					<tr>
						<th>사이즈</th>
						<td>
						<select name="p_size" class="enroll_class">
							<option value="S">S</option>
							<option value="M">M</option>
							<option value="L">L</option>
						</select>
						</td>
					</tr>
				</table>
			   <div class="enroll_btn">
			   		<a href="brand">목록</a>
					<input type="submit" value="작성완료" />
				</div>
			</form>	
	</div>

</div>
</body>
</html>