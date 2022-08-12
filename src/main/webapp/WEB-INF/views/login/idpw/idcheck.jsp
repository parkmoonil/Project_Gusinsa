<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script>
function check(){
	id = $("#mid").val();
	
	$.ajax({
	    url: 'ID_Check',
	    type: 'POST',
	    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
	    contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
	    data: id ,

	    success: function(data){
	         if(data == 0){
	         console.log("아이디 없음");
	         
	         $('.id_ok').css("display","inline-block"); 
             $('.id_already').css("display", "none");
	         }else{
	         	console.log("아이디 있음");
	         	
	         	$('.id_already').css("display","inline-block");
                $('.id_ok').css("display", "none");
                
                $('#mid').val('');
	         }
	    },
	    error: function (){        
	                      
	    }
	  });


}
//은주님 뭘 건드셨는지 모르겠지만 OrderinfoDto가 없대영
//java.lang.NoClassDefFoundError: com/tech/project_shopping_mall/dto/OrderinfoDto (wrong name: com/tech/project_shopping_mall/dto/orderinfoDto)
//-희수 0811 10:28
</script> -->

<!-- <script>
	/* 아이디 찾기 */ 
	//아이디 & 스토어 값 저장하기 위한 변수
		// 아이디 값 받고 출력하는 ajax
		function findId_click(){
			var name=$('#mname').val()
			var phone=$('#mphone').val()
			
			$.ajax({
				url:'idcheck',
				type:"POST",
				data:{"mname":mname, "mphone":mphone} ,
				success:function(data){
					if(data == 0){
						$('#id_value').text("회원 정보를 확인해주세요!");
						$('#mname').val('');
						$('#mphone').val('');
					} else {
						$('#id_value').text(data);
						$('#mname').val('');
						$('#mphone').val('');
						
					}
				},
				 error:function(){
		                alert("에러입니다");
		            }
			});
		};
	
	const modal = document.getElementById("modal")
	const btnModal = document.getElementById("find_id")
	
	btnModal.addEventListener("click", e => {
	    modal.style.display = "flex"
	})
	
	    
	const closeBtn = modal.querySelector(".close-area")
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none"
	})
	
	modal.addEventListener("click", e => {
	    const evTarget = e.target
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none"
	    }
	})


</script> -->
<style>
        /* 테이블 & th */
        .table_1{
            padding-left: 500px;
        }
        th{
            color: #333;
        }
        body, h2{
            margin: 0;
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
        .sp1{
            padding-right: 200px;
        }
        
        
        
        
        
        
        
        /*푸터어어어*/
		footer {width: 100%;height: 10px;bottom: 5px;  position: relative;border-top: 1px solid #c4c4c4; color: #808080;font-size: 11px; transform: translateY(-100%);}
		footer a:visited {color: #808080;}
		footer p {margin-top: 0;  margin-left: 10px;}
		footer p span {display: inline-block;margin-left: 20px; margin-bottom: 5px;} 
		#wrap{
		    width: 100%;height: auto;
		    min-height: 100%;
		    margin-top: 10px;
		}
		#wrap_section{
		    margin-top: 50px;
		    margin-left: 0;
		}
		#footer_addr{float: left;}
		.footer_div{margin-top: 20px;margin-right: 30px;float: right; margin-bottom: 10px;}
    </style>
<body>
	<div class="h3">
            <h3>gusinsa.com</h3>
        </div>
            <div class="h_2">
                <div class="h2">
                  <h2>아이디찾기</h2>
                  <hr />
            </div>
        </div>
       
       아이디가 기억나지 않으세요?
       아래 인증 절차 후 고객님께서 가입하신 아이디를 확인해 주시기 바랍니다. <br />
        <form action="idcheck2" method="post">
       <div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
				<div class="w3-center w3-large w3-margin-top">
					<h3>아이디 찾기</h3>
				</div>
				<div>
					<p>
						<label>이름</label>
						<input class="w3-input" type="text" id="mname" name="mname" placeholder="이메일을 입력해주세요." required>
					</p>
					
					<p>
						<label>전화번호</label>
						<input class="w3-input" type="text" id="mphone" name="mphone" placeholder="핸드폰 번호를 입력해주세요." required>
					</p>
					
					<input type="submit" value="확인" />
				</div>
			
		</div>
	</div>
        </form>
       <!--  <footer>
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
      </footer> -->
</body>
</html>