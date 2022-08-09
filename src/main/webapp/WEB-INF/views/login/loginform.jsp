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

<script>
/* // 카카오 초기화
Kakao.init('84f46626395e42bdc72cdb114b32c584');

function kakaoLogin() {
	
    Kakao.Auth.login({
        success: function(response) {
            Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (response) => {
                	var kakaoid = response.id+"K";
                    $.ajax({
    					type : "post",
    					url : '/login/idDuplicateCheck.go', // ID중복체크를 통해 회원가입 유무를 결정한다.
    					data : {"userid":kakaoid},
    					dataType:"json",
    					success : function(json){   				
    						if(json.idExists){
    							// 존재하는 경우 로그인 처리
    							createHiddenLoginForm(kakaoid);
    							
    						} else{
    							// 회원가입
    							$.ajax({
    								type : "post",
    		    					url : '/login/kakaoSignUp.go',
    		    					data : {"userid":kakaoid,
    		    						    "name":response.properties.nickname,
    		    						    "email":response.kakao_account.email},
    		    					dataType :"json",
    		    					success : function(json){
    		    						if(json.success){
    		    							// 로그인
    		    							createHiddenLoginForm(kakaoid);		    							
    		    						} else {
    		    							alert('카카오 회원가입 실패. 일반계정으로 로그인하시기 바랍니다.');
    		    						}
    		    					},
    		    					error: function(request, status, error){
    		    		                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
    		    		                }
    							});
    						}						
    					},
    					error: function(request, status, error){
    		                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
    		                }
    				});
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            alert(error);
        }
    });
}

function createHiddenLoginForm(kakaoId){
	
	var frm = document.createElement('form');
	frm.setAttribute('method', 'post');
	frm.setAttribute('action', '/member/kakaoLogin.go');
	var hiddenInput = document.createElement('input');
	hiddenInput.setAttribute('type','hidden');
	hiddenInput.setAttribute('name','userid');
	hiddenInput.setAttribute('value',kakaoId);
	frm.appendChild(hiddenInput);
	document.body.appendChild(frm);
	frm.submit();
	
}
//카카오 초기화
Kakao.init('84f46626395e42bdc72cdb114b32c584');
    
function kakaoLogout() {
    if (!Kakao.Auth.getAccessToken()) {
      alert('로그인을 해주세요.');
      return
    }
    Kakao.Auth.logout(function() {
      location.href = "/login/logout.go"; // 로그아웃 처리
	})
} */
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
        #nid{
            border: 1px solid #d2d2d2;
            margin-top:20px;
            width: 480px;
            height: 40px;
        }
        #nno{
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
        </style>
    <body>

<%-- <%@include file="../../../../../../resources/common/header.jsp" %>  --%>
<jsp:include page = "../../../resources/common/header.jsp" />    
    <div class="body_body">
        <div class="main11">
            <h2 class="h_2">안녕하세요 고객님!</h2>
            <p>구신사의 회원이 되시면 더 많은 혜택을 누리실 수 있습니다</p>
        </div>
        <form action="login" method="post">
        <div class="main">
                <input id="tab1" type="radio" name="tabs" checked> 
                <label for="tab1">회원</label>
            
                <input id="tab2" type="radio" name="tabs">
                <label for="tab2">비회원</label>
    
                <section id="content1">
                <div class="login_one">
                    <tr>
                        <td>
                            <input type="text" id="mid" name="mid" placeholder=" 아이디"/> <br />
                            <input type="text" id="mpw" name="mpw" placeholder=" 비밀번호"/> <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="che_1"><input type="checkbox" class="ck_1"/>아이디 저장</span>
                        </td>
                        <td>
                            <span class="che_2">
                            <a class="a1" href="#">아아디 찾기</a>
                            |
                            <a class="a1" href="#">비밀번호 찾기</a> <br />
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <div class="btn22">
                                <button type="submit" class="customm2-btn btn-1">로그인</button>
                          </div>
                          </form>
                    </tr>
                        <p class="joinus">아직 구신사의 회원이 아니신가요?      
                            <a href="../join/joinform2" class="sp1">회원가입</a></p>
        
                   <!--  <div class="hr-sect">or</div>
                     -->
                    <!-- <tr>
                        <td><a href="javascript:kakaoLogin();"><img src="../resources/snsimg/카카오톡.png"/></a></td>
                    </tr> -->
                </div>
                </section>
    
                <section id="content2" class="content2">
                <div class="login_two">
                    <tr>
                        <div class="no_lo">
                        <td>
                            <span><input type="checkbox" />주문자 이름+주문번호</span>
                            <span id="no_no"><input type="checkbox" />주문자 이름+휴대폰번호</span> <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" id="nid" placeholder=" 주문자명" /> <br />
                            <input type="text" id="nno" placeholder=" 주문번호" /> <br />
                        </td>
                    </tr>
                    <div class="btn22">
                                <button class="customm3-btn btn-2">비회원 주문조회</button>
                    </div> 
                </div>
                </section>
        </div>
    </div>
    </body>
    </html>