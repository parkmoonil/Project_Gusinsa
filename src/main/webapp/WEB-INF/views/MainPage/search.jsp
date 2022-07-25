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
        width:1500px;
        padding-top :230px;
        
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
        

        float:left;
    }
    .product_search{
        margin-top: 20px;
    }
    .div_product{
        float: left;
    }
    .td1{
        margin-right: 500px;
    }
    </style>
     <%-- ${keyword } --%>
<body>
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
         
      <c:forEach items="${product }" var="list">
            <tr>
               
                    <td class="td1">
                        <a href="Salebuying.html">
                            <img src="../clothes/옷1.png" width="250" height="350"><p class="p1">${list.pname }</p></a>
                        <a href="Salebuying.html"><p class="p1">${list.pprice }</p></a>
                    </td>
                 </tr>
            
     </c:forEach>
    
     </table>


        </div>

    </div>
    
</body>
</html>