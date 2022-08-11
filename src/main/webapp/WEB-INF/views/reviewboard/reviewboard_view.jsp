<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/nstyle.css" />
</head>

<script>
/* $(document).ready(function () {
	let r_likepoint = document.getElementById('r_likepoint')
	let likeval = document.getElementById('r_likecheck').value
	const r_num = '${reviewboard_view.r_num}';
	const MID = "${sessionScope.loginId}";
	const likeimg = document.getElementById("likeimg")

	if (likeval > 0) {
		likeimg.src = "resources/img/heart_black.png";
	}
	else {
		likeimg.src = "resources/img/heart_blanc.png";
	}
    // 좋아요 버튼을 클릭 시 실행되는 코드
$(".likeimg").on("click", function () {
	$.ajax({
      url: '/reviewboard/reviewboard_view',
      type: 'GET',
      data: { 'r_num': r_num, 'mid': mid },
      success: function (data) {
          if (data == 1) {
              $("#likeimg").attr("src", "resources/img/heart_black.png");
              location.reload();
          } else {
              $("#likeimg").attr("src", "resources/img/heart_blanc.png");
              location.reload();
          }
      }, error: function () {
          $("#likeimg").attr("src", "resources/img/heart_black.png");
          console.log('오타 찾으세요')
      }

  });

  });
  }); */
     </script>

<body>
<h3>유저리뷰</h3>

<input type="hidden" name="r_num" value="${reviewboard_list.r_num }" />
	<div>
		<div>
			<span class="left">아이디</span>
			<span>${reviewboard_view.mid }</span>
		<div>
			<span class="left">조회수</span>
			<span>${reviewboard_view.r_hit }</span>
		</div>
		<div>
			<span class="left">
			 	<c:if test="${reviewboard_view.r_img ne null }">
				<div>
					<img border="1" width="500" height="500" 
					src="resources/upload/${reviewboard_view.r_img }" alt="" />	
				</div>
				</c:if>
				</span>
		</div>
		<div>
			<span class="left">별점</span>
			<span>
					<c:if test="${reviewboard_view.r_starpoint==1 }">
					★☆☆☆☆
					</c:if>
					<c:if test="${reviewboard_view.r_starpoint==2 }">
					★★☆☆☆
					</c:if>
					<c:if test="${reviewboard_view.r_starpoint==3 }">
					★★★☆☆
					</c:if>
					<c:if test="${reviewboard_view.r_starpoint==4 }">
					★★★★☆
					</c:if>
					<c:if test="${reviewboard_view.r_starpoint==5 }">
					★★★★★
					</c:if>
			</span>
		<div>
			<span class="left">제목</span>
			<span>${reviewboard_view.r_title }</span>
		</div>
		<div>
			<span class="left">내용</span>
			<span>${reviewboard_view.r_contents }</span>
		</div>
		<div>
			<span class="left">작성일</span>
			<span><fmt:formatDate value="${reviewboard.r_date}" pattern = "yyyy.MM.dd"/></span>
		</div>
		<div>
			<span class="left">상품</span>
			<span>${reviewboard_view.p_code }</span>
		</div>
		<div text-align="right">
		<a href="reviewboard_list">리뷰목록</a>
		</div>
	</div>

 
<%-- 	<c:if test="${mid ne null }">
		<img src="/resources/img/heart_blank.png" id="likeimg" width="60px" height="60px"
		class="rounded-circle mt-2">
		${reviewboard_view.r_likepoint} <br><br>
	</c:if> --%>
<%-- <c:if test="${sessionScope.loginId == null || sessionScope.loginId eq 'guest'}">
		${reviewboard_view.r_likepoint} <br><br>
	추천 기능은 <a href="login/loginform" type="button" id="newLogin"
	class="btn btn-outline-success">로그인</a> 후 사용 가능합니다.
</c:if> --%>
	<%-- 
	<c:set value="${dto.r_img }" var="filename" />
	<c:set var="fileNm" value="${fn:toLowerCase(filename) }" />
	<c:forTokens var="token" items="${fileNm }" delims="." varStatus="status">
		<c:if test="${status.last }">
			<c:choose>
				<c:when test="${token eq 'jpg' || token eq 'png' || toaken eq 'bmp' }">
					${filename }:::그림파일 jpg png bmp <br />
					${status.last }
					<div>
						<img border="1" width="100" height="100" 
						src="resources/upload/${dto.r_img }" alt="" />	
					</div>
				</c:when> 
			</c:choose>
		</c:if>
	</c:forTokens> --%>
<%-- <c:if test="${content_view.filesrc ne null }">
	<div>
		<img border="1" width="100" height="100" 
		src="resources/upload/${content_view.filesrc }" alt="" />	
	</div>
</c:if> --%>
</body>
</html>