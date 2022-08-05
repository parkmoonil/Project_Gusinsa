<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/brand1_style.css" />
<title>Insert title here</title>
</head>
<body>
<header>
	<%@include file="../../../../resources/common/header.jsp"%>
</header>
	<div id="__next" data-reactroot="">

		<section style="background-image: url(resources/brandimg/youth.jpeg)" class="css-background-img">

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

				<div class="css-brand-like">
					<svg class="css-0" xmlns="http://www.w3.org/2000/svg" width="36"
						height="30" viewBox="0 0 20 20">
                        <path
							d="M2.24 3.425a4.758 4.758 0 0 1 6.79 0c.416.421.74.901.971 1.413.23-.512.553-.992.97-1.413a4.758 4.758 0 0 1 6.79 0 4.91 4.91 0 0 1 0 6.88L10 18.166l-7.76-7.863-.166-.176a4.911 4.911 0 0 1 .166-6.703z"
							fill="none" fill-rule="evenodd" stroke="#ffffff"
							stroke-width="0.7"></path>
                    </svg>

					<span class="css-brand-text-9">0</span>
				</div>
			</div>
		</section>
	</div>

	<div class="products">
		<h3>Product list</h3>

	    <div class="product-list">

	            <div>
	            <a href="" class="product-list-style">인기상품순</a>
	            <a href="" class="product-list-style">신상품순</a>
	            <a href="" class="product-list-style">낮은가격순</a>
	            <a href="" class="product-list-style">높은가격순</a>
	            </div> 


		<div class="product-list">
			<c:forEach items="${brand1 }" var="dto">
				<a href="#" class="product"> 
					<img src="${dto.p_img }" width="225" height="250px">
					<div class="product-name">${dto.p_name }</div>
					<div class="product-price">${dto.p_price }</div>
				</a>
				<a href="#" class="product"> 
					<img src="${dto.p_img }" width="225" height="250px">
					<div class="product-name">${dto.p_name }</div>
					<div class="product-price">${dto.p_price }</div>
				</a>
				<a href="#" class="product"> 
					<img src="${dto.p_img }" width="225" height="250px">
					<div class="product-name">${dto.p_name }</div>
					<div class="product-price">${dto.p_price }</div>
				</a>
				<a href="#" class="product"> 
					<img src="${dto.p_img }" width="225" height="250px">
					<div class="product-name">${dto.p_name }</div>
					<div class="product-price">${dto.p_price }</div>
				</a>
			</c:forEach>
		</div>
	<div class="clearfix"></div>
	</div>

	
	<div class="paging" style="text-align:center; padding-bottom: 50px;">
		<form action="brand1" method="post">
			<c:if test="${searchVO.totPage>1 }">
				<!-- 토탈 페이지가 1보다 크면 -->
				<c:if test="${searchVO.page>1 }">
					<a href="brand1?page=1">[처음]</a>
					<a href="brand1?page=${searchVO.page-1 }">[이전]</a>
				</c:if>

				<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }"
					var="i">
					<c:choose>
						<c:when test="${i eq searchVO.page }">
							<!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
							<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
						</c:when>
						<c:otherwise>
							<a href="brand1?page=${i }" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise>

					</c:choose>
				</c:forEach>
				<c:if test="${searchVO.totPage>searchVO.page }">
					<!-- 마지막 페이지가 아닐때 -->
					<a href="brand1?page=${searchVO.page+1 }">[다음]</a>
					<a href="brand1?page=${searchVO.totPage }">[마지막]</a>
				</c:if>
			</c:if>
	</div>

	<%@include file="../../../../resources/common/footer.jsp"%>

</body>
</html>