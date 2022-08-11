<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head> 
<body onload="init();">
<%@include file="../../../../resources/common/header.jsp"%>
<style>

	

	.option_color{
	  position:relative;
	  left:5px;
	  width:  150px;
	  height: 40px;
	   position:relative;
	   
	   
	}
	.option_size{
	  position:relative;
	  left:15px;
	  width:  150px;
	  height: 40px;
	}


    .a1{
        color:darkgray;
        
    }
    .a1:hover{
        color: gray;
    }
    .div1{
        margin-left: 100px;
        padding-top: 300px;
    }
    .div2{
        margin-top: 100px;
        margin-left: 100px;
    
    }
    .div3,.div4{
        float: left;
        margin-left: 100px;
    }
    .figcap1{
        font-weight: bold ;
        text-align: right;
        font-size: 40px;
    }
    .hr1{
        border: 0;
        height: 3px;
        background: black;
        width: 100%;
    }
    .figcap2{
        font-size: 20px;
    }

    .h2-1 {
       color: red;
    }
    .tb1{
        border-style: none;
        width: 100%;
    }
    .td1{
        font-size: 130%;
        font-weight: bold;
        height: 20px;
        padding-left: 15px;
        background-color: #ccc;
    }
    .td2{
        font-size: 130%;
        padding-left: 15px;
        padding-top: 15px;
    }
    .form1{
        text-decoration: line-through;
    }
    .form1,.form2,.form3{
        float: left;
    }
    .input1{
        width: 30px;
    }
    .form3{
        padding-left: 70px ;
        padding-right: 10px;
    }
    p {
        margin: 0 0 20px;
        line-height: 1.5;}
    .main {
        min-width: 320px;
        max-width: 800px;
        padding: 50px;
        background: #ffffff;
        padding-left: 9%;
        
        }
    section {
        display: none;
        padding: 20px 0 0;
        border-top: 1px solid #ddd;}
    /*라디오버튼 숨김*/
      #tab1,#tab2,#tab3,#tab4 {
          display: none;}
    label {
        display: inline-block;
        margin: 0 0 -1px;
        padding: 15px 25px;
        font-weight: 600;
        text-align: center;
        color: #bbb;
        border: 1px solid transparent;}
    label:hover {
        color: #2e9cdf;
        cursor: pointer;}
    /*input 클릭시, label 스타일*/
    input:checked + label {
          color: #555;
          border: 1px solid #ddd;
          border-top: 2px solid black;
          border-bottom: 1px solid #ffffff;}
    #tab1:checked ~ #content1,
    #tab2:checked ~ #content2,
    #tab3:checked ~ #content3,
    #tab4:checked ~ #content4 {
        display: block;}
    .content2{
        font-weight: bold;
        font-size: 500%;
    }
    .content3{
        font-weight: bold;
        font-size: 500%;
    }
    .content4{
        font-weight: bold;
        font-size: 500%;
    }
    .btn1{
        color: black;
        width: 50%;
        height: 40px
    }
    .Ja1{
        text-decoration-line: none;
    }
    .btn2{
        color: white;
        background-color: black;
        width: 50%;
        height: 40px
    }
    .btn1,.btn2{
        float: left;
    }
    .div5{
        min-width: 320px;
        max-width: 800px;
        padding: 50px;
        background: #ffffff;
        padding-left: 9%;
    }
    .figcap3{
        font-weight: bold;
        font-size: 150%;
    }
    .tb2{
        border-style: none;
        width: 100%;
        height: 200px;
        border-collapse: collapse;
    }
    .td3{
        font-weight: bold;
        width: 25%;
    }
    .div6{
        padding-left: 9%;
    }
    
</style>

<script>

</script>


<script language="JavaScript">

var sell_price;
var amount;


function init () {
    sell_price = document.form.sell_price.value;
    amount = document.form.amount.value;
    document.form.sum.value = sell_price;
    change();
}

function add () {
    hm = document.form.amount;
    hm.value ++ ;

    var sum_ = parseInt(hm.value) * sell_price;
document.getElementById("my_sum").innerHTML=sum_;
}

function del () {
    hm = document.form.amount;
        if (hm.value > 1) {
            hm.value -- ;
            var sum_ = parseInt(hm.value) * sell_price;
document.getElementById("my_sum").innerHTML=sum_;
        }
}

function change () {
    hm = document.form.amount;

        if (hm.value < 0) {
            hm.value = 0;
        }
    var sum_ = parseInt(hm.value) * sell_price;
document.getElementById("my_sum").innerHTML=sum_;
} 

function move() {
	let amount = document.getElementById("amount").value;
	let sell_price = document.getElementById("sell_price").value;
	
	let sum = sell_price * amount;
    let sping = 2500;
    
    if (sum > 50000){
    	sping = 0;
    }
    let sumsping= sum+sping;
	// 스페이스바 주의 null값 우려
	location.href ="Orderafterlogin?p_code=${indto.p_code }"+"&amount="+ amount +"&sell_price="+sum+"&sping="+sping+"&sumsping="+sumsping; 

}	
</script>
    <br>
    <hr>
    <br>
    
    <div class="div1">
        <a href="" class="a1">수납/생활</a> > <a href="" class="a1">생활용품/문구</a> > <a href="" class="a1">원목선반/테이블/의자</a>
    </div>
    <div class="div2">
        <figure>
            <h1>${indto.p_name }</h1>
        </figure>
    </div>
    <br>
    <div class="div3">
        <figure>
            <img src="${indto.p_img }" id="image1" 
            width="800" height="550" style="border: 1px solid #ccc;">
            <figcaption> </figcaption>
        </figure>
    </div>
    <div class="div4">
        <figure class="fig1">
            <h2 class="h2-1">41%</h2>
            <figcaption class="figcap1"> ${indto.p_price } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;♡</figcaption> <br>
            <hr class="hr1"> <br>
            <figcaption class="figcap2">
                제품번호 : ${indto.p_code }<br>
                배송정보 : 10만원 이상 구매시 무료
            </figcaption> 
            <br> <br>
            <figcaption class="">
                <table border="1px" class="tb1">
                    <tr>
                        <td class="td1">상품 옵션</td>
                    </tr>

					<tr id="option_color"> <!-- 맨위쪽에 css있어요 .option_color -->
                    color  
                     <select name="option_color" class="option_color">
                    <option value="">선택</option>
                    <option value="blue">blue</option>
                    
                </select>
               <br />
                    
                    </tr>
                    <trid="option_size" >
                    size  <select name="option_size" class="option_size">
                    <option value="">선택</option>
                    <option value="free">free</option>
                    
                     </select>
                    </tr>	
					
					
					
                    <tr>
                        <td class="td2">단품 <br>
                           <form class="form1">47,900원</form>
                            <form class="form2">금액 : <div id="my_sum" name = "my_sum"></div>원</form>                       
                            <form class="form3" name = "form" method = "get"> 
                                <input type="text" id = "amount" name="amount" value="1" size="3" onchange="change();"> 
								<input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();"><br>
								<input type="hidden" name="sum" size="11" readonly>
								수량 : <input type=hidden id = "sell_price" name="sell_price" value="${indto.p_price }">
                            </form> 
                            <br>
                            
                          
                        </td>
                        
                    </tr>
           
                    
                    
                </table>
            </figcaption>
            <br>
            

            <figcaption>
                <button type="button" class="btn1"> <a href="SaleCart" class="Ja1">장바구니</a> </button>
                <button type="button" class="btn2" onclick="move()" >구매하기</button>
            </figcaption>
        </figure>
    </div>
    <br> <br>
    <div class="main">
        <input id="tab1" type="radio" name="tabs" checked> 
        <label for="tab1">상품정보</label>
    
        <input id="tab2" type="radio" name="tabs">
        <label for="tab2">상품리뷰</label>
    
        <input id="tab3" type="radio" name="tabs">
        <label for="tab3">Q&A</label>
    
        <input id="tab4" type="radio" name="tabs">
        <label for="tab4">배송/교환/환불안내</label>
    
        <section id="content1">
            <p>
                <img src="resources/img/rengoku2.jpeg" alt="rengoku2"
                width="800" height="1000">
            </p>

        </section>
    
        <section id="content2" class="content2">
            <p>코코로오 오모야세 !</p>
        </section>
    
        <section id="content3" class="content3">
            <p>Q: 제품이름 <br>
                A: 렌고쿠
            </p>
        </section>
    
        <section id="content4" class="content4">
            <p>젠이츠로 바꿔주세요~</p>
        </section>
    
    </div>
    
    <div class="div5">
        <figure>
            <figcaption class="figcap3">제품정보</figcaption>
            <table border="" class="tb2">
                <tr>
                    <td class="td3">제품번호</td>
                    <td>${indto.p_code }</td>
                </tr>
                <tr>
                    <td class="td3">품명 및 모델명</td>
                    <td>${indto.p_name }</td>
                </tr>
                <tr>
                    <td class="td3">가격</td>
                    <td>${indto.p_price }</td>
                </tr>
                <tr>
                    <td class="td3">분류</td>
                    <td>${indto.p_class }</td>
                </tr>
            </table>
        </figure>
    </div>
    
    <hr>
    <%@include file="../../../../resources/common/footer.jsp" %>
    
</body>

<html>

</html>