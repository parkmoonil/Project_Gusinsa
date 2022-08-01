<%@page import="com.tech.project_shopping_mall.dao.CSDao"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.project_shopping_mall.dto.FaqDto"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/cs/main.css" />
<link rel="stylesheet" href="resources/css/cs/board.css" />
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %> 
	<div class="cs_main_board">
		<div class=line ></div>
			<form action="faq_write" method="post">
				<table>
					<tr>
						<th>분류</th>
						<td>
							<div class="faq_header_select">
								<select name="fheader" >
									<option value="상품">상품</option>
									<option value="회원">회원</option>
									<option value="배송">배송</option>
									<option value="반품/교환/환불">반품/교환/환불</option>
									<option value="주문/결제">주문/결제</option>
									<option value="기타">기타</option>
								</select>
							</div>	
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="ftitle" value="FAQ 제목"/></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
						<textarea name="fcontent" cols="30" rows="10">내용 입력</textarea>
						</td>
					</tr>
				</table>
					<input type="submit" value="입력" />
					<a href="faqboard">목록</a>
				</form>
	</div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>