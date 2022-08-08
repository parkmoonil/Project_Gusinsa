<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <link rel="stylesheet" href="resources/css/Orderafterlogin.css">
  <%@include file="../../../../resources/common/header.jsp" %> 
   <script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
		});

        function showPopup() { window.open("agreement.html", "a", "width=400, height=300, left=100, top=50"); }
        function showPopup2() { window.open("agreement2.html", "a", "width=400, height=300, left=100, top=50"); }
        function showPopup3() { window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50"); }
	</script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
        
function move() {
      	let amount = document.getElementById("amount").value;
       	let sumprice = document.getElementById("sumprice").value;
       	
       	let sum = sell_price * amount;
        
        	// 스페이스바 주의 null값 우려
       	//location.href ="paying?p_name=${indto.p_name }"+"&amount="+ amount +"&sumprice="+sumprice;
       	location.href ="paying";

        }	
        </script>
    </script>
 
<form action="pay" method="post">
    <div class="ship_top" style="float: left; margin-left: 100px;">
     
    <h2 class="infoput" >배송지정보 </h2> 
    <div class="fb__custom-checkbox">
        
    </div>
    <div>
        <ul>
            <li id="customer_info"><strong class="userInfo__title vaT">이름 <span class="ask">*</span></strong>
            <input type="text" name="mname" style="margin-left: 90px;" class="input__text name noMember_shp_nm" value="${Orderafterlogin.mname }">
            </li>
            <div class="userInfo__cont" id="customer_info" >
            <li><strong class="userInfo__title vaT">주소 <span class="ask">*</span></strong>
 <input type="text" name="maddr_one"style="margin-left: 89px;"  id="sample6_postcode" class="input__text addressNum noMember_recip_zip" value="${Orderafterlogin.maddr_one }" readonly="">
            <button type="button" class="btn__searchAddr daum_noMember_address" onclick="sample6_execDaumPostcode();">주소검색</button>
            <input type="text" name="maddr_two" style="margin-left: 140px;" id="sample6_address" class="input__text address noMember_Address_1" value="${Orderafterlogin.maddr_two }" readonly="">
            <input type="text" name="maddr_three" style="margin-left: 140px;" id="sample6_extraAddress" class="input__text address noMember_Address_1" value="${Orderafterlogin.maddr_three }" readonly="">
            <input type="text" name="maddr_four" style="margin-left: 140px;"  id="sample6_detailAddress" class="input__text address noMember_address_2" value="${Orderafterlogin.maddr_four }" maxlength="30">        </div>
        </li>
            <li id="customer_info"><strong class="userInfo__title vaT">휴대폰번호 <span class="ask">*</span></strong>
                   <input type="text" name="mphone" value="${Orderafterlogin.mphone }" class="input__text phone noMember_order_hp_second" maxlength="4" onkeypress="infoinputController.fn.fnInNumber()" style="width:300px ">
            </li>
            <li class="userInfo__list line">
                <strong class="userInfo__title">배송요청사항</strong>
                <div class="userInfo__cont">
                    <div class="dlvInfo">
                        <div class="select-area">
                            <select name="noShippingMsgType" id="noShippingMsgType" class="fb__custom-select selectOption">
                                <option value="">선택</option>
                                <option value="부재시, 경비(관리)실에 맡겨주세요.">부재시, 경비(관리)실에 맡겨주세요.</option>
                                <option value="부재시, 문앞에 놓아주세요.">부재시, 문앞에 놓아주세요.</option>
                                <option value="부재시, 무인택배함 보관해주세요.">부재시, 무인택배함 보관해주세요.</option>
                                <option value="직접 받겠습니다.">직접 받겠습니다.</option>
                                <option value="배송전에 연락주세요.">배송전에 연락주세요.</option>
                                <option value="" option="direct">직접입력</option>
                            </select>

                            <input type="text" id="noShippingMsg" class="userInput no_all_msg" placeholder="배송요청사항을 입력해 주세요. (최대 30자 이내)" maxlength="30" style="display: inline-block;">
                        </div>
                    </div>
                   
                    </div>

            </li>
        </ul>
     
    </div>
    <h2 class="infoput" >주문정보 </h2> 
    <table>
        <tr>
            <td>
                <div class="cart_table_goods">
                    <a href="#" class="cart_table_link">
                        <figure class="cart_table_img">
                            <img src="../img/images/page6.gif" alt="" style="display: block;">
                        </figure>
                    </a>
                </div>
            </td>
                    <td>
                    <div class="cart__table__info">
                        <p class="cart__table__name cart_item_name" id ="p_name" name = "p_name">
                            ${indto.p_name }
                        </p>
                        <div class="cart__table__option">
                            <ul>
                                <li>${indto.p_class }</li>
                            </ul>
                        </div>
                       
                    </div>
                </td>            
            <td class="cart__table__count" id = "amount" name = "amount">
                           수량 : ${amount }
            </td>
            <td class="cart__table__price" id = "sumprice" name = "sumprice">
                           금액 : ${sumprice}
            </td>
        </tr>

    </table>

   
   <table>
   
    <!-- <tr>
        <td>신세계포인트</td>
        <td style="padding-left: 30px;"><input type="text"></td>
         <td>P</td> 
        <td><a href="">적립/사용</a></td>
    </tr>
    <tr>
        <td>기프트카드</td>
        <td style="padding-left: 30px;"><input type="text"></td>
        <td><a href="">전환/조회</a></td>
    </tr> -->
   </table>
   
    <h2><class="infoput" >결제수단</h2> 
    <table>
        <tr>
            <td><input type="checkbox"><label for="checker3">신용카드로 결제</label></td>
            <td><input type="checkbox"><label for="checker4">다른결제 수단</label></td>
        </tr>
    </table>
</div>
</div>
<div class="infoinput_right_inner">
    <h2 class="infoinput_sec_title" >결제정보</h2>
    <div id="dvPaymentInfo">
       <ul>
        <li class="paymentinfo_list">
            <div>
                <strong class="paymentinfo_title fl-left">총 상품금액</strong>
                <span class="paymentinfo_price fl-right">${sumprice}</span>
            </div>
        </li>
        <li class="paymentinfo_list">
            <div>
                <strong class="paymentinfo_title fl-left">총 배송비</strong>
                <span class="paymentinfo_price fl-right">0원</span>
            </div>
        </li>
        <li class="paymentinfo_list">
            <div>
                <strong class="paymentinfo_title fl-left">총 할인금액</strong>
                <span class="paymentinfo_price fl-right">0원</span>
            </div>
        </li>
       </ul>
         
    
        <div class="paymentAree_btm" >
                <strong class="fl-left" style="padding-left: 40px;">총 결제 금액</strong>
                <span class="fl-right">1000원</span><br>
            </div>
           
        </div>
         <div class="paymentAgree" style="display: block;">
            <div class="paymentAgree_top">
                <p>구매동의 및 결제대행 서비스 이용약관 등에 모두 동의 하십니까?</p>
                <table>
                        <tr>
                            <th><input type="checkbox" id="cbx_chkAll" /><label for="checker5"></label></th>
                            <th class="fb__custom-checkbox" style="color: black;">모든 약관 동의</th>
                        </tr>	
                  
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="chk"><label for="checker6"></label></td>
                            <td class="fb__custom-checkbox">전자금융거래 약관</td>
                            <th><a href="" class="btn__contents" onclick="showPopup();">내용보기</a></th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="chk"><label for="checker7"></label></td>
                            <td class="fb__custom-checkbox">개인정보 수집, 이용동의</td>
                            <th><a href="" class="btn__contents " onclick="showPopup2();">내용보기</a></th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="chk"><label for="checker8"></label></td>
                            <td class="fb__custom-checkbox">개인정보 위탁동의</td>
                            <th><a href="" class="btn__contents" onclick="showPopup3();">내용보기</a></th>
                        </tr>
                    </tbody>
                </table>
               
            </div>
            <div style="position: relative; right: 100px; top: 20px;" >
                <a href="pay?p_name=${indto.p_name }&amount=${amount }&sumprice=${sumprice}" class="btn-black2" id = "payBtn">결제하기</a>
                
            </div>
         </div>
         
    </div>
    </form>
    
      <!--   <div id='wrap'>
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
    </div>   -->
    
    
</body>
</html>