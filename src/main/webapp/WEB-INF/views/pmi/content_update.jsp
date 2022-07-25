<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>content_update</h3>
<form action="modify" method="post">
<input type="hidden" name="nnum" value="${content_view.nnum}"/>
<table border="1">
	<tr>
		<td>번호</td>
		<td>${content_view.nnum}</td>
	</tr>
	<tr>
		<td>제목</td>
		<td>
			<input type="text" name="ntitle" size="30" value="${content_view.ntitle}" }/>
		</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>
			<textarea type="text" name="ncontent" cols="50" rows="10">${content_view.ncontent}</textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="수정" /> &nbsp;&nbsp;
			<a href="noticeboard">목록</a> &nbsp;&nbsp;
		</td>
	</tr>
</table>
</form>

</body>
</html>