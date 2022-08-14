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


	<div id="__next" data-reactroot="" class="css-brand">

		<section style="background-image: url(resources/brandimg/eastlogue_permanent/eastlogue_permanent.jpeg)" class="css-background-img">

			<div class="css-brand-text-1">

				<div class="css-brand-text-2">

					<h3 class="css-brand-text-3">EASTLOGUE PERMANENT</h3>

					<strong class="css-brand-text-4">이스트로그 퍼머넌트</strong>

					<div class="css-brand-text-5">

						<div class="css-brand-text-6">

							<div class="css-brand-text-7">EASTLOGUE PERMANENT는 '순수한 평상복(SHEER CASUAL CLOTHING)'을
								 모토로 삼고 옷에 대해 더욱 근본적인 접근을 시도합니다. 옷의 기초가 되는 원단부터 직접 개발하여 EASTLOGUE가 생각하는 
								 기본에 충실한 디자인을 얹고, 꼼꼼한 만듦새로 마무리하는 일입니다. 기본이라는 가치가 저렴함 혹은 호화로움으로 양극화되는 
								 시대에 여전히 합리적인 기본이 필요하다고 여깁니다.</div>

						</div>

						<div class="css-brand-text-8">EASTLOGUE PERMANENT는 '순수한 평상복(SHEER CASUAL CLOTHING)'을
								 모토로 삼고 옷에 대해 더욱 근본적인 접근을 시도합니다. 옷의 기초가 되는 원단부터 직접 개발하여 EASTLOGUE가 생각하는 
								 기본에 충실한 디자인을 얹고, 꼼꼼한 만듦새로 마무리하는 일입니다. 기본이라는 가치가 저렴함 혹은 호화로움으로 양극화되는 
								 시대에 여전히 합리적인 기본이 필요하다고 여깁니다.</div>

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
					<a href="datedesc" id="btn1">신상품순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
					<a href="Pricelistasc" id="btn2">낮은가격순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
					<a href="Pricelistdesc"id="btn3">높은가격순</a> 
					</p>
				</div>
			</div>
        
        <div id="div1">
	        <table class="product-list">
	        	<tr>
					<c:forEach items="${brand9 }" var="dto" varStatus ="status">
						<c:if test="${status.index%3==0 }"> </tr><tr>
					
						</c:if>  
	               
	                    <td class="">
	                    	<a href="BuyPage?p_code=${dto.p_code }">
	                        <img width="225" height="250"
	                        src="resources/upload/${dto.p_img}">
	                        <p class="product-name">${dto.p_name }</p></a>
	                        <a href="#"><p class="product-price">${dto.p_price }</p></a>
	                    </td>
					</c:forEach>
				</tr>
		     </table>
	     </div>
	</div> 
	
	<c:if test="${ ereginum eq '001-10-98100' }">
			<div>
				<a href="product_enroll">상품등록</a>
				<!-- <a href="product_enroll">재고등록</a> -->
			</div>
	</c:if>
	
	<div class="paging" style="text-align:center; padding-bottom: 50px; color: black;">
		<form action="brand9" method="post">
			<c:if test="${searchVO_brand.totPage>1 }"><!-- 토탈 페이지가 1보다 크면 -->
				<c:if test="${searchVO_brand.page>1 }">
					<a href="brand9?page=1">[처음]</a>
					<a href="brand9?page=${searchVO_brand.page-1 }">[이전]</a>
				</c:if>

				<c:forEach begin="${searchVO_brand.pageStart }" end="${searchVO_brand.pageEnd }" var="i">
					<c:choose>
						<c:when test="${i eq searchVO_brand.page }"> <!-- i eq searchVO_brand.page 내가 클릭한 페이지가 같을 때 -->
							<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
						</c:when>
						<c:otherwise>
							<a href="brand9?page=${i }" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise>

					</c:choose>
				</c:forEach>
				<c:if test="${searchVO_brand.totPage>searchVO_brand.page }"> <!-- 마지막 페이지가 아닐때 -->
					<a href="brand9?page=${searchVO_brand.page+1 }">[다음]</a>
					<a href="brand9?page=${searchVO_brand.totPage }">[마지막]</a>
				</c:if>
			</c:if>
		</form>
	</div>

	<%@include file="../../../../resources/common/footer.jsp"%>
	
</body>
</html>