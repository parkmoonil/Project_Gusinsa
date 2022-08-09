<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="resources/css/cs/enter.css" />
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/cs/board.css" />
</head>
<script>
//주소찾기
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
//null값 방지
function checkSubmit() {
  
  var tags = {
		'ereginum' : '사업자 등록번호',
  		'etradename' : '상호명',
  		'eaddr1' : '주소',
  		'eaddr2' : '주소',
  		'eaddr4' : '상세주소',
  		'esales' : '연매출',
  		'ebname' : '브랜드명',
  		'ebintro' : '브랜드소개',
  		'ehomepage' : '홈페이지',
  		'econtactname' : '담당자명',
  		'eposition' : '직급',
  		'echargenum' : '전화번호',
  		'efax' : '팩스번호',
  		'ephone' : '핸드폰번호',
  		'eemail' : '이메일',
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
        <div>
            <h2>입점문의 페이지</h2>
        </div>

        <div>
            <div class="enter_guide">
            <ol>
                <li>구신사와 함께할 브랜드를 모집합니다.</li>
                <li>문의 검토 후 담당 MD와 연락이 가능하도록 연락처를 정확히 기재해주세요.</li>
                <li>입점문의 신청 후 담당 MD 검토 및 계약 체결까지 시일이 소요될 수 있습니다.</li>
                <li>방문이 필요하신분은 좌측아래의 고객센터로 연락을 요청해주세요.</li>
                <li>구신사는 개인정보를 철저히 관리하고 있습니다.</li>
           	</ol>
            </div>
        </div>

	<form action="Enter_write" method="post" onsubmit="return checkSubmit(this)">
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
                    <td><input type="text" class="input_style" name="ereginum"></td>
                </tr>
                <tr>
                    <th>
                        상호명 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="etradename"></td>
                </tr>
                <tr>
                    <th rowspan="2">
                        주소 <span class="point">*</span>
                    </th>
                    <td>
	                    <input type="text" name="eaddr1" id="sample6_postcode" placeholder="우편번호" readonly="readonly" class="postcode">
	                    <input type="text" name="eaddr2" id="sample6_address" placeholder="주소" readonly="readonly" class="addr">
	                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="addr_btn">
                    </td>
                </tr>
                <tr>
                    <td>
                    	<input type="text" name="eaddr3" id="sample6_extraAddress" placeholder="참고항목" readonly="readonly" >
                    	<input type="text" name="eaddr4" id="sample6_detailAddress" placeholder=" 상세 주소를 입력해주세요.">
                    </td>
                </tr>
                <tr>
                    <th>
                        연매출 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="esales"></td>
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
                    <td><input type="text" class="input_style" name="ebname"></td>
                </tr>
                <tr>
                    <th>
                        상품소개 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="ebintro"></td>
                </tr>

                <tr>
                    <th>
                        홈페이지 주소 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="ehomepage"></td>
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
                    <td><input type="text" class="input_style" name="econtactname"></td>
                </tr>
                <tr>
                    <th>
                        직급 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="eposition"></td>
                </tr>
                <tr>
                    <th>
                        전화번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="echargenum"></td>
                </tr>
                <tr>
                    <th>
                        팩스번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="efax"></td>
                </tr>
                <tr>
                    <th>
                        휴대폰번호 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="ephone"></td>
                </tr>
                <tr>
                    <th>
                        이메일 <span class="point">*</span>
                    </th>
                    <td><input type="text" class="input_style" name="eemail"></td>
                </tr>
            </table>
        </div>
        <div class="enter_btn">
            <input type="submit" value="작성완료">
        </div>   
		</form>
	</div>	
</div>	
</body>
</html>