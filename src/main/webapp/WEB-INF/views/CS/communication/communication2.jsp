<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="resources/css/cs/main.css" />
	<link rel="stylesheet" href="resources/css/cs/board.css" />
	<link rel="stylesheet" href="resources/css/cs/communication.css" />
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>            
	<div class="cs_main_board">
		<div class="line" ></div>
			<h2>고객의 소리</h2>
            <div class="step_progress_area">
            	<div class= "step_progress_status">
	                <div class="step_progress_on">
	                    <em>01</em>
	                    <strong>개인정보확인</strong>
	                </div>
	                <div class="step_progress">
	                    <em>02</em>
	                    <strong>고객의견등록</strong>
	                </div>
	                <div class="step_progress">
	                    <em>03</em>
	                    <strong>접수 완료</strong>
	                </div>
               	</div>
                <P>
                구신사 고객의 소리는 소중한 고객님의 의견을 신속하고 정확하게 해결하기 위해 실명제로 운영됩니다.
                </P>
                <p>
                정확한 성명과 연락처를 남겨주시면 원하는 방법으로 신속하게 답변드리겠습니다.
                </p>      
            </div>
            <div class="line2"></div>
            <table class="communicaiton_table">
                <tr>
                    <th>
                        아이디
                        <span class="point">*</span>
                    </th>
                    <td>{고객 아이디값}</td>
                </tr>
                <tr>
                    <th>
                        이름
                        <span class="point">*</span>
                    </th>
                    <td>{고객 이름값}</td>
                </tr>
                <tr>
                    <th>
                        핸드폰 번호
                        <span class="point">*</span>
                    </th>
                    <td class="phone_cert">
                        <div class="input_tel">
                            <select>
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                            </select>
                            <span class="tel_separator"> - </span>
                            <input type="text" maxlength="4" class="phone_input">
                            <span class="tel_separator"> - </span>
                            <input type="text" maxlength="4" class="phone_input">
                            <button type="button" class="btn_cert">인증번호 전송</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>
                        일반전화
                    </th>
                    <td class="group_cert">
                        <div class="input_tel">
                            <select>
                                <option value="선택">선택</option>
                                <option value="02">02</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="041">041</option>
                                <option value="042">042</option>
                                <option value="043">043</option>
                                <option value="051">051</option>
                                <option value="052">052</option>
                                <option value="053">053</option>
                                <option value="054">054</option>
                                <option value="055">055</option>
                                <option value="061">061</option>
                                <option value="062">062</option>
                                <option value="063">063</option>
                                <option value="064">064</option>
                                <option value="070">070</option>
                                <option value="080">080</option>
                                <option value="090">090</option>
                            </select>
                            <span class="tel_separator">-</span>
                            <input type="text" maxlength="4" class="phone_input">
                            <span class="tel_separator">-</span>
                            <input type="text" maxlength="4" class="phone_input">
                        </div>
                    </td>  
                </tr>
                <tr>
                    <th>
                        이메일
                        <span class="point">*</span>
                    </th>
                    <td class="yeah">
                        <input type="text" class="email_input">
                        <span class="tel_separator">@</span>
                        <input type="text" class="email_input" maxlength="20">
                        <div class="input_email">
                            <select title="이메일 도메인 선택">
                                <option value="">직접입력</option>
                                <option value="naver.com">naver.com</option>
                                <option value="gmail.com">gmail.com</option>
                                <option value="daum.net">daum.net</option>
                                <option value="nate.com">nate.com</option>
                                <option value="hotmail.com">hotmail.com</option>
                                <option value="hanmail.net">hanmail.net</option>
                            </select>
                        </div>
                    <td>   
                 </tr>
            </table>
            <div class="line2"></div>
            <div class="btn_next">
	        	<a href="communication3" class="cs_communication_main_button">다음</a>
    		</div>
		</div>
	</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>