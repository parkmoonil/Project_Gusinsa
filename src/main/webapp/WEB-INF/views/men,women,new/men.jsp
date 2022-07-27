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
   
</head>

<body>
<%@include file="../../../../resources/common/header.jsp" %>   
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

    <table class="t2" >
        <tr>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="../clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="../clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="../clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="../clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
        </tr>
    </table>
    <table class="t2" >
        <tr>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/clothes/옷1.png" width="250" height="350"><p class="p1">제품명</p></a>
                <a href="Salebuying.html"><p class="p1">가격</p></a>
            </td>
        </tr>
    </table>
    <h3>hype boy</h3>
  <form action="men" method="post">
	<c:if test="${searchVo.totPage>1 }">
		<c:if test="${searchVo.page>1 }">
			<a href="men?page=1">[처음]</a>
			<a href="men?page=${searchVo.page-1 }">[이전]</a>
		</c:if>
		<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }" var="i">
			<c:choose>
				<c:when test="${i eq searchVo.page }">
					<span style="color: red; font-weight: bold;">${i }&nbsp;</span>
				</c:when>
				<c:otherwise>
					<a href="list?page=${i }&sk=${resk}&btitle=${btitle==true?'btitle':'' }&bcontent=${bcontent==true?'bcontent':'' }" style="text-decoration: none">${i }</a>&nbsp;
				</c:otherwise>
			
			</c:choose>
		</c:forEach>
		<c:if test="${searchVo.totPage>searchVo.page }">
			<a href="list?page=${searchVo.page+1 }">[다음]</a>
			<a href="list?page=${searchVo.totPage }">[마지막]</a>
		</c:if>
	</c:if>
  
  
  
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