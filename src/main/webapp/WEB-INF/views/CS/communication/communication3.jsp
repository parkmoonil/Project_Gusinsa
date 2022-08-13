<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script>
function checkSubmit() {
	var tags = {
				
			'ctitle' : '문의 제목',
			'ccontent' : '문의 내용',
	}	
	var keyso = Object.keys(tags);
	console.log(keyso);
	console.log(keyso[0]);
	 for (i = 0; i < keyso.length; i++ ) {
		 var tag = document.getElementsByName(keyso[i]);
		  if (tag[0].value == '') {
			  alert(tags[keyso[i]] + "을(를) 입력해주세요.");
			  return false;
		  }
	  }
	return true;
}
</script>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>    
<div class="cs_main_board">
   <div class="line" ></div>
      <h2>고객의 소리</h2>
      	<div class="step_progress_area">
            <div class="step_progress_status">
	              <div class="step_progress">
	                  <em>01</em>
	                  <strong>개인 정보 확인</strong>
	              </div>
	              <div class="step_progress_on">
	                  <em>02</em>
	                  <strong>고객 의견 등록</strong>
	              </div>
	              <div class="step_progress">
	                  <em>03</em>
	                  <strong>접수 완료</strong>
	              </div>
            </div>
	            <P class="table_info">
		            필수입력 항목입니다.
		            <span class="point">*</span>
	            </P> 
            </div>
            <form action="Commu_write" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit()">
	            <input type="hidden" name="cstate" value="확인중" />
	            <table class="commu_table">
	                <tr>
	                    <th>
	                        어떤유형의 의견이신가요?
	                        <span class="point">*</span>
	                    </th>
	                    <td>
	                        <div class="cs_opinion">
	                            <select name="cselect1">
	                                <option value="cselect1">배송</option>
	                                <option value="cselect1">매장</option>
	                                <option value="cselect1">AS</option>
	                                <option value="cselect1">고객센터</option>
	                                <option value="cselect1">상품</option>
	                                <option value="cselect1">기타</option>
	                            </select>
	                        </div>
	                    </td>
	                </tr>
	                <tr>
	                    <th>
	                        어떤 구입처를 이용하셨나요?
	                        <span class="point">*</span>
	                    </th>
	                    <td>
	                        <div class="radio set">
	                            <label>
	                                <input type="radio" name="cselect2" value="매장" checked="checked">
	                                <span>매장</span>
	                            </label> 
	                            <label>
	                                <input type="radio" name="cselect2" value="온라인">
	                                <span>온라인</span>
	                            </label>     
	                        </div>    
	                    </td>
	                </tr>
	                <tr>
	                    <th>
	                        어떤 방법으로 답변 드리길 원하시나요?
	                        <span class="point">*</span>
	                    </th>
	                    <td>
	                        <div class="radio_set">
	                            <label>
	                                <input type="radio" name="cselect3" value="문자" checked="checked">
	                                <span>문자메시지</span>
	                            </label> 
	                            <label>
	                                <input type="radio" name="cselect3" value="이메일">
	                                <span>이메일</span>
	                            </label> 
	                            <label>
	                                <input type="radio" name="cselect3" value="답변불필요">
	                                <span>답변불필요</span>
	                            </label>   
	                            <div>
	                                <p class="warning">
	                                    로그인 후 [마이페이지 > 고객의 소리]에서도 답변 내용을 확인 하실 수 있습니다.
	                                </p>
	                            </div>   
	                        </div>    
	                    </td>
	                </tr>
	                <tr>
	                    <th>
	                        SMS로 답변 여부를 받으시겠어요?
	                        <span class="point">*</span>
	                    </th>
	                    <td>
	                        <div class="radio_set">
	                            <label>
	                                <input type="radio" name="cselect4" value="수신O" checked="checked">
	                                <span>수신</span>
	                            </label> 
	                            <label>
	                                <input type="radio" name="cselect4" value="수신X">
	                                <span>수신안함</span>
	                            </label>  
	                            <div>
	                                <p class="warning">
	                                    수신 체크 시 SMS로 답변여부를 안내해 드립니다.
	                                </p>
	                            </div>   
	                        </div> 
	                    </td>  
	                </tr>
	            </table>
	            <table class="commu_table_box">
	                <tr>
	                    <th scope="row">제목
	                    	<span class="point">*</span>
	                    </th>
	                    <td class="commu_table_box_title">
	                        <div class="commu_table_box_wrap">
	                            <input type="text" name="ctitle" class="box_input" placeholder="제목을 입력해주세요." maxlength="100">	                               
	                        </div>
	                    </td>
	                </tr>
	                <tr>
	                    <th scope="row">내용
	                    	<span class="point">*</span>
	                    </th>
	                    <td class="commu_table_box_content">
	                        <div class="commu_table_box_wrap">
	                            <textarea class="box_content" name="ccontent" placeholder="내용을 입력해주세요."></textarea>     
	                        </div>
	                    </td>
	                </tr>
	                <tr>
	                    <th scope="row">첨부파일</th>
	                    <td>
	                        <input type="file" name="cfile"/>
	                    </td>
	                </tr> 
	                 
	            </table>
            <div class="commu_btn">
	        	<input class="commu_next_btn" type="submit" value="작성완료" />
           	 	<a href="communication2" class="commu_before_btn">이전</a>
    		</div>
    		
    		</form>
        </div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>