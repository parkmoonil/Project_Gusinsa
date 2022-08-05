<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/enter.css" />
<link rel="stylesheet" href="resources/css/cs/main.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %> 
	<div class="cs_main_board">
        <div>
            <h2>입점문의 페이지</h2>
        </div>

        <div>
            <div class="circle">
                <p>1</p>
            </div>
        </div>


        <div class="enter_form">
            <div class="enter_title">
                <h2>기본정보</h2>
                <p><span class="point">*</span>&nbsp; 는 필수 입력 항목입니다.</p>
            </div>
            <table class="enter_table"> 
                <tr>
                    <th>
                        사업자 등록번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        상호명 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th rowspan="3">
                        주소 <span class="point">*</span>
                    </th>
                    <td><input type="text"></td>
                </tr>
                <tr>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        연매출 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
            </table>
        </div>

        <div class="enter_form">
            <div class="enter_title">
                <h2>파트너 신청정보</h2>
            </div>
            <table class="enter_table"> 
                <tr>
                    <th>
                        브랜드명 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        상품소개 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>

                <tr>
                    <th>
                        홈페이지 주소 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
            </table>
        </div>

        <div class="enter_form">
            <div class="enter_title">
                <h2>영업 담당자 정보</h2>
            </div>
            <table class="enter_table"> 
                <tr>
                    <th>
                        담당자명 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        직급 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        전화번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        팩스번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        휴대폰번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
                <tr>
                    <th>
                        이메일 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style"></td>
                </tr>
            </table>

           
        </div>
        <div class="enter_btn">
            <input type="submit" value="작성완료">
        </div>   
	</div>
</div>	
</body>
</html>