<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/salemain.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>  
    <table class="tb1">
        <tr class="tr1">
            <td>인기상품순&nbsp;|&nbsp;</td>
            <td>신상품순&nbsp;|&nbsp;</td>  
            <td>낮은가격순&nbsp;|&nbsp;</td>  
            <td>높은가격순</td>  
        </tr>
        
    </table>
    <br><br><br><br><br>
    <table class="t2" align="center">
        </tr>
        <tr class="tr1">
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/rengoku.jpg" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
                </a>    
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/uzui.jpeg" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
                </a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/mitsuri.jpeg" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
                </a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/shinobu.jpeg" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
                </a>
            </td>
        </tr>
    </table>

    <table class="t2" align="center">
        <tr>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/tanjiro.png" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
                <a href="Salebuying.html"></a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/zenitsu.png" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
            </a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/inosuke.png" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
            </a>
            </td>
            <td class="td1">
                <a href="Salebuying.html">
                    <img src="resources/img/nezuko.png" width="300" height="350"><p class="p1">할인가격 및 할인율</p>
            </a>
            </td>
        </tr>
    </table>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>