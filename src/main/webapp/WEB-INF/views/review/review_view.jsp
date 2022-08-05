<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/nstyle.css" />
</head>
<body>
<h3>review_view</h3>
<form action="review_update" method="post">
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
		<td>${review_view.mid }</td>
	</tr>
	<tr>
		<td class="left">별점</td>
		<td>
			<div class="star-rating">
				<c:if test="${review_view.r_starpoint==1 }">
				★☆☆☆☆
				</c:if>
				<c:if test="${review_view.r_starpoint==2 }">
				★★☆☆☆
				</c:if>
				<c:if test="${review_view.r_starpoint==3 }">
				★★★☆☆
				</c:if>
				<c:if test="${review_view.r_starpoint==4 }">
				★★★★☆
				</c:if>
				<c:if test="${review_view.r_starpoint==5 }">
				★★★★★
				</c:if>
			</div>
		</td>
	</tr>
	<tr>
		<td class="left">제목</td>
		<td>${review_view.r_title }</td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td>${review_view.r_contents }</td>
	</tr>
		<tr>
		<td class="left">이미지</td>
		<td> 
			<a href="download?p=resources/upload/&f=${review_view.r_img }
			&r_num=${review_view.r_num }">${review_view.r_img }</a>	<!-- 클릭하면 컨트롤러로 감 -->
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="수정" /> &nbsp;&nbsp;
			<a href="review_list">목록보기</a> &nbsp;&nbsp;
			<a href="review_delete?r_num=${review_view.r_num }">삭제</a>  &nbsp;&nbsp;		
		</td>
	</tr>
	
</table>
</form>
<hr />
<c:set value="${review_view.r_img }" var="filename" />
<c:set var="fileNm" value="${fn:toLowerCase(filename) }" />
<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
	<c:if test="${status.last }">
		<c:choose>
			<c:when test="${token eq 'jpg' || token eq 'png' || toaken eq 'bmp' }">
					<img border="1" width="100" height="100" 
					src="resources/upload/${review_view.r_img }" alt="" />	
			</c:when> 
		</c:choose>
	</c:if>
</c:forTokens>


<hr />
</body>
</html>