<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/restyle.css" />
<link rel="stylesheet" href="resources/css/nstyle.css" />
</head>
<body>
<h3>review_update</h3>
<form action="review_modify" method="post">
<input type="hidden" name="r_num" value="${review_view.r_num }" />
<table>
	<tr>
		<td class="left">번호</td>
		<td>${review_view.r_num }</td>
	</tr>
	<tr>
		<td class="left">히트</td>
		<td>${review_view.r_hit }</td>
	</tr>
	<tr>
		<td class="left">아이디</td>
		<td>${review_view.mid }
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
		<td class="left">제목</td>
		<td>
			<input type="text" name="r_title" size="30" value="${review_view.r_title }" />
		</td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td>
			<textarea type="text" name="r_contents" rows="10" cols="50">${review_view.r_contents }</textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="review_modify" /> &nbsp;&nbsp;
			<a href="review_list">목록보기</a> &nbsp;&nbsp;	
		</td>
	</tr>
	
</table>
</form>

</body>
</html>