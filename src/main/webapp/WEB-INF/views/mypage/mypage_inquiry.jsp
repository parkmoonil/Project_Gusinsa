<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역</title>
<link rel="stylesheet" href="resources/css/cs/main.css">
<link rel="stylesheet" href="resources/css/cs/board.css">
<link rel="stylesheet" href="resources/css/cs/mypagecs.css">
</head>
<script>
	function test(element) {
		var test = element.nextElementSibling;
		if (test.style.display == 'none') {
			test.style = "display:table-row; *display:block";
		} else {
			test.style.display = 'none';
		}
	}
</script>
<body>
<%@include file="../../../../resources/common/header.jsp" %>
<div class="cs_main">   
<%@include file="mypage_left_nav/mypage_nav.jsp" %>      
    <div class="cs_main_board">
       <div class="line" > </div>
       <h2>1:1 문의내역</h2>
       
       <div>
	       <table>
	            <tr>
	                <th class="mypagecs_header">분류</th>
	                <th class="mypagecs_title">제목</th>
	                <th class="mypagecs_state">문의상태</th>
	                <th>작성일자</th>
	            </tr>
	            
	            <c:forEach items="${MypageIM}" var="inq">
					<tr class="Mytoggle" onclick="test(this)">
						<td>
							${inq.iselect1}
						</td>
						<td>
							${inq.ititle }
						</td>
						<td>
							${inq.istate }
						</td>
						<td>
							${inq.idate }
						</td>
					</tr>
				 	<tr class="mypagecs_content">
		            	<td colspan="3"><pre>${inq.icontent }</pre>
		            	</td>
		            </tr>
				</c:forEach>
	        </table>
        </div>
        
			<form action="MypageIM" method="post">
				<c:if test="${searchVO.totPage>1 }">
				
	     			<c:forEach begin="${searchVO.pageStart }" end="${searchVO.pageEnd }" var="i">
				         <c:choose>
				            <c:when test="${i eq searchVO.page }">
				               <span style="color: red; font-weight: bold;">${i }&nbsp;</span>
				            </c:when>
				            <c:otherwise>
				               <a href="mypage_inquiry?page=${i }" style="text-decoration: none">${i }</a>  &nbsp;
				      		</c:otherwise>
				         </c:choose>
	     			</c:forEach>
     			
	     			 <c:if test="${searchVO.page>1}">
				     	 <a href="mypage_inquiry?page=1">[처음]</a>
				     	 <a href="mypage_inquiry?page=${searchVO.page-1 }">[이전]</a>
				      </c:if>
					 <c:if test="${searchVO.totPage>searchVO.page}">
					     <a href="mypage_inquiry?page=${searchVO.page+1 }">[다음]</a>
					     <a href="mypage_inquiry?page=${searchVO.totPage }">[마지막]</a>
				     </c:if>
	  			</c:if>
			</form> 
   	 </div>
</div>
<%@include file="../../../../resources/common/footer.jsp" %>
</body>
</html>