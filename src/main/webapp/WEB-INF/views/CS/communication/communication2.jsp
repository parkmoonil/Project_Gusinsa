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
	<link rel="stylesheet" href="resources/css/cs/communication2.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
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
       		
      		<form action="communication3" method="post">
       		<div class="commu_table">
	            <table>
	                <tr>
	                    <th>
	                        아이디
	                        <span class="point">*</span>
	                    </th>
	                    <td>
	                   	 	<input type="text" value="${Members.mid }" name="mid"/>
	                    </td>
	                </tr>
	                <tr>
	                    <th>
	                        이름
	                        <span class="point">*</span>
	                    </th>
	                    <td><input type="text" value="${Members.mname }" name="mname"/></td>
	                </tr>
	                <tr>
	                    <th>
	                        핸드폰 번호
	                        <span class="point">*</span>
	                    </th>
	                    <td class="phone_cert">
	                        <div class="input_tel">
	                           <td><input type="text" value="${Members.mphone }" name="mphone"/></td>
	                        </div>
	                    </td>
	                </tr>       
	                <tr>
	                    <th>
	                        이메일
	                        <span class="point">*</span>
	                    </th>
	                    <td class="email_option">
	                        <td><input type="text" value="${Members.memail }" name="memail"/></td>
	                    <td>   
	                 </tr>
	            </table>
            </div>
            <div class="commu_btn" >
            	<input type="submit" class="commu_next_btn" value="다음" / >
            	<a href="communication3"></a>
    		</div>
    		</form>
		</div>
	</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>