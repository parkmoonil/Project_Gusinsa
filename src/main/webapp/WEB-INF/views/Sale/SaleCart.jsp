<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<style>
.div1{
        padding-top: 350px;
        padding-left: 5%;
        padding-bottom: 5%;
        font-weight: bold;
        font-size: 300%;
        font-family:'Times New Roman', Times, serif;
    }
    .div2{
        padding-right: 5%;
        padding-left: 5%;
    }
    .fig1{
        display: flex;
        justify-content: space-between;
    }
    .figc1{
        font-weight: bold;
        font-size: 200%;
    }
    .figc2{
        color: #a8a8a8;
    }
    .hr1{
        width: 95%;
    }
    .div3{
        padding-left: 5%;
    }
    .tb1{
        border: none;
        width: 95%;
        empty-cells: hide;
        border-collapse: collapse;
        border-bottom: 1px solid #9a9a9a ;
    }
    .img1{
        width: 200px;
        height: 200px;
        border-radius: 10px;
    }
    .input1{
        width: 10%;
    }
    .btn1{
        background-color: black;
        color: white;
    }
    .tr1{
        height: 50px;
        background-color:#f7f7f7;
    }
    .td1{
        /* font-weight: bold; */
        padding-left: 3%;
    }
    .td2{
        text-align: right;
    }
    .td3{
        text-align: center;
    }
    .span1{
        font-weight: bold;
        font-size: 200%;
    }
    .span2{
        text-decoration: line-through;
        margin-left: 60px;

    }
    .div4,.div5{
        padding-left: 5%;
    }
    .tb2{
        border: none;
        width: 95%;
    }
    .td4,.td5{
        border-left:1px black;
    }
    .td6{
        text-align: right;
    }
    .div5{
        padding-top: 5%;
        padding-right: 5%;
        text-align: right;
    }
    .fig2{
        color: #a8a8a8;
    }
    .hr2{
        border: 0px;
        width: 95%;
        height: 2px;
        background-color: black;
    }
    .div6{
        padding-left: 6%;
        display: flex;
        justify-content: center;
    }
    .fig3,.fig4,.fig5,.fig6,.fig7,.fig8,.fig9{
        text-align: center;
    }
    .figc3,.figc4,.figc5,.figc6{
        font-weight: bold;
        font-size: 200%;
    }
    .fig4,.fig6,.fig8{
        font-weight: bold;
        font-size: 200%;
    }
    .hr3{
        width: 85%;
    }
    .div7{
        padding-left: 5%;
        padding-top: 5%;
        text-align: center;   
    }
    .btn2,.btn3{
        display: inline-block;
        width: 20%;
        height: 50px;
    }
    .btn2{
        background-color: white;
    }
    .btn3{
        background-color: black;
        color: white;
    }
</style>
    <div class="div1">
        SHOPPING CART
    </div>
    <div class="div2">
        <figure class="fig1">
            <figcaption class="figc1">
                배송일 지정 상품 
            </figcaption>
            <figcaption class="figc2">
                주문/결제 시 배송일을 지정해야 하는 상품입니다.
            </figcaption>            
        </figure>
        <hr class="hr1">
    </div>

    <div class="div3">
        <figure>
            <figcaption>
                <table class="tb1">
                    <tr>
                        <td><input type="checkbox" checked></td>
                        <td><img src="resources/img/rengoku2.jpeg" alt="" class="img1"></td>
                        <td>Rengoku Kyojuro <br>화염의 호흡 </td>
                        <td>
                            <input type=button value="-" onClick="javascript:this.form.amount.value--;"> 
                                <input type=text name=amount class="input1" value=1 style="text-align:center;" width=10%> 
                                <input type=button value="+" onClick="javascript:this.form.amount.value++;">
                        </td>
                        <td> <span class="span1">25,900원</span> <br> 
                            <span class="span2">47,900원</span> </td>
                        <td>
                            <button type="button" class="btn1">바로구매</button>
                        </td>
                        <td class="td2">♡</td>
                        <td class="td3">X</td>
                    </tr>
                    <tr class="tr1">
                        <td colspan="4" class="td1">판매자: (주)귀살대</td>
                        <!-- <td>1</td>
                        <td>1</td>
                        <td>1</td> -->
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>무료배송</td>
                    </tr>
                </table>

            </figcaption>
        </figure>

    </div>
    <div class="div4">
        <figure>
            <figcaption>
                <table class="tb2">
                    <tr>
                        <td><input type="checkbox" checked></td>
                        <td class="td4">전체선택</td>
                        <td class="td5">선택삭제</td>
                        <td>품절/판매종료 상품 삭제</td>
                        <td colspan="3"></td>
                        <td></td>
                        <td></td>
                        <td class="td6">장바구니에 담긴 상품은 <b>30일 이후</b> 자동 삭제됩니다.</td>
                    </tr>
                </table>

            </figcaption>

        </figure>
    </div>
    
    <div class="div5">
        <figure class="fig2">
            쿠폰은 주문서 작성 시 적용하실 수 있습니다.
        </figure>
        <hr class="hr2">
    </div>
    <div class="div6">
        <figure class="fig3">
            <figcaption>
                총 상품금액
            </figcaption>
            <figcaption class="figc3">
                47,900원
            </figcaption>
        </figure>

        <figure class="fig4">
            -
        </figure>

        <figure class="fig5">
            <figcaption>
                총 할인금액
            </figcaption>
            <figcaption class="figc4">
                22,000원
            </figcaption>
        </figure>

        <figure class="fig6">
            +
        </figure>

        <figure class="fig7">
            <figcaption>
                총 배송비
            </figcaption>
            <figcaption class="figc5">
                0원
            </figcaption>
        </figure>

        <figure class="fig8">
            =
        </figure>

        <figure class="fig9">
            <figcaption>
                총 결제예정 금액
            </figcaption>
            <figcaption class="figc6">
                25,900원
            </figcaption>
        </figure>
      
    </div>
    <hr class="hr3">
    <div class="div7">
        <figure>
            <figcaption class="figc7">
                <button type="button" class="btn2">선택상품구매</button> 
                <button type="button" class="btn3">전체상품구매</button>
            </figcaption>

        </figure>

    </div>
    <br> <br>
    <%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>