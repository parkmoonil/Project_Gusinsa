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
			'p_name' : '상품이름',
			'p_price' : '상품가격',
			'p_class' : '종류',
			'p_gender' : '성별',
			'p_img' : '상품이미지',
			'p_img2' : '상품상세이미지',
			'p_img3' : '상품상세이미지1',
			'brand' : '브랜드',
			'p_category' : '분류',
			
			
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
		<h2 class="enroll_title">상품등록 페이지</h2>
			<form action="product_enrollwrite" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit()">
				<table class="enrollwrite">
					<tr>
						<th>상품이름</th>
						<td><input type="text" name="p_name"/></td>
					</tr>
					<tr>
						<th>상품가격</th>
						<td><input type="number" name="p_price"/></td>
					</tr>
					<tr>
						<th>종류</th>
						<td>
						<select name="p_class" class="enroll_class">
							<option value="아우터">아우터</option>
							<option value="상의">상의</option>
							<option value="하의">하의</option>
							<option value="악세서리">악세서리</option>
							<option value="라이프">라이프</option>
						</select>
						</td>
					</tr>
					<tr>
						<th>성별</th>
						<td><input type="radio" name="p_gender" value="남성" checked="checked"/>남성</td> <br />
						<td><input type="radio" name="p_gender" value="여성" />여성</td>
					</tr>
					<tr>
						<th>상품이미지1</th>
						<td><input type="file" name="p_img"/></td>
					</tr>
					<tr>
						<th>상품이미지2</th>
						<td><input type="file" name="p_img2"/></td>
					</tr>
					<tr>
						<th>상품이미지3</th>
						<td><input type="file" name="p_img3"/></td>
					</tr>
					<tr>
						<th>상품이미지4</th>
						<td><input type="file" name="p_img4"/></td>
					</tr>
					<tr>
						<th>상품이미지5</th>
						<td><input type="file" name="p_img5"/></td>
					</tr>
					<tr>
						<th>브랜드</th>
						<td><input type="text" name="brand"/></td>
					</tr>
					<tr>
						<th>분류</th>
						<td><input type="text" name="p_category"/></td>
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