<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>men</title>
       <link rel="stylesheet" href="resources/css/men,women.css">
</head>

<body>
    <header>
        <div class="header_left"><a href=#><img src="resources/headerimg/GUSINSA.png" alt="" id="header_right_img"></a></div>
        <div class="header_right">
            <link rel="stylesheet" href="resources/css/men,women.css">
        <ul id="header_gita">
            <li><input type="checkbox" class="side_list"  id="menuicon">
                <label for="menuicon">
                    <span id="menuicon_span"></span>
                    <span id="menuicon_span"></span>
                    <span id="menuicon_span"></span>
                </label>
                <div class="sidebar">
                    <ul class="sidebar_ul">
                        <li id="sidebar_li"><a href="#" id="sidebar_li_a" style="color: rgb(255, 255, 255);"><b>주문/배송</b></a></li>
                        <li id="sidebar_li"><a href="#" id="sidebar_li_a" style="color: rgb(255, 255, 255);" ><b>매장안내</b></a></li>
                        <li id="sidebar_li"><a href="#" id="sidebar_li_a" style="color: rgb(255, 255, 255);"><b>고객센터</b></a></li>
                        <li id="sidebar_li"><a href="#" id="sidebar_li_a" style="color: rgb(255, 255, 255);"><b>로그인</b></a></li>
                        <li id="sidebar_li"><a href="#" id="sidebar_li_a" style="color: rgb(255, 255, 255);"><b>회원가입</b></a></li>
                    </ul>
                </div></li>
            <!-- <li><a href=#><img src="../headerimg/목록.png" style="margin-right: 80px;" alt="목록" class="header_img"></a></li> -->
            <li><a href=#><img src="resources/headerimg/장바구니.png" style="height: 47px;" alt="장바구니" class="header_img"></a></li>
            <li><a href=""><img src="resources/headerimg/로그인.png" style="height: 47px;" alt="로그인" class="header_img"></li></a>
        </ul>
        </div>
        <div class="first_hearder">
            <input type="text" placeholder="검색어 입력" id="fisrst_search">
            <button id="button_search">검색</button>
        </div>
        <div id="hearder_color"></div>
    
        <div id ="menu_list">
            <nav>
            <ul class="header_menu_NEWARRIVAL">
                <li id="product_menu_list"><a href=# id="high_con">NEW ARRIVAL</a>
    
                </li>
            </ul>
            <ul class="header_menu_BRAND">
                <li id="product_menu_list"><a href="" id="high_con">BRAND</a>
                    <ul class="BRAND_Second">
                        <li class ="ViewallBrands" id="product_menu_list"><a href="" id="con" >View all Brands</a>
                            <ul class="ViewallBrands_Three">
                                <li id="product_menu_list"><a href="" id="con">LLUD Exclusive</a></li>        
                                <li id="product_menu_list"><a href="" id="con">AFTERPRAY</a></li>   
                                <li id="product_menu_list"><a href="" id="con">MPQ</a></li>   
                                <li id="product_menu_list"><a href="" id="con">SUJIPMIHAK</a></li>
                                <li id="product_menu_list"><a href="" id="con">WHITEBOXHGALLERY</a></li>
                            </ul>
                            </li>
    
                        <li class="Restock"  id="product_menu_list"><a href="" id="con">Restock</a>
                            <ul class="BRAND_Three">
                                <li id="product_menu_list"><a href="" id="con">CURATED PARADE</a></li>        
                                <li id="product_menu_list"><a href="" id="con">SANSAN GEAR</a></li>   
                                <li id="product_menu_list"><a href="" id="con">Hatchingroom</a></li>   
                                <li id="product_menu_list"><a href="" id="con">Saturday of us</a></li> 
                            </ul>
                            </li>
    
                       
                    </ul>
                </li>
            </ul>
                <ul class="header_menu_Man">
                    <li id="product_menu_list"><a href=# id="high_con">MEN</a>
                        <ul class="Man_Second">
                            <li class="OUTER"  id="product_menu_list"><a href=# id="con">OUTER</a>
                                <ul class="OUTER_Second">
                                    <li id="product_menu_list"><a href="" id="con">JACKET</a></li>        
                                    <li id="product_menu_list"><a href="" id="con">Coat</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Jumper</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Biazer</a></li> 
                                </ul></li>
                            <li class="TOP" id="product_menu_list"><a href=# id="con">TOP</a>
                                <ul class="TOP_Second">
                                    <li id="product_menu_list"><a href="" id="con">Shirts(LS)</a></li>        
                                    <li id="product_menu_list"><a href="" id="con">Shirts(1/2)</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Tee(LS)</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Tee(1/2)</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Sleeveless</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Knit</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Vest</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Hoodie</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Sweatshirts</a></li> 
                                </ul></li>
                            <li id="product_menu_list"><a href=# id="con">BOTTOM</a></li>
                            <li id="product_menu_list"><a href=# id="con">ACCESSORIES</a></li>
                            <li class="LIFE" id="product_menu_list"><a href=# id="con">LIFE</a>
                                <ul class="LIFE_Second">
                                    <li id="product_menu_list"><a href="" id="con">HOME</a></li>        
                                    <li id="product_menu_list"><a href="" id="con">Beauty</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Paper</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Digital</a></li> 
                                </ul></li>
                        </ul>
                    </li>
                </ul>
                <ul class="header_menu_WOMEN">
                    <li id="product_menu_list"><a href=# id="high_con">WOMEN</a>
                        <ul class="WOMEN_Second">
                            <li class="OUTER" id="product_menu_list"><a href=# id="con">OUTER</a>
                                <ul class="OUTER_Second">
                                    <li id="product_menu_list"><a href="" id="con">JACKET</a></li>        
                                    <li id="product_menu_list"><a href="" id="con">Coat</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Jumper</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Biazer</a></li> 
                                </ul></li>
                            <li class="TOP" id="product_menu_list"><a href=# id="con">TOP</a>
                                <ul class="TOP_Second">
                                    <li id="product_menu_list"><a href="" id="con">Shirts(LS)</a></li>        
                                    <li id="product_menu_list"><a href="" id="con">Shirts(1/2)</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Tee(LS)</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Tee(1/2)</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Sleeveless</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Knit</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Vest</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Hoodie</a></li> 
                                    <li id="product_menu_list"><a href="" id="con">Sweatshirts</a></li> 
                                </ul></li>
                            <li id="product_menu_list"><a href=# id="con">BOTTOM</a></li>
                            <li id="product_menu_list"><a href=# id="con">ACCESSORIES</a></li>
                            <li class="LIFE"  id="product_menu_list"><a href=# id="con">LIFE</a>
                                <ul class="LIFE_Second">
                                    <li id="product_menu_list"><a href="" id="con">HOME</a></li>        
                                    <li id="product_menu_list"><a href="" id="con">Beauty</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Paper</a></li>   
                                    <li id="product_menu_list"><a href="" id="con">Digital</a></li> 
                                </ul></li>
                        </ul>
                    </li>
                </ul>
                <ul class="header_menu_SALE">
                    <li id="product_menu_list"><a href=# id="high_con">유저리뷰</a>    
                        <ul class="SALE_Second"> 
                        </ul>
                    </li>
                </ul>
                <ul class="header_menu_Userrivw">
                    <li id="product_menu_list"><a href=# id="high_con">SALE</a>    
                        <ul class="Userrivw_Second"> 
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header> 
    <table class="guide">
        <tr>
            <td><a href="">HOME</a>&nbsp;></td>
            <td><a href="">MEN</a></td>
        </tr>
    </table>
    <table class="tb1" style=" position: relative; left: 350px;">
        <tr class="tr1">
            <td><a href="" id="tb1">인기상품순</a>&nbsp;|&nbsp;</td>
            <td><a href="" id="tb1">신상품순</a>&nbsp;|&nbsp;</td>  
            <td><a href="" id="tb1">낮은가격순</a>&nbsp;|&nbsp;</td>  
            <td><a href="" id="tb1">높은가격순</a></td>  
        </tr>
        
    </table>
    <table >
        <tr>
            <td class="category">MEN</td>
        </tr>
    </table>
    <table class="category_bt">
        <tr>
            <td><a href="./men.outer.html">OUTER</a></td>
        </tr>
        <tr>
            <td><a href="">TOP</a></td>
        </tr>
        <tr>
            <td><a href="">BOTTOM</a></td>
        </tr>
        <tr>
            <td><a href="">ACCESSORIES</a></td>
        </tr>
        <tr>
            <td><a href="">LIFE</a></td>
        </tr>
    </table>

    <table class="t2">
        <tr>
     	<c:forEach items="${men }" var="dto">
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="${dto.p_img }" width="250" height="350"><p class="p1">${dto.p_name }</p></a>
                <a href="Salebuying.html"><p class="p1">${dto.p_price }</p></a>
            </td>
         
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="${dto.p_img }" width="250" height="350"><p class="p1">${dto.p_name }</p></a>
                <a href="Salebuying.html"><p class="p1">${dto.p_price }</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="${dto.p_img }" width="250" height="350"><p class="p1">${dto.p_name }</p></a>
                <a href="Salebuying.html"><p class="p1">${dto.p_price }</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="${dto.p_img }" width="250" height="350"><p class="p1">${dto.p_name }</p></a>
                <a href="Salebuying.html"><p class="p1">${dto.p_price }</p></a>
            </td>
          
        </tr>
         </c:forEach>
    </table>

   
   <div class="paging" style="padding-left: 800px; padding-bottom: 50px;">
    <form action="men" method="post">
	<c:if test="${searchVO.totPage>1 }"> <!-- 토탈 페이지가 1보다 크면 -->
		<c:if test="${searchVO.page>1 }">
			<a href="men?page=1">[처음]</a>
			<a href="men?page=${searchVO.page-1 }">[이전]</a>
		</c:if>
	
	<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
		<c:choose>
			<c:when test="${i eq searchVO.page }">  <!-- i eq searchVO.page 내가 클릭한 페이지가 같을 때 -->
				<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
			</c:when>
			 <c:otherwise>
				<a href="men?page=${i }" style="text-decoration: none">${i }</a>&nbsp;
			</c:otherwise> 
		
		</c:choose>
	</c:forEach>
		<c:if test="${searchVO.totPage>searchVO.page }"> <!-- 마지막 페이지가 아닐때 -->
			<a href="men?page=${searchVO.page+1 }">></a>
			<a href="men?page=${searchVO.totPage }">>></a>
		</c:if>
	</c:if>
    </div>
  
  
  
    <div id='wrap'>
        <section id="wrap_section">
            
        </section>
        <footer>
            <div id="footer_addr">
    
          <p>
            <table>
            <tr>
                <td>상호명 : (주)구신사</td>
                <td>조장 : 이종현</td>
                <td>주소 : 서울시 구로구 </td>
            </tr>
            <tr>
                <td colspan="3">이메일 : dlwhdgus@gmail.com</td>
                <td></td>
                <td></td>
            </tr>
            </table>
          </p>
        </div>
    
          <div class="footer_div">
            <table>
                <tr>
                    <td>고객문의 대표전화</td>
                    <td>고객센터 문의전화</td>
                </tr>
                <tr>
                    <td>1588-1588</td>
                    <td>1588-3407</td>
                </tr>
                <tr>
                    <td>평일 09:00 ~ 18:00 <br>(주말 및 공휴일 휴무)</td>
                    <td><a href="#">구신사 상품 문의접수</a></td>
                </tr>
            </table>
          </div>
      </footer>
    </div>  

</body>



</html>