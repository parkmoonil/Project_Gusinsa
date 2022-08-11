<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>

</script>
<style>
	body, h2{
         margin: 0;
            margin-bottom: 20px;
    }
  	.h_2{
		width:100%;
		text-align: center;
         position: sticky;
         top: 0; /* 클래스 sticky인 요소 안에서 top값이 0이되면 sticky를 적용 */
         line-height: 80px;
    }
    .h2{
		background-color: white;
            /* padding-top: 3%; */
            font-size: 20px;
            color: #333;
        }
        .h3{
            font-family: HY견명조, sans-serif;
            padding-top:15px;
            width:100%;
            height: 100px;
            padding-bottom: 15px;
            background-color: black;
            color: white;
            text-align: center;
            font-weight: 400;
            font-size: 25px;
        }
        .h_3{
        	padding-left: 23%;
        }
    .h2{
    	padding-top: 20px;
    	text-align: center;
    	font-weight: 400;
    	font-size: 20px;
    }
    .hh2{
    	font-size: 20px;
    	font-weight:bold;
    	margin-top: 200px;
    	margin-bottom: 100px;
    	text-align: center;
    	color: #333;
    }
    .sp_1{
    	margin-left: 19%;
	}
    .sp_2{
    	margin-left: 44%;
    }
    .join_one{
		color: #333;
    	font-size: 25px;
    }
    .img_1{
    	margin-left: 19%;
    }
    .img_all{
    	margin-left: 15%;
    	margin-top: 8%;
    }
    .img_one{
    	margin-left: 15%;
    }
    .img_two{
    	margin-left: 15%;
    }
    .li_one{
    	float:left;
    	margin-left:26%;
    	list-style: none;
    }
    .li_two{
    	margin-left:7%;
    	float:left;
    	list-style: none;
    }
    .li_three{
    	margin-left:7.5%;
    	float:left;
    	list-style: none;
    }
</style>
<body>
	<div>
	    <header>
	        <div class="h3">
	            <h3>gusinsa.com</h3>
	        </div>
	        <div class="h_2">
	            <div class="h2">
	                <h2>회원가입</h2>
	        <hr />
	            </div>
	        </div>
	    </header>
	</div>
	<div class="hh2">
		<h2>회원가입 후 구신사 멤버스에서 드리는 다양한 서비스와 혜택을 누리세요.</h2>
	</div>
	<hr size="1" color="#333;" width="1200px;"/>
	<div>
		<h2 class="h__2">
					<span class="sp_1">구신사 회원가입</span>
					<span class="sp_2">
						<a href="javascript:void(0)" class="btn-popup">멤버십혜택보기</a>
					</span>
		</h2>
		<div class="img_1">
			<div class="img_all">
			<img src="../resources/jointwoimg/이벤트.png" alt="" />
			<img class="img_one" src="../resources/jointwoimg/쿠폰.png" alt="" />
			<img class="img_two" src="../resources/jointwoimg/포인트.png" alt="" />
			</div>
		</div>
		<ul>
			<li class="li_one">
				<h3 align="center">쿠폰</h3>
				<p>멤버십 회원을 위한 특별한 쿠폰</p>
			</li>
			<li class="li_two">
				<h3 align="center">이벤트</h3>
				<p>날마다 새로운 이벤트</p>
			</li>
			<li class="li_three">
				<h3 align="center">포인트</h3>
				<p>상품 구매 시 포인트 적립</p>
			</li>
		</ul>
		<p>본인인증 수단을 선택해 주시기 바랍니다.인증은 본인 명의의 휴대폰/신용카트로만 가능하며, 인증비용은 구신사에서 부담합니다.</p>
	</div>
	<input type="button" value="나이스확인버튼" onclick="location.href='joinform2'"/>
</body>
</html>