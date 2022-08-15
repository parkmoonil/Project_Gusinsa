<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gusinsa.login</title>


<!-- <script src="https://developers.kakao.com/sdk/js/kakao.js"></script> -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#mid").focus();
					return false;
				}
				if($("#mpw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#mpw").focus();
					return false;
				}
			});
			
				
			
		})
	</script>


</head>
<!-- <link rel="stylesheet" href="../headerimg/header.css"> -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
     <style>
        /* 여기서부터 은주 */
            .main11{
                padding-left: 20%;
            }
            .h_2{
                font-family: 바탕;
                font-size: 40px;
            }
            .main {
        
                min-width: 500px;
                max-width: 0px;
                padding: 50px;
                background: #ffffff;
                padding-left: 20%;
                
             }
             .login_one{
                 margin-top: 2%;
             }
             .login_two{
                 margin-top: 5%;
                 margin-bottom: 5%;
             }
        section {
            display: none;
            padding: 20px 0 0;
            border-top: 1px solid #ddd;}
        /*라디오버튼 숨김*/
          #tab1,#tab2{
              display: none;}
        .main label {
            display: inline-block;
            margin: 0 0 -1px;
            padding: 10px 100px;
            font-weight: 600;
            text-align: center;
            color: #bbb;
            border: 1px solid transparent;}
        .main label:hover {
            color: #555;
            cursor: pointer;}
        /*input 클릭시, label 스타일*/
        input:checked + label {
              color: #555;
              border: 1px solid #ddd;
              border-top: 2px solid black;
              border-bottom: 0px solid #ffffff;}
        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2 {
            
            display: contents;
        }
        .content2{
            font-weight: bold;
        }
        .body_body{
            /* padding-top: 15%; */
            padding-left: 20%;
        }
        .hr-sect {
            display: flex;
            flex-basis: 100%;
            align-items: center;
            color: rgba(0, 0, 0, 0.35);
            font-size: 15px;
            font-weight: bold;
            margin: 20px 0px;
        }
        .hr-sect::before,
        .hr-sect::after {
            content: "";
            flex-grow: 1;
            background: rgba(0, 0, 0, 0.35);
            height: 1px;
            font-size: 0px;
            line-height: 0px;
            margin: 0px 16px;
            margin-left: 0px;
            margin-right: 0px;
        }
        #mid{
            border: 1px solid #d2d2d2;
            margin-top:20px;
            width: 480px;
            height: 40px;
        }
        #mpw{
            border: 1px solid #d2d2d2;
            margin-top:10px;
            margin-bottom:10px;
            width: 480px;
            height: 40px;
        }
        #nname{
            border: 1px solid #d2d2d2;
            margin-top:20px;
            width: 480px;
            height: 40px;
        }
        #nphone{
            border: 1px solid #d2d2d2;
            margin-top:20px;
            margin-bottom: 20px;
            width: 480px;
            height: 40px;
        }
        .ck_1{
            color: #d2d2d2;
        }
        .che_1{
            color: #d2d2d2;
        }
        .a1{
            color: #d2d2d2;
            text-decoration: none;
        }
        .che_2{
            color: #d2d2d2;
            margin-left: 35%;
        }
        .sp1{
            text-decoration: none;
            color: #000;
            font-weight: bold;
        }
        /* 버튼전체 */
          .btn22{
                text-align: center;
            }
            /* 로그인 */
            .customm2-btn {
                width: 460px;
                height: 50px;
                padding: 5px 5px 5px 5px;
                border: 1px solid #000;
                font-family: 'Lato', sans-serif;
                font-weight: 500;
                background: transparent;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                display: inline-block;
                font-size: 20px;
                font-weight: bold;
            }
            /* 로그인 */
            .btn-1 {
                margin-top: 20px;
                background: #000;
                color: #fff;
                transition: all 0.3s ease;
            }
            .btn-1:hover {
                box-shadow:
                -7px -7px 20px 0px #fff9,
                -4px -4px 5px 0px #fff9,
                7px 7px 20px 0px #0002,
                4px 4px 5px 0px #0001;
            }
            /* 비회원 로그인 */
            .customm3-btn {
                width: 460px;
                height: 50px;
                padding: 5px 5px 5px 5px;
                border: 1px solid #000;
                font-family: 'Lato', sans-serif;
                font-weight: 500;
                background: transparent;
                cursor: pointer;
                transition: all 0.3s ease;
                position: relative;
                display: inline-block;
                font-size: 20px;
                font-weight: bold;
            }
            /* 비회원 로그인 */
            .btn-2 {
                margin-bottom: 19%;
                background: #000;
                color: #fff;
                transition: all 0.3s ease;
            }
            .btn-2:hover {
                box-shadow:
                -7px -7px 20px 0px #fff9,
                -4px -4px 5px 0px #fff9,
                7px 7px 20px 0px #0002,
                4px 4px 5px 0px #0001;
            }
            #no_no{
                margin-left: 5%;
            }
            .joinus{
                text-align: center;
                
            }
            
            .id_ok{
color:#008000;
display: none;
}

.id_already{
color:#6A82FB; 
display: none;
}
        </style>
        
 <script>
function check(){
	id = $("#mpw").val();
	alert("들어오나");
	$.ajax({
	    url: 'login/PW_Check',
	    type: 'POST',
	    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
	    contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
	    data: id ,

	    success: function(data){
	         if(data == 0){
	         console.log("비밀번호 맞음");
	         
	         $('.id_ok').css("display","inline-block"); 
             $('.id_already').css("display", "none");
             location.href ="mypage_user_edit";
	         }else{
	         	console.log("비밀번호 다름");
	         	
	         	$('.id_already').css("display","inline-block");
                $('.id_ok').css("display", "none");
                
                $('#mpw').val('');
                location.href ="mypage_user_edit?";
	         }
	    },
	    error: function (){        
	                      
	    }
	  });


}
</script>
    <body>

<%-- <%@include file="../../../../../../resources/common/header.jsp" %>  --%>
<jsp:include page = "../../../resources/common/header.jsp" />    
    <div class="body_body">
        <div class="main11">
            <h2 class="h_2">안녕하세요 고객님!</h2>
            <p>회원정보를 수정하실려면 비밀번호를 입력해 주세요</p>
        </div>
        <form action="login" method="post">
        <div class="main">
                <input id="tab1" type="radio" name="tabs" checked> 
                <label for="tab1">회원</label>
            
    
                <section id="content1">
                <div class="login_one">
                    <tr>
                        <td>
                            <input type="text" id="mpw" name="mpw" placeholder=" 비밀번호"/> <br />
                            <button id="duplicate_check" type="button" onclick="check();">비밀번호 확인</button>
                            <span class="id_ok">비밀번호가 다릅니다</span>
							<span class="id_already">비밀번호가 맞습니다</span>
                        </td>
                    </tr>
      

        
                 
                    
                    <!-- <tr>
                        <td><a href="javascript:kakaoLogin();"><img src="../resources/snsimg/카카오톡.png"/></a></td>
                    </tr> -->
                </div>
                </section>

        </div>
    </div>
    </body>
    </html>