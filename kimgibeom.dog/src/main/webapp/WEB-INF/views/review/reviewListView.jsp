<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<%@ include file="../common/scriptImport.jsp"%>
<script>
function fn_reviewView(reviewNum){
	let url = "reviewView";
	url = url + "?reviewNum=" + reviewNum;
	
	location.href = url;
}
</script>
<style>
/* header */
.header {
	width: 100%;
	height: 380px;
	background-color: #ccc;
	background-image: url('../attach/banner/banner.jpg');
	background-position: center;
}

.header .headerBackground {
	background: rgba(0, 0, 0, .4);
	height: 380px;
}

.subHr {
	width: 45px;
	margin-top: 140px;
	border: 1px solid #f5bf25;
}

.header .subTitle {
	text-align: center;
	font-size: 42px;
	color: #fff;
	margin-top: 20px;
}

.contHr {
	width: 45px;
	margin-top: 20px;
	margin-bottom: 60px;
	border: 1px solid #f5bf25;
}

.contTitle {
	font-size: 32px;
	font-weight: bold;
	text-align: center;
}

/* 입양후기 */
.review {
	width: 80%;
	font-size: 14px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
}

.review .reviewCont {
	width: 100%;
	overflow: hidden;
}

.review .reviewCont ul {
	width: 23.5%;
	float: left;
	margin: 1% 0 0 1%;
	border: 1px solid #ccc;
}

.review .reviewCont ul li:nth-child(2) {
	font-weight: bold;
	margin: 5% 3% 3% 3%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.review .reviewCont ul li:nth-child(3) {
	margin: 0 3% 0 3%;
	color: #666;
	font-size: 12px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.review .reviewCont ul li:nth-child(4) {
	text-align: right;
	margin: 4% 3% 5% 3%;
}

.review .reviewCont ul img {
	width: 100%;
}

/* 페이징 */
.review .page {
	width: 100%;
	margin-top: 70px;
}

.review .page ul {
	display: flex;
	margin: 0 auto;
	justify-content: center;
}

.review .page ul li {
	border: 1px solid #ccc;
}

.review .page ul li a {
	padding: 10px 15px;
}

.review .page ul li a:hover {
	background-color: #333;
	color: #fff;
}

/* 모바일 스타일 */
@media screen and (max-width:768px) {
	.subHr {
		margin-top: 20%;
	}
	.contHr {
		margin-top: 5%;
		margin-bottom: 10%;
	}
	.header .subTitle {
		font-size: 36px;
		margin-top: 0;
		padding-bottom: 5%;
	}
	.contTitle {
		font-size: 28px;
	}
	.review {
		margin-top: 10%;
		margin-bottom: 10%;
	}
	.review .reviewCont ul {
		width: 48%;
	}
	.review .page {
		width: 100%;
		margin-top: 10%;
	}
	.review .page ul li a {
		padding: 8px 14px;
	}
}

/*에디터 marker클래스*/
.marker {
	background-color: yellow;
}

p {
	margin-top: 0;
	margin-bottom: 0;
	float: left;
}

h1, h2, h3, h4, h5, h6 {
	font-size: 1em;
	border-style: none;
	font-weight: normal;
}

strong {
	font-weight: normal;
}

big, small {
	font-size: 1em;
}
</style>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
				<header>
					<%@ include file="../common/header.jsp"%>
				</header>
				<hr class='subHr'>
				<div class='subTitle'>입양후기</div>
			</div>
		</div>

		<!-- 입양후기 -->
		<div class="content">
			<div class="review">
				<div class='contTitle'>입양후기</div>
				<hr class='contHr'>
				<div class='reviewCont'>
					<c:choose>
						<c:when test="${empty reviewList}">
							<p style="font-size: 15px;">등록된 후기글이 없습니다.</p>
						</c:when>
						<c:when test="${!empty reviewList}">
							<c:forEach var="reviewList" items="${reviewList}">
								<a href='#'
									onclick="fn_reviewView(<c:out value='${reviewList.reviewNum}'/>)">
									<ul>
										<li>
											<div style="height: 200px; width: 100%;">
												<img style="height: 200px;"
													src="<c:url value='/attach/review/${reviewList.attachName}'/>" />
											</div>
										</li>
										<li>${reviewList.title}</li>
										<li></li>
										<li>+더보기</li>
									</ul>
								</a>
							</c:forEach>
						</c:when>
					</c:choose>
				</div>

				<!-- 페이징 -->
				<div class='page'>
					<ul>

					</ul>
				</div>
			</div>
		</div>

		<!-- 푸터 -->
		<footer>
			<%@ include file="../common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>