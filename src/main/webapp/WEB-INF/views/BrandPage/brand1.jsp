<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/brand_info_style.css" />
<title>Insert title here</title>
</head>
<body>
	<%@include file="../../../../resources/common/header.jsp"%>
	
	<div id="__next" data-reactroot="">

		<section style="background-image: url(resources/brandimg/youth/youth.jpeg)" class="css-background-img">

			<div class="css-brand-text-1">

				<div class="css-brand-text-2">

					<h3 class="css-brand-text-3">Youth</h3>

					<strong class="css-brand-text-4">유스</strong>

					<div class="css-brand-text-5">

						<div class="css-brand-text-6">

							<div class="css-brand-text-7">미니멀한 디자인을 기반으로 불필요한 디테일들은
								덜어내고 실루엣과 길이감의 밸런스, 그리고 레이어링 되었을때 계산된 스타일링 연출, 퀄리티 높은 소재 등 세세한
								부분까지 신경 쓴 어패럴 디자인 브랜드입니다.</div>

						</div>

						<div class="css-brand-text-8">미니멀한 디자인을 기반으로 불필요한 디테일들은 덜어내고
							실루엣과 길이감의 밸런스, 그리고 레이어링 되었을때 계산된 스타일링 연출, 퀄리티 높은 소재 등 세세한 부분까지 신경
							쓴 어패럴 디자인 브랜드입니다.</div>

					</div>
				</div>	
			</div>
		</section>
	</div>

	<div class="products">
		<h3>Product list</h3>
			<div class="product-list">     
				<div id="product_order_list" class="product-list-style">
					<p>
					<a href="datedesc" id="btn1" style="text-decoration: none; color: black;">신상품순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
					<a href="Pricelistasc" id="btn2" style="text-decoration: none; color: black;">낮은가격순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
					<a href="Pricelistdesc"id="btn3" style="text-decoration: none; color: black;">높은가격순</a> 
					</p>
				</div>
			</div>
        
        <div id="div1" style= "text-align: center;">
	        <table class="product-list">
	        	<tr>
					<c:forEach items="${brand1 }" var="dto" varStatus ="status">
						<c:if test="${status.index%3==0 }"> </tr><tr>
					
					</c:if>  
	               
	                    <td class="">
	                    	<a href="BuyPage?p_code=${dto.p_code }" >
	                        <img width="225" height="250" 
	                        src="resources/upload/p_img/${dto.p_img}">
	                        <p class="product-name" 
	                        style= "display: inline-block; text-align: center; height: 40px;">${dto.p_name }</p></a>
	                        <p class="product-price" 
	                        style= "text-decoration: none; color: black; text-align: center;">${dto.p_price }</p>
	                    </td>
					</c:forEach>
				</tr>
		     </table>
	     </div>
	</div> 
	
	<c:if test="${ ereginum eq '001-02-65844' }">
			<div>
				<a href="product_enroll">상품등록</a>
				<a href="product_storage">재고등록</a>
			</div>
	</c:if>
	
	<div class="paging" style="text-align:center; padding-bottom: 50px; color: black; text-decoration: none;">
		<form action="brand1" method="post">
			<c:if test="${searchVO.totPage>1 }"><!-- 토탈 페이지가 1보다 크면 -->
				<c:if test="${searchVO.page>1 }">
					<a href="brand1?page=1" style="color: black; text-decoration: none">[처음]</a>
					<a href="brand1?page=${searchVO.page-1 }" style="color: black; text-decoration: none">[이전]</a>
				</c:if>
				<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
					<c:choose>
						<c:when test="${i eq searchVO.page }"> <!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
							<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
						</c:when>
						<c:otherwise>
							<a href="brand1?page=${i }" style="color: black; text-decoration: none">${i }</a>&nbsp;
						</c:otherwise>

					</c:choose>
				</c:forEach>
				<c:if test="${searchVO.totPage>searchVO.page }"> <!-- 마지막 페이지가 아닐때 -->
					<a href="brand1?page=${searchVO.page+1 }" style="color: black; text-decoration: none">[다음]</a>
					<a href="brand1?page=${searchVO.totPage }" style="color: black; text-decoration: none">[마지막]</a>
				</c:if>
			</c:if>
		</form>
	</div>

	<%@include file="../../../../resources/common/footer.jsp"%>
	
</body>
</html>