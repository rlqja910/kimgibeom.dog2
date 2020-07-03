<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Dog Modify</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/scriptImport.jsp"%>
<script>
function modify(){
	let count = 0;
	
	$('#modify').click(() => { 
		count++;	
		if(count == 1)
			$('.button').prepend('<font color="red">유기견 정보 수정이 완료되었습니다.</font>')
	});
}

$(modify);
</script>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #f3f5f9;
}

#leftNav {
	display: flex;
	position: relative;
}

#leftNav #sidebar {
	position: fixed;
	width: 200px;
	height: 100%;
	background: #4b4276;
	padding: 20px 0;
}

#leftNav #sidebar h2 {
	color: #fff;
	text-align: center;
	margin-bottom: 30px;
}

#leftNav #sidebar ul li {
	padding: 15px;
	list-style: none;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(225, 225, 225, 0.05);
}

#leftNav #sidebar ul li a {
	color: #bdb8d7;
	display: black;
}

#leftNav #sidebar ul li a span {
	width: 25px;
}

#leftNav #sidebar ul li:hover {
	background: #594f8d;
}

#leftNav #sidebar ul li:hover a {
	color: #fff;
	text-decoration: none;
}

#leftNav .main_content {
	width: 100%;
	margin-left: 200px;
}

#leftNav .main_content .header {
	padding: 11px;
	background: #fff;
	color: #717171;
	border-bottom: 1px solid #e0e4e8;
}

#leftNav .main_content .header .border {
	font-size: 19px;
}

#leftNav .main_content .header #topButton {
	text-decoration: none;
	margin-top: 4px;
	margin-right: 20px;
	float: right;
}

#leftNav .main_content .header #topButton a {
	text-decoration: none;
}

#leftNav .main_content .info {
	margin: 50px;
	color: #717171;
}

.item {
	width: 640px;
	height: 300px;
	margin: 0 120px 50px 30px;;
	float: left;
}

.th {
	background-color: #EFEFEF;
	width: 100px;
	text-align: center;
}

textarea {
	width: 1000px;
	height: 200px;
	resize: none;
	padding: 15px;
}
</style>
</head>
<body>
	<div class='wrapper' id='leftNav'>
		<div class='sidebar' id='sidebar'>
			<%@ include file="../common/nav.jsp"%>
		</div>
		<div class='main_content'>
			<div class='header'>
				<strong>&nbsp;&nbsp;ADMINSTRATOR</strong>
				<div id='topButton'>
					<a href='<c:url value='../common/logoRegist'/>'>로고관리</a>&nbsp;|&nbsp;
					<a href='<c:url value='../common/bannerRegist'/>'>배너관리</a>&nbsp;|&nbsp;
					<a href='<c:url value='/'/>'>홈페이지 돌아가기</a>&nbsp;|&nbsp; <a
						href='<c:url value='../../user/logout'/>'>로그아웃</a>
				</div>
			</div>
			<div class='info'>
				<!-- info 밑으로 화면 구성하면되고 글리피콘 사용할때 id 만들어서 사용해주세요. 안그러면 네비게이션바 글리피콘도 움직여요. -->
				<div class='content'>
					<h3>
						<span class='glyphicon glyphicon-heart'></span><strong>
							유기견 관리 > 수정</strong>
					</h3>
					<br>
					<br>

					<form>
						<table class='table'>
							<tr>
								<th class='th'>제목</th>
								<td colspan='3'><input type='text' style='width: 400px;'
									value='비글 오렌지 책임분양' /></td>
							</tr>
							<tr>
								<th class='th'>이름</th>
								<td><input type='text' value='오렌지' /></td>
								<th class='th'>품종</th>
								<td><input type='text' value='비글' /></td>
							</tr>
							<tr>
								<th class='th'>체중</th>
								<td><input type='number' style='width: 70px;'
									placeholder='2' /> (kg)</td>
								<th class='th'>나이</th>
								<td><input type='number' value='5' /></td>
							</tr>
							<tr>
								<th class='th'>입소날짜</th>
								<td colspan='3'><input type='date' name='enterDate' /></td>
							</tr>
							<tr>
								<th class='th'>성별</th>
								<td colspan='3'><input type='radio' name='gender' checked />수컷
									&nbsp;&nbsp; <input type='radio' name='gender' />암컷</td>
							</tr>
							<tr>
								<th class='th'>내용</th>
								<td colspan='3'><textarea id='description'> 오늘도 많은 아이들이 각자의 안타까운 사연을 가지고 있습니다. 입양 시 소정의 책임비가 발생되니 참고 부탁드립니다. 이 때 발생되는 책임비는 또 다른 유기견들의 관리 비용에 사용되고 있습니다. 아이들의 평생을 결정하는 선택, 신중히 생각 해보신 후에 연락 주세요.
								</textarea></td>
							</tr>
							<tr>
								<th class='th'>이미지</th>
								<td colspan='3'><input type='file' /></td>
							</tr>
						</table>

						<div class='button' style='text-align: right;'>
							<button type='button' class='btn btn-primary' id='modify'>수정</button>
							<button type='button' class='btn btn-default' id='cancel'
								onClick="location.href='03.html'">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>