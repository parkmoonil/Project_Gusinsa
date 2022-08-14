<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/reviewboard_list.css" />
<title>Insert title here</title>
 
</head>

<body>
<div style="absolute">
<%@include file="../../../../resources/common/header.jsp" %>
</div>  
    <!--<center>
    <img src="img/main.png" alt="리뷰배너" style="width:1200px;height:500px;" >
    </center>-->
<div id="contents">
    <div style="text-align: center;"><img src="resources/img/main.png" alt="메인베너" width="1200" height="500" /></div>
    
    <div class="re2" >
    	<input type="hidden" name="r_num" value="${dto.r_num}">
    	<c:forEach items="${reviewboard_list }" var="dto">
        <div class="re1">
            <div>
             	<a href="reviewboard_view?r_num=${dto.r_num }">
            	<img border="1" width="300" height="300" style="margin-right: 50px" 
            	src="resources/upload/${dto.r_img}" alt="" /></a>
            </div>
            <div class="like1" >
            </div>
            <div class="blank-line">
            <div style="font-weight: bold;">${dto.r_title}</div>
            <div><c:if test="${dto.r_starpoint==1 }">
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
				</c:if></div>
            <div>아이디 : ${dto.mid}</div>
            <div><fmt:formatDate value="${dto.r_date}" pattern = "yyyy.MM.dd"/></div>
            <div class="right-text">조회수 : ${dto.r_hit}</div>
            <div><a href="reviewboard_view?r_num=${dto.p_code }">${dto.p_code }</a></div>
            </div>
         </div>
        </c:forEach>
      </div>        
    
    <div class="paging" style="padding-left: 600px; padding-bottom: 50px;">
    <form action="reviewboard_list" method="post">
	<c:if test="${reboardsearchVO.totPage>1 }"> <!-- 토탈 페이지가 1보다 크면 -->
		<c:if test="${reboardsearchVO.page>1 }">
			<a href="reviewboard_list?page=1">&lt;&lt;</a>
			<a href="reviewboard?page=${reboardsearchVO.page-1 }">&lt;</a>
		</c:if>
	
	<c:forEach begin="${reboardsearchVO.pageStart }" end="${reboardsearchVO.pageEnd }" var="i">
		<c:choose>
			<c:when test="${i eq reboardsearchVO.page }">  <!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
				<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			</c:when>
			 <c:otherwise>
				<a href="reviewboard_list?page=${i }" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise> 
		
		</c:choose>
	</c:forEach>
		<c:if test="${reboardsearchVO.totPage>reboardsearchVO.page }"> <!-- 마지막 페이지가 아닐때 -->
			<a href="reviewboard_list?page=${reboardsearchVO.page+1 }">&gt;</a>
			<a href="reviewboard_list?page=${reboardsearchVO.totPage }">&gt;&gt;</a>
		</c:if>
	</c:if>
    </div>
	</form>
</div>    
<footer>
<%@include file="../../../../resources/common/footer.jsp" %>
</footer>
</body>
</html>
