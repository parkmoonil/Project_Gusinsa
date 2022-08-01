<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/write_view.css" />
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>
	<div class="cs_main_board">
		<div class="line"></div>  
			<form action="write" method="post">
				<table class="notice_table_write_view">
					<tr>
						<th>제목</th>
						<td><input type="text" name="ntitle" value="공지사항 제목"/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
						<textarea name="ncontent" cols="30" rows="10">내용 입력</textarea>
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