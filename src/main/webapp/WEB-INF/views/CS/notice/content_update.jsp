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
<link rel="stylesheet" href="resources/css/cs/noticetable_content_update.css" />
</head>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>  
<div class="cs_main_board">
	<div class="line"></div>
		<form action="modify" method="post">
			<input type="hidden" name="nnum" value="${content_view.nnum}"/>
			<table class="notice_table_content_update">
				<tr>
					<th>
						<input type="text" name="ntitle" size="30" value="${content_view.ntitle}" />
					</th>
				</tr>
				<tr>
					<th>
						<textarea type="text" name="ncontent" cols="50" rows="15">${content_view.ncontent}</textarea>
					</th>
				</tr>
			</table>
			<input type="submit" value="수정" /> &nbsp;&nbsp;
			<a href="noticeboard">목록</a> &nbsp;&nbsp;
		</form>
	</div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>