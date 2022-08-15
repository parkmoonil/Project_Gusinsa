<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css?after" />
<link rel="stylesheet" href="resources/css/cs/board.css?after" />
<link rel="stylesheet" href="resources/css/cs/notice_writeview.css?after" />
</head>
<script>
//null값 방지
function checkSubmit() {
  
  var tags = {
		'ntitle' : '공지사항 제목',
  		'ncontent' : '내용',
  		
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
<%-- <%@include file="../../../../resources/common/header.jsp" %> --%>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>
	<div class="cs_main_board">
		<div class="line"></div>  
			<form action="write" method="post" onSubmit="return checkSubmit()">
				<table class="notice_writeview">
					<tr>
						<th>제목</th>
						<td><input type="text" name="ntitle" placeholder="공지사항 제목" /></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<pre><textarea name="ncontent" cols="30" rows="10" placeholder="내용 입력"></textarea></pre>
						</td>
					</tr>
				</table>
				<input type="submit" value="입력" />
				<a href="noticeboard">목록</a>
			</form>
	</div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>