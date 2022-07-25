<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../../../../resources/common/header.jsp" %> 

</head>
<style>
    .search_page{
        width:100%;
        padding-top:250px;
        
        
    }
    #search_keyword{
        float: left;
        display: table-cell;
    vertical-align: middle;
    
    width: 340px;
    
    /* background: yellow; */
    text-align: center;   
    }
    #product_order{
        margin-top: 20px;
        width: 50%;
        height: 30px;

        float:left;
    }
    .product_search{
        margin-top: 20px;
    }
    .div_product{
        width: 50%;
        float: left;
    }
        .product_nosearch{
        margin-top: 50px;
    }
    .div_nosearch{
        margin-top: 5%;
        
        width: 50%;
        float: left; 
    }
    </style>
    
<%--     <c:if test="${mid eq null }">
	<a href="../login/loginform">login</a>
</c:if>
 | 
 <c:if test="${mid ne null }">
 	<a href="../login/logout">logout</a>
 |
 </c:if> --%>
     <%-- ${keyword } --%>
<body>
<c:if test="${not empty product }">
    <div class="search_page">
        <div id="search_keyword">
            <h3><span>home → search → ${keyword }</span></h3>
        </div>
        <div id="product_order">
            <table class="product_order_table" >
                <tr class="product_order_table_tr">
                    <td><a href="" id="tb1">인기상품순</a>&nbsp;|&nbsp;</td>
                    <td><a href="" id="tb1">신상품순</a>&nbsp;|&nbsp;</td>  
                    <td><a href="" id="tb1">낮은가격순</a>&nbsp;|&nbsp;</td>  
                    <td><a href="" id="tb1">높은가격순</a></td>  </span>
                </tr>
                
            </table>
        </div>
        <div class="div_product">
        <table class="product_search">
         <tr>
      <c:forEach items="${product }" var="list" varStatus ="status">
          <c:if test="${status.index%4==0 }">
          </tr><tr>
          </c:if>  
               
                    <td class="td1">
                        <a href="Salebuying.html">
                            <img src="../clothes/옷1.png" width="250" height="350" style="margin-right: 50px;"><p class="p1">${list.pname }</p></a>
                        <a href="Salebuying.html"><p class="p1">${list.pprice }</p></a>
                    </td>
                  
            
     </c:forEach>
    
     </tr>
    
     </table>


        </div>

    </div>
    </c:if>



<c:if test="${empty product }">
    <div class="search_page">
        <div id="search_keyword">
            <h3><span>home → search → ${keyword }</h3>
        </div>
        <div id="product_order">
            <table class="product_order_table" >
                <tr class="product_order_table_tr">
                    <td><a href="" id="tb1">인기상품순</a>&nbsp;|&nbsp;</td>
                    <td><a href="" id="tb1">신상품순</a>&nbsp;|&nbsp;</td>  
                    <td><a href="" id="tb1">낮은가격순</a>&nbsp;|&nbsp;</td>  
                    <td><a href="" id="tb1">높은가격순</a></td>  </span>
                </tr>
                
            </table>
        </div>
        <div class="div_nosearch">
            <table class="product_nosearch">
                <ul> <h1>${keyword }에 대한 검색결과가 없습니다.</h1>
                    <li style="margin-bottom: 30px;">검색어가 올바르게 입력되었는지 확인해 주세요.</li>
                    <li style="margin-bottom: 30px;">일반적인 검색어로 다시 검색해 주세요.</li>
                    <li style="margin-bottom: 30px;">검색어의 띄어쓰기를 다르게 해보세요.</li>
                </ul>
            </table>
        


        </div>

    </div>
</c:if>
    
</body>
</html>