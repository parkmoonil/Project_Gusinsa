<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="resources/css/restyle.css" />
</head>
<body>
     <div class="main">
	        <input id="tab1" type="button" name="tabs"> 
	        <label for="tab1">상품정보</label>
	    
	        <input id="tab2" type="button" name="tabs" checked>
	        <label for="tab2">상품리뷰</label>
	    
	        <input id="tab3" type="button" name="tabs">
	        <label for="tab3">Q&A</label>
	    
	        <input id="tab4" type="button" name="tabs">
	        <label for="tab4">배송/교환/환불안내</label>

         <h4>상품리뷰</h4>
            <div class="restar-box">
                <div class="restar-total">4.7</div>
                    <div class="restar-total-content1">최고 5점</div>
                        <div class="restar-total-content2">00개 평가</div>
            </div>

	<c:forEach items="${review_list }" var="dto">
	<div>
			<span><input type="hidden" name="mid" value="${dto.mid }"></span>	
			<span>${dto.r_num }</span>
			<span>
				<a href="review_view?r_num=${dto.r_num }">${dto.r_title }</a>
			</span>
			<span style="float:right;"><fmt:formatDate value="${dto.r_date}" pattern = "yyyy.MM.dd"/></span>
			<span>${review_view.r_contents }</span>
			<span><input type="hidden" name="r_hit" value="${dto.r_hit }"></span>
	</div>
	</c:forEach>
			<span><a href="review_write_view">리뷰쓰기</a></span>
totCnt : ${totRowcnt }
현재페이지/토탈페이지 : ${searchVO.page } / ${searchVO.totPage }


<hr />


<form action="review_list" method="post">
	<c:if test="${searchVO.totPage>1 }"> <!-- 토탈 페이지가 1보다 크면 -->
		<c:if test="${searchVO.page>1 }">
			<a href="review_list?page=1">[처음]</a>
			<a href="review_list?page=${searchVO.page-1 }">[이전]</a>
		</c:if>
	
	<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
		<c:choose>
			<c:when test="${i eq searchVO.page }">  <!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
				<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			</c:when>
			<c:otherwise>
				<a href="review_list?page=${i }$sk=${resk}&r_title=${r_title==true?'r_title':''}&r_contents=${r_contents==true?'r_contents':''}" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise>
		
		</c:choose>
	</c:forEach>
		<c:if test="${searchVO.totPage>searchVO.page }"> <!-- 마지막 페이지가 아닐때 -->
			<a href="review_list?page=${searchVO.page+1 }">[다음]</a>
			<a href="review_list?page=${searchVO.totPage }">[마지막]</a>
		</c:if>
	</c:if>
</form>
	</div>

	<!-- 검색을 가져감 -->

</body>
</html>