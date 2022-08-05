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
                        <div class="restar-total-content2">${totRowcnt }개 평가</div>
            </div>

	<c:forEach items="${review_list }" var="dto">
		<div>
			<span>${dto.mid }</span>
			<span>
				<c:if test="${dto.r_starpoint==1 }">
				★☆☆☆☆
				</c:if>
				<c:if test="${dto.r_starpoint==2 }">
				★★☆☆☆
				</c:if>
				<c:if test="${dto.r_starpoint==3 }">
				★★★☆☆
				</c:if>
				<c:if test="${dto.r_starpoint==4 }">
				★★★★☆
				</c:if>
				<c:if test="${dto.r_starpoint==5 }">
				★★★★★
				</c:if>
			</span>	
			<span><input type="hidden" name="r_num" value="${dto.r_num}"></span>
			<span style="float:right;"><fmt:formatDate value="${dto.r_date}" pattern = "yyyy.MM.dd"/></span>
		
			<span><input type="hidden" name="r_hit" value="${dto.r_hit }"></span>
			<div id=accordionrayout>
				${dto.r_title }
				<div>
				${dto.r_contents }
				</div>
			</div>
		</div>
	</c:forEach>
			<span>
 				<c:if test="${mid ne null }">
					<a href="review_write_view">리뷰쓰기</a></span>
 		 		</c:if>
현재페이지/토탈페이지 : ${researchVO.page } / ${researchVO.totPage }


<hr />


<form action="review_list" method="post">
	<c:if test="${researchVO.totPage>1 }"> <!-- 토탈 페이지가 1보다 크면 -->
		<c:if test="${researchVO.page>1 }">
			<a href="review_list?page=1">[처음]</a>
			<a href="review_list?page=${researchVO.page-1 }">[이전]</a>
		</c:if>
	
	<c:forEach begin="${researchVO.pageStart }" end="${researchVO.pageEnd }" var="i">
		<c:choose>
			<c:when test="${i eq researchVO.page }">  <!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
				<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			</c:when>
			<c:otherwise>
				<a href="review_list?page=${i }" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise>
		</c:choose>
	</c:forEach>
		<c:if test="${researchVO.totPage>researchVO.page }"> <!-- 마지막 페이지가 아닐때 -->
			<a href="review_list?page=${researchVO.page+1 }">[다음]</a>
			<a href="review_list?page=${researchVO.totPage }">[마지막]</a>
		</c:if>
	</c:if>
</form>
	<!-- 검색을 가져감 -->

</body>
</html>