<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/board.css" />
<link rel="stylesheet" href="resources/main.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <header><%@include file="common/header.jsp" %></header> --%>
<div class="cs_main">
    	<div class="cs_left_nav">
	        <h2 class="cs_left_title"><a href="csmain">
	            고객센터
	        </a></h2>
	        <ul>
	            <li class="cs_left_list" ><a href="noticeboard">
	                공지사항
	            </a></li>
	            <li class="cs_left_list"><a href="./faq.html">
	                FAQ
	            </a></li>
	            <li class="cs_left_list"><a href="./inquiry.html">
	                1:1 문의하기
	            </a></li>
	            <li class="cs_left_list"><a href="./communication.html">
	                고객의 소리
	            </a></li>
	            <li class="cs_left_list"><a href="./enter.html">
	                입점문의
	            </a></li>
	            <li class="cs_left_list"><a href="./membership.html">
	                멤버쉽(클럽)안내
	            </a></li>
	        </ul>
	
	        <div class="cs_left_contact">
	            <h4>고객센터</h4>
	            <h3>1555-1234</h3>
	            <h6>평일09:00 ~ 18:00</h6>
	            <h6>주말 및 공휴일 휴무</h6>
	       </div>
	   </div> 
 
	 <div class="cs_main_board">
	 	<div class="line">
	 	
	 	</div>
	 	<table class="notice_search">
    		<td><h2>공지사항</h2></td>
    		<td class="search_textarea">
    		<input type="textarea" value="검색어를 입력해주세요" />
    		</td>
    	</table>
  
		<table>
			<tr>
				<th class="noticeboard_title">제목</th>
				<th class="noticeboard_date">작성일자</th>
			</tr>
			<c:forEach items="${noticeboard}" var="dto" begin="1" end="10">
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

<%-- <footer><%@include file="common/footer.jsp" %></footer> --%>
</body>
</html>