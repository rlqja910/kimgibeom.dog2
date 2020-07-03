<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<%@ include file="../common/scriptImport.jsp"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>
<script
	src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
<script>

$(()=>{
	$('#adoptReserve').click(()=>{
		$.ajax({
			success: () =>{
				swal({
					title:'',
					text:'입양신청이 완료되었습니다.',
					type:'success', 
				},
				)}
			});
		});
});
</script>
<!-- modal -->
<style>
/* madal을 사용할 때 padding을 0으로 맞춰줘야 한다.*/
.container {
	padding: 0;
}

/* header */
.header {
	width: 100%;
	height: 380px;
	background-color: #ccc;
	background-image: url('../../attach/banner/banner.jpg');
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

.header header .headB ul li a {
	font-size: 16px;
}

.header header .headB ul li:hover a {
	color: #f5bf25 !important;
	transition-duration: .5s;
	font-size: 16px;
}

/* 무료입양 */
.review {
	width: 80%;
	font-size: 14px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
}

.review .dogView {
	width: 90%;
	margin: 0 auto;
}

.review .dogView table {
	width: 100%;
	border-collapse: collapse;
}

.review .dogView table tr:nth-child(1) {
	border-top: 1px solid #333;
	border-bottom: 1px solid #ccc;
}

.review .dogView table tr {
	font-size: 16px;
	border-bottom: 1px solid #ccc;
}

.review .dogView table tr th {
	background-color: #efefef;
	width: 20%;
	padding: 1% 0;
	text-align: center;
}

.review .dogView table tr td {
	width: 30%;
	padding: 1% 0 1% 2%;
}

/* 입양신청 목록 버튼 */
.button {
	text-align: center;
	overflow: hidden;
}

.button input {
	background-color: #f5bf25;
	width: 70px;
	height: 40px;
	border: 0px;
	color: #fff;
	margin-top: 30px;
}

.button input:nth-child(2) {
	border: 1px solid #ccc;
	background-color: #fff;
	color: #666;
	margin-left: 5px;
}

/* modal */
.modal-dialog {
	width: 45%;
	margin: 0 auto;
	margin-top: 10%;
}

.modal-title {
	text-align: center;
	color: #333;
	font-size: 24px;
	font-weight: bold;
	border-bottom: 1px solid #f5bf25;
	padding: 4% 0;
}

.modal-header {
	border: 0;
}

.modal-footer {
	text-align: center;
	padding: 4% 0;
}

.modal-footer button {
	width: 80px;
	height: 40px;
}

.modal-footer button:nth-child(1) {
	background-color: #f5bf25;
	color: #fff;
	border: 0;
}

.modal-body table tr input {
	border: 1px solid #999;
	height: 40px;
}

.modal-body table tr th {
	width: 25%;
	text-align: center;
}

.modal-body table tr td {
	width: 75%;
}

.modal-body table .name td input {
	width: 80%;
	margin-bottom: 20px;
}

.modal-body table .name th {
	padding-bottom: 20px;
}

.modal-body table .tall td input {
	width: 24%;
}

.modal-body p {
	width: 90%;
	text-align: center;
	background-color: #efefef;
	margin: 0 auto;
	margin-top: 20px;
	padding: 5% 0;
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
	.contHr {
		margin-top: 5%;
		margin-bottom: 10%;
	}
	.contTitle {
		font-size: 28px;
	}
	.review {
		margin-top: 10%;
		margin-bottom: 10%;
	}
	.review .dogView {
		width: 100%;
	}
	.review .dogView table tr {
		font-size: 14px;
	}
	.review .dogView table tr th {
		background-color: #efefef;
		width: 20%;
		padding: 2% 0;
	}
	.review .dogView table tr:nth-child(5) td {
		padding: 2% 2%;
	}
	.button input {
		margin-top: 5%;
	}

	/* modal */
	.modal-dialog {
		width: 80%;
		margin: 0 auto;
		margin-top: 30%;
	}
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
				<div class='subTitle'>무료 분양</div>
			</div>
		</div>

		<!-- 입양후기 -->
		<div class="content">
			<div class="review">
				<div class='contTitle'>무료 분양</div>
				<hr class='contHr'>
				<div class='dogView'>
					<table>
						<tr>
							<th>제목</th>
							<td colspan='3'>${dog.dogTitle}</td>
						</tr>
						<tr>
							<th>품종</th>
							<td>${dog.dogKind}</td>
							<th>이름</th>
							<td>${dog.dogName}</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>${dog.dogGender}</td>
							<th>나이</th>
							<td>${dog.dogAge}</td>
						</tr>
						<tr>
							<th>체중</th>
							<td>${dog.dogWeight}</td>
							<th>입소날짜</th>
							<td>${dog.dogEntranceDate}</td>
						</tr>
						<tr>
							<td colspan='4' align="center">
								<div>
									<img src='../../attach/dog/${dog.attachName}' />
								</div> <br> <br> ${dog.dogContent}
							</td>
						</tr>
					</table>

					<!-- 목록 버튼 -->
					<div class='button'>
						<input type='button' value='입양신청' data-target='#myModal1'
							data-toggle='modal' /> <input type='button' value='목록'
							onClick="location.href='../../dog/dogListView'" />
					</div>
				</div>

				<!-- modal -->
				<div class='modal fade' id='myModal'>
					<div class='modal-dialog modal-sm'>
						<div class='modal-content'>
							<div class='modal-header'>
								<button class='close' data-dismiss='modal'>&times;</button>
								<h4 class='modal-title'>입양신청</h4>
							</div>
							<div class='modal-body'>
								<table>
									<tr class='name'>
										<th>이름</th>
										<td><input type='text' /></td>
									</tr>
									<tr class='tall'>
										<th>전화번호</th>
										<td><input type='number' /> - <input type='number' /> -
											<input type='number' /></td>
									</tr>
								</table>
								<p>예약이 완료되면 카카오톡으로 안내가 됩니다.</p>
							</div>
							<div class='modal-footer'>
								<button class='btn btn-default' data-dismiss='modal'
									id='adoptReserve'>신청하기</button>
								<button class='btn btn-default' data-dismiss='modal'>취소</button>
							</div>
						</div>
					</div>
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