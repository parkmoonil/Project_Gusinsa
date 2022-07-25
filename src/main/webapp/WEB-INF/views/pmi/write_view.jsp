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
<h3>write_view</h3>
<form action="write" method="post">
<table>
	<tr>
		<td>제목</td>
		<td><input type="text" name="ntitle" value="공지사항 제목"/></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea type="text" name="ncontent" cols="30" rows="10">내용 입력</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="입력" />
			<a href="noticeboard">목록</a>
		</td>
	</tr>
</table>
</form>

</body>
</html>