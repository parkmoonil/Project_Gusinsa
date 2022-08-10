<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="resources/css/restyle.css" />
    <style>	.header{border:solid 0px orange; 
    				background-color:white; 
    				color:black; 
    				font-weight:bold; 
    				text-align:center;
    				width:160px;}	
    		.content{border:solid 0px aqua; 
    				background-color:white; 
    				color:black;  
    				text-align:center;
    				width:150px; 
    				height:120px; 
    				padding:5 5 5 5;	
    				display:none;	}
    </style>
    <script src='http://code.jquery.com/jquery.js'></script>
    <script type="text/javascript">	
    
    $(document).ready(function(){
    	/** 초기화 처리*/
    	// 첫 번재 항목이 펼쳐져 있도록 처리
	    $("#acco1:eq(0)").addClass("selected"); //첫번째 항목만 selected 클래스를 적용
	    $("#acco1").not(":eq(0)").find(".content").hide();//첫번째 항목 이외의 content를 숨김
	    /** 링크에 대한 클릭 이벤트 처리 */    
	    $("#acco1 .header").click(function(){	
			    $(this).toggleClass("selected");
			  //클릭된 나 자신을 제외한 나머리 링크들은 slected 클래스를 무조건 제거
			    $("#acco1 .header").not(this).removeClass("selected"); 
			 // 펼칠 내용 영역 선택
			var target = $(this).parents("#acco1").find(".content");
		 // 나머지 내용 영역을 선택
		var other = $("#acco1 .header").not(this)
					.parents("#acco1").find(".content");
		  // 애니메이션으로 열고 닫기 처리 	
		target.slideToggle(300);
	     	other.slideUp(300);
	        // 링크 페이지 이동 중지
	     	return false;
		    });
		});
	    	
	</script>
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
                <div class="restar-total">${totR_Starpoint}/${totRowcnt }</div>
                    <div class="restar-total-content1">최고 5점</div>
                        <div class="restar-total-content2">${totRowcnt }개 평가</div>
            </div>

	<c:forEach items="${review_list }" var="dto">
		<div>
			<span>${dto.mid }   
			</span>
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
			<div id='acco1'>
				<div class="header">${dto.r_title }</div>
				<div class="content">${dto.r_contents } <br/>
							<%-- <a href="download?p=resources/upload/&f=${dto.r_img }
			&mid=${dto.mid }">${dto.r_img }</a> --%></div>
			</div>
			<span><input type="hidden" name="o_code" value="${dto.o_code}"></span>
		</div>
	</c:forEach>
			<span>
<%--  				<c:if test="${mid ne null }">
					<a href="review_write_view?p_code=${dto.p_code }&o_code=${dto.o_code}">리뷰쓰기</a></span>
 		 		</c:if> --%>
	
<hr />
<%-- 현재페이지/토탈페이지 : ${researchVO.page } / ${researchVO.totPage } --%>
<div style="text-align:center" >
<form action="review_list" method="post">
	<c:if test="${researchVO.totPage>1 }"> <!-- 토탈 페이지가 1보다 크면 -->
		<c:if test="${researchVO.page>1 }">
			<a href="review_list?page=1">&lt;&lt;</a>
			<a href="review_list?page=${researchVO.page-1 }">&lt;</a>
		</c:if>
	<c:forEach begin="${researchVO.pageStart }" end="${researchVO.pageEnd }" var="i">
		<c:choose>
			<c:when test="${i eq researchVO.page }">  <!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
				<span style="color: black; font-weight: bold;">${i }&nbsp;</span>
			</c:when>
			<c:otherwise>
				<a href="review_list?page=${i }" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise>
		</c:choose>
	</c:forEach>
		<c:if test="${researchVO.totPage>researchVO.page }"> <!-- 마지막 페이지가 아닐때 -->
			<a href="review_list?page=${researchVO.page+1 }">&gt;</a>
			<a href="review_list?page=${researchVO.totPage }">&gt;&gt;</a>
		</c:if>
	</c:if>
	<%-- 
	<c:set value="${dto.r_img }" var="filename" />
	<c:set var="fileNm" value="${fn:toLowerCase(filename) }" />
	<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
		<c:if test="${status.last }">
			<c:choose>
				<c:when test="${token eq 'jpg' || token eq 'png' || toaken eq 'bmp' }">
					${filename }:::그림파일 jpg png bmp <br />
					${status.last }
					<div>
						<img border="1" width="100" height="100" 
						src="resources/upload/${dto.r_img }" alt="" />	
					</div>
				</c:when> 
			</c:choose>
		</c:if>
	</c:forTokens> --%>
</form>
</div>
	<!-- 검색을 가져감 -->

</body>
</html>