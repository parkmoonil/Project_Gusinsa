<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/cs/board.css" />
<link rel="stylesheet" href="resources/css/cs/main.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
<%@include file="../../../../resources/common/header.jsp" %>
</header>
<div class="cs_main">
<%@include file="../cs_nav/cs_left_nav.jsp" %>  
	<div class="cs_main_board">
	 	<div class="line">
	 	</div>
	 	<table class="notice_search">
    		<td>
    			<h2>공지사항</h2>
    		</td>
    		<div>
	    		<td class="search_textarea">
	    			<input type="text" value="검색어를 입력해주세요" />
	    		</td>
    		</div>
    	</table>
  
		<table>
			<tr>
				<th class="noticeboard_title">제목</th>
				<th class="noticeboard_date">작성일자</th>
			</tr>
			<c:forEach items="${noticeboard}" var="dto" begin="0" end="10">
				<tr>
					<td>
						<a href="content_view?nnum=${dto.nnum }">${dto.ntitle}</a>
					</td>
					<td class="noticeboard_td_date">${dto.ndate }</td>
				</tr>
			</c:forEach>
		</table>
		<div class="write_button">
			<a href="write_view">글쓰기</a>
		</div>
		<form action="noticeboard" method="post" class="noticeboard_page">
			<c:if test="${searchVo.totPage>1 }">
				<c:if test="${searchVo.page>1 }">
					<a href="noticeboard?page=1">[처음]</a>
					<a href="noticeboard?page=${searchVo.page-1 }">[이전]</a>
				</c:if>
				<c:forEach begin="${searchVo.pageStart }" end="${searchVo.pageEnd }" var="i">
					<c:choose>
						<c:when test="${i eq searchVo.page }">
							<span style="color: red;">${i }&nbsp;</span>
						</c:when>
						<c:otherwise>
							<a href="noticeboard?page=${i }&sk=${resk}&ntitle=${ntitle==true?'ntitle':''}&ncontent=${ncontent==true?'ncontent':''}" style="text-decoration: none">${i }</a>&nbsp;
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${searchVo.totPage>searchVo.page }">
					<a href="noticeboard?page=${searchVo.page+1 }">[다음]</a>
					<a href="noticeboard?page=${searchVo.totPage }">[마지막]</a>
				</c:if>
			</c:if>
		</form>
	</div>
</div>	
totCnt : ${tot.totCnt}	<br />
현재페이지/토탈페이지 : ${searchVo.page } / ${searchVo.totPage }

<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>