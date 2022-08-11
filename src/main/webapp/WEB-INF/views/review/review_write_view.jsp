<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/scriptjsp.js"></script>
<link rel="stylesheet" href="resources/css/restyle.css"/>
<link rel="stylesheet" href="resources/css/nstyle.css"/>
    
</head>
<body>
<h3>리뷰 폼</h3>
<form action="review_write" method="post" enctype="multipart/form-data">

<table>
 	<tr>
		<td class="left">상품</td>
		<td><input type="number" name="pcode" id="pcode" value="${p_code }" /></td>
	</tr>
	<tr>
		<td class="left">아이디</td>
		<td><input type="text" name="mid" id ="mid" value="${mid }" />
		</td>
	</tr>
	<tr>
		<td class="left">별점</td>
		<td>
			<div class="star-rating">
				  <input type="radio" id="5-stars" name="r_starpoint" value="5" />
				  <label for="5-stars" class="star">&#9733;</label>
				  <input type="radio" id="4-stars" name="r_starpoint" value="4" />
				  <label for="4-stars" class="star">&#9733;</label>
				  <input type="radio" id="3-stars" name="r_starpoint" value="3" />
				  <label for="3-stars" class="star">&#9733;</label>
				  <input type="radio" id="2-stars" name="r_starpoint" value="2" />
				  <label for="2-stars" class="star">&#9733;</label>
				  <input type="radio" id="1-star" name="r_starpoint" value="1" />
				  <label for="1-star" class="star">&#9733;</label>
			</div>
		</td>
	</tr>
	<tr>
		<td class="left">리뷰제목</td>
		<td><input type="text" name="r_title" value="좋아요" /></td>
	</tr>
	<tr>
		<td class="left">리뷰내용</td>
		<td><textarea type="text" name="r_contents" rows="10" >aa</textarea></td>
	</tr>
		<tr>
		<td class="left">사진</td>
		<td><input type="file" name="r_img" /></td>
	</tr>
		<input type="hidden" name="o_code" id="o_code" value="${o_code }"/></td>
		<td colspan="2">
			<input type="submit" value="리뷰등록" />
			<a href="review_list">리뷰목록</a>
		</td>
	</tr>
</table>
</form>

</body>
</html>