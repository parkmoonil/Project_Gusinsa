<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="resources/css/mypage/main.css">
<link rel="stylesheet" href="resources/css/mypage/board.css" />
<title>장바구니</title>
</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<script>
let basket = {
	    totalCount: 0, 
	    totalPrice: 0,
	    //체크한 장바구니 상품 비우기
	    delCheckedItem: function(){
	        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	            item.parentElement.parentElement.parentElement.remove();
	        });
	        //AJAX 서버 업데이트 전송
	    
	        //전송 처리 결과가 성공이면
	        this.reCalc();
	        this.updateUI();
	    },
	    //장바구니 전체 비우기
	    delAllItem: function(){
	        document.querySelectorAll('.row.data').forEach(function (item) {
	            item.remove();
	          });
	          //AJAX 서버 업데이트 전송
	        
	          //전송 처리 결과가 성공이면
	          this.totalCount = 0;
	          this.totalPrice = 0;
	          this.reCalc();
	          this.updateUI();
	    },
	    //재계산
	    reCalc: function(){
	        this.totalCount = 0;
	        this.totalPrice = 0;
	        document.querySelectorAll(".p_num").forEach(function (item) {
	            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
	                var count = parseInt(item.getAttribute('value'));
	                this.totalCount += count;
	                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
	                this.totalPrice += count * price;
	            }
	        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
	    },
	    //화면 업데이트
	    updateUI: function () {
	        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
	        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
	    },
	    //개별 수량 변경
	    changePNum: function (pos) {
	        var item = document.querySelector('input[name=p_num'+pos+']');
	        var p_num = parseInt(item.getAttribute('value'));
	        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
	        
	        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

	        item.setAttribute('value', newval);
	        item.value = newval;

	        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
	        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
	        //AJAX 업데이트 전송

	        //전송 처리 결과가 성공이면    
	        this.reCalc();
	        this.updateUI();
	    },
	    checkItem: function () {
	        this.reCalc();
	        this.updateUI();
	    },
	    delItem: function () {
	        event.target.parentElement.parentElement.parentElement.remove();
	        this.reCalc();
	        this.updateUI();
	    }
	}

	// 숫자 3자리 콤마찍기
	Number.prototype.formatNumber = function(){
	    if(this==0) return 0;
	    let regex = /(^[+-]?\d+)(\d{3})/;
	    let nstr = (this + '');
	    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
	    return nstr;
	};
	
 
	 

</script>

 <script>
function move() {
		alert("저장되셨습니다");
	   let amount = document.getElementById("sum_p_num").value;
	   let sell_price = document.getElementById("sum_p_price").value;
	   let mid = '<%=(String)session.getAttribute("mid")%>';
	   let sum = sell_price * amount;
	    let sping = 2500;
	    let option_size = document.getElementById("option_size").value;
	    if (sum > 50000){
	       sping = 0;
	    }
	    
	    let sumsping= sum+sping;
	    
        location.href ="cart_buypage?amount="+ amount +"&sell_price="+sum+"&sping="+sping+"&sumsping="+sumsping+"&p_size="+option_size; 

</script> 
<style>
.cs_left_title{
    /* position: absolute;
    top: 100px;
    left: 70px; */
    color: #000;
    font-size: 30px;
    white-space: nowrap;
    font-weight: bold;
    border-bottom: 3px solid #000;
    width: 250px;
    margin: 20px 22px 0 0;
    padding-bottom: 20px;
   
}

.cs_left_nav{
    width: 250px;
    grid-area: nav;
    /* background-color: lightblue; */
    
}

.cs_left_list{
    border-bottom: 1px solid #e5e5e5;
    height: 60px;
    margin: 11px 0 0 0;
    font-size: 15px;

}

.cs_left_contact{
    line-height: 6%;
}

ul{
    list-style: none;
    -webkit-padding-start: 0;
}

.cs_main_board{
    grid-area: board;
}

/* .cs_table_notice{
    width: 70%;
    border-collapse: collapse;
   
} */

.cs_main{
    display: grid;
    grid-template-columns: 1fr 300px 1200px 1fr;
    grid-template-areas: " . nav board . ";
}

.cs_table_title{
    font-size: 22px;
}

.cs_table_bestfaq{
    border-collapse: collapse;
    display: block;
    width: 100%;
}

.cs_table_row1{
    width: 30%;
}

.cs_table_notice{
    display: block;
    width: 100%;
}

.line {
    font-size: 30px;
    border-bottom: 3px solid #000;
    margin: 20px 0 0 0;
    padding-bottom: 60px;
    
}

.line2 {
    font-size: 30px;
    border-bottom: 1px solid #b2b2b2;
    margin: 20px 0 0 0;
    padding-bottom: 60px;
    
}

th{
    border-bottom: 2px solid #000;
    text-align: left;
}

td{
    margin: 11px 0 0 0;
    font-size: 15px;
    /* height: 60px; */
}


.write_button {
	text-align: right;
}

.notice_search td {
	border-bottom: none;
}

.noticeboard_date {
	text-align: center;
}
.search_textarea {
	text-align: right;
}

.notice_search input {
	width: 300px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
}

.notice_blank {
	width: 100%;
	height: 82px;
	border-bottom: 3px solid #000;
	
}

.notice_search {
	margin-bottom: 40px;
}


.noitce_table_content_view td{
	padding-left: 35px;
}
.noitce_table_content_view th{
	font-size: 20px;
	background-color: #F7F7F7;
	padding-left: 35px;
}
.notice_view_date {
	font-size: 15px;
	background-color: #F7F7F7;
	border-bottom: 1px solid #000;
	
}
.noticeboard_page{
	text-align: center;
}

.cs_main_board h3{
	margin-bottom: 50px;
}

.point {
    display: inline-block;
    margin-left: 10px;
    color: #ff3e2f;
    font-size: 17px;
    vertical-align: middle;
}

@charset "UTF-8";

table {
	border-collapse: collapse;
    width: 100%;
	border: none;
}

tr, td, th {
	border: none; 
}

th {
	/* border-bottom: 2px solid #000;  */
	height: 50px;
}

  th:first{
     border-bottom: 2px solid #000; 
   }
td {
border-bottom: 1px solid #e5e5e5; 
	height: 50px;
}

.noticeboard_title {
	width: 68%;
	text-align: left;
}

.noticeboard_td_date {
	text-align: center;
}

a {
	text-decoration: none;
	color: inherit;
}


#mypage_orderlist{
font-weight: bold;
}

a:hover{
font-weight: bold;
}

.paging{
    width : 100%;
    /* float:right; */
    margin-bottom : 50px;
     text-align: center;
}
#page{
       padding-bottom: 50px;
       text-align: center;
}

/* 장바구니 */
.Mypage{
    width: 80%;
    height: auto;
    
    text-align: center;
    
}
.mypage_content{
    width: 75%;
    float: right;
    height: auto;
    margin-top: 20px;
    margin-right: 40px;
}
.mypage_content hr{
    float: left;
}
.mypage_list{
    float: left;
    width: 20%;
    text-align: center;
    
    
    height: 100%;
    margin: auto;
}
hr{
    width: 90%;
}
#mypage_list_a{
    text-decoration: none;
    padding-bottom: 10px;
}
#mypage_list_a:link{
    color: rgb(197, 197, 197);
}
#mypage_list_a:hover{
    color: rgb(78, 78, 78);
}
.mypage_content table{
    width: 90%;
    text-align: center;
    
}
#table_head td{
    font-size: 20px;
    font-weight: bold;
}

/* 장바구니스타일 */


.basketdiv {
    width: 100%;
    border-top: 1px solid #e0e0e0;
    float: left;
    font-size: 0.9375em;
    margin-bottom: 20px;
}
    .basketdiv .row.head {
        border-bottom: 2px solid #888;
        box-sizing: border-box;
        background-color: #f4f4f4;
        font-weight: 500;
    }
    .basketdiv .data {
        border-bottom: 1px dashed #888;
        box-sizing: border-box;
        cursor: pointer;
        float: left;
        width: 100%;
    }
    .basketdiv .data .empty{
        text-align: center;
        padding: 12px 0;
    }
    .basketdiv .row.head .subdiv {
        background-color: #f4f4f4;
    }
    .basketdiv .row > .subdiv {
        display: block;
        float: left;
    }
    .basketdiv .row > .subdiv:nth-child(1) {
        width: 50%;
    }
    .basketdiv .row > .subdiv:nth-child(2) {
        width: 40%;
    }
    .basketdiv .row > .subdiv:nth-child(3) {
        width: 10%;
    }
    .basketdiv2 .row > .subdiv:nth-child(1) {
        width: 60%;
    }
    .basketdiv2 .row > .subdiv:nth-child(2) {
        width: 40%;
    }
    .basketdiv .row > div > div {
        display: block;
        float: left;
        text-align: center;
        margin: 0;
        padding: 12px 0;
    }
    .basketdiv .row.data > div > div {
        height: 60px;
        line-height: 60px;
    }
        .basketdiv .data .num .updown {
            color: #0075ff;
            font-size: 2em;
            letter-spacing: -5px;
        }
        .basketdiv .check {
            width: 10%;
        }
    .basketdiv .check input[type=checkbox] {
        transform: scale(1.5);
    }
    .basketdiv .img{
        width: 20%;
    }
    .basketdiv .pname{
        width: 70%;
    }
    .basketdiv2 .pname {
        width: 80%;
    }
    .basketdiv .basketprice {
        width: 33%;
    }
    .basketdiv .num {
        width: 33%;
      min-width: 105px;
    }
    .basketdiv .sum {
        width: 34%;
      max-width: 80px;
        color: #0000aa;
    }
    .basketdiv .point {
        width: 50%;
    }
    .basketdiv2 .basketprice {
        width: 25%;
    }

    .basketdiv2 .num {
        width: 25%;
    }

    .basketdiv2 .sum {
        width: 25%;
        color: #0000aa;
    }

    .basketdiv2 .point {
        width: 25%;
    }
    .basketdiv .basketcmd{
        width: 100%;
    }
    .basketdiv .data .pname {
        text-align: left !important;
      line-height: 1.2 !important;
    }
    .basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point {
        text-align: right;
    }
    .baseform > tbody > tr > td:first-child {
        width: 100px;
    }

.buttongroup {
    padding: 11px 0;
    margin: 50px 0;
}
.narrowbuttongroup{
    margin: 15px 0;
}
    .buttongroup.center {
        text-align: center;
    }
    .buttongroup input[type=text], .buttongroup input[type=password] {
        height: 30px;
    }
    .buttongroup button, .buttongroup a {
        margin-right: 5px;
    }
        .buttongroup button:last-child, .buttongroup a:last-child {
            margin-right: 0;
        }

    .abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button] {
        background-color: #383838;
        border: 1px solid #888888;
        color: #ffffff;
        cursor: pointer;
        letter-spacing: -1px;
        padding: 3px 5px;
        margin: 2px 3px;
        width: auto;
        word-break: keep-all;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9375em;
    }

.abutton-alt {
    background-color: #d3e2c6;
}

.red {
    color:#b00;
}
.blue {
  color: #0075ff;
}
.basketrowcmd, .sumcount, .summoney{
  text-align: right;
  margin-bottom: 10px;
}
.sumcount, .summoney{
  font-size: 1.25em;
    font-weight: bold;
}
.buttongroup{
  text-align: center;
}
.buttongroup a{
  text-decoration: none;
}
.cmd a, .cmd span {
    padding: 12px 30px;
    box-sizing: border-box;
    margin-top: 10px;
    font-size: 1.2em;
    color: #000;
    background-color: #f4f4f4;
    border: 1px solid #e0e0e0;
    text-align: center;
}
.cmd.small a, .cmd.small span {
    padding: 6px 20px;
    font-size: 0.8125em;
}

.orderform .p_num {
    text-align: right;
    width: 40px;
    font-size: 1em;
}

</style>

<body>
<%@include file="../../../../resources/common/header.jsp" %> 
<div class="cs_main">
<div class="cs_left_nav">
        <h2 class="cs_left_title"><a href="mypage_orderlist">
            마이페이지
        </a></h2>
        <ul>
            <li class="cs_left_list" ><a href="noticeboard">
                회원정보 수정
            </a></li>
            <li class="cs_left_list"><a href="mypage_orderlist" id = "mypage_orderlist">
                주문 내역
            </a></li>
            <li class="cs_left_list"><a href="../MyCart">
                장바구니
            </a></li>
            <li class="cs_left_list"><a href="../inquiry">
                1:1 문의하기
            </a></li>
            <li class="cs_left_list"><a href="mypage_inquiry">
                문의내역
            </a></li>
            <li class="cs_left_list"><a href="../membership">
                멤버쉽(클럽)안내
            </a></li>
        </ul>
        
    </div>
</body>

    <div class="cs_main_board">
       <div class="line"></div>
       <h2>장바구니</h2>
       <table>
                <div class="MyPage">

        <div class="mypage_content">
         	 <form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;">
    
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
                <div class="row head">
                    <div class="subdiv">
                        <div class="check">선택</div>
                        <div class="img">이미지</div>
                        <div class="pname">상품명</div>
                        
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">합계</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd">삭제</div>
                    </div>
                    <div class="split"></div>
                </div>
        
        <c:forEach items="${MyCart }" var="dto" varStatus = "status">
                <div class="row data">
                    <div class="subdiv">
                        <div class="check"><input type="checkbox" name="buy" value="${dto.p_code}" checked="" onclick="javascript:basket.checkItem();">&nbsp;</div>
                        <div class="img"><img src=${dto.p_img } width="60"></div>
                        <div class="pname"><span>${dto.p_name }</span></div>
                        <div class="size"><span>사이즈</span></div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price<c:out value = "${status.count}"/>" class="p_price" value="${dto.cprice }">${dto.cprice }원</div>
                        <div class="num">
                            <div class="updown">
                                <input type="text" name="p_num<c:out value = "${status.count}"/>" id="p_num<c:out value = "${status.count}"/>" size="2" maxlength="4" class="p_num" value="${dto.amount}" onkeyup="javascript:basket.changePNum(1);">
                                <span onclick="javascript:basket.changePNum(<c:out value = "${status.count}"/>);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
                                <span onclick="javascript:basket.changePNum(<c:out value = "${status.count}"/>);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
                            </div>
                        </div>
                        <div class="sum">${dto.money }원</div>
                    </div>
                    <div class="subdiv">
<div class="basketcmd">
                        <a href="superdelete?cart_id=${dto.cart_id }&p_code=${dto.p_code}" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                    </div>
                </div>

  		</c:forEach>
        
            </div>
    
            <div class="right-align basketrowcmd">
                <a href="superdelete?p_code=${dao.p_code }" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num" >상품갯수: ${amount}개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: ${sum }원</div>
    
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                    <a href="cart_buypage?&total_sum=${sum}&total_amount=${amount}&p_code=${dto.p_code}">선택한 상품 주문</a> 
                  <!--   <button type="button" class="btn2" onclick="move()" >선택한 상품 주문</button> -->
                </div>
            </div>
        </form>
           

        </div>

    </div>
            
        </table>

</div>
    

    
    


</body>
</html>