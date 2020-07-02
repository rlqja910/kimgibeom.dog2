<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>ADMIN PAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/scriptImport.jsp" %>
<script>
function userDel(){
	$('#delete').click(() => {
		if($('input:checkbox').is(':checked')) {
			swal({
				title: '회원 삭제',
				text: '회원을 삭제하시겠습니까?',
				type: 'warning',
				showCancelButton: true,
				confirmButtonText: '확인',
				cancelButtonText: '취소',
				closeOnConfirm: false
			},
			function(isConfirm) {
				if(isConfirm) 
					swal({
						title: '',
						text: '회원이 삭제되었습니다.',
						type: 'success',
						confirmButtonText: '확인'
					});	
			});
		}
	});
}

function userSearch(){
	$('#search').click(() => {
		if($('#searchContent').val().trim()) {
			
		}	
	});
}

$(userDel);
$(userSearch);
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
	border-bottom: 1px solid rgba(0,0,0,0.05);
	border-top: 1px solid rgba(225,225,225,0.05);
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

#leftNav .main_content .header .border{
	font-size: 19px;
}

#leftNav .main_content .header #topButton {
	text-decoration: none;
	margin-top: 4px;
	margin-right: 20px;
	float: right;
}

#leftNav .main_content .header #topButton a{
	text-decoration: none;
}

#leftNav .main_content .info {
	margin: 60px;
	color: #717171;
}

#content {
	float: left;
	margin-left: 10px;
	width: 400px;
	display: inline;
}

#search {
	background: #4b4276;
}

#spanSearch {
	color: #fff;
}

tr > th {
	background: #dbd9e3;
}

th, td {
	text-align: center;
}

th {
	color: #4b4276;
}

.buttons{
	float: right;
}

#pagination {
	display: block;
	text-align: center;
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
					<a href='<c:url value='/admin/logo/logoRegist'/>'>로고관리</a>&nbsp;|&nbsp;
					<a href='<c:url value='/admin/banner/bannerRegist'/>'>배너관리</a>&nbsp;|&nbsp; 
					<a href='<c:url value='/'/>'>홈페이지 돌아가기</a>&nbsp;|&nbsp; 
					<a href='<c:url value='/user/logout'/>'>로그아웃</a>
			</div>
		</div>
		<div class='info'>
			<div class='content'>
				<h3><span class='glyphicon glyphicon-user'></span><strong> 회원관리</strong></h3>
				<hr style='border: 1px solid #a0a0a0;'>
			
				<form action='#'>
					<div class='form-group'>
						<select class='form-control' style='width: 100px; height: 35px; float:left;'>
							<option>아이디</option>
							<option>이름</option>
						</select>
					</div>					
					<div class='form-group' id='content'>
						<input type='text' id='searchContent' class='form-control' placeholder='검색어를 입력해주세요.'/>
					</div>
					<div class='form-group'>
						<button type='button' class='btn btn-default' id='search'>
							<span id='spanSearch'>검색</span>
						</button>
					</div>
				</form>
				<br>
				<table class='table table-hover'>
					<thead>
						<tr>
							<th>선택</th>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th>가입일</th>
							<th>수정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type='checkbox'/></td>
							<td>sohyun2</td>
							<td>김소현</td>
							<td>010-1251-8495</td>
							<td>sohyun2@google.com</td>
							<td>2016-06-02</td>
							<td>
								<button type='button' class='btn btn-default btn-xs'>
									<a href='03.html'><span class='glyphicon glyphicon-pencil'></span></a>
								</button>
							</td>
						</tr>
						<tr>
							<td><input type='checkbox'/></td>
							<td>arim051</td>
							<td>김아림</td>
							<td>010-1817-9123</td>
							<td>arim051@naver.com</td>
							<td>2016-06-05</td>
							<td>
								<button type='button' class='btn btn-default btn-xs'>
									<a href='03.html'><span class='glyphicon glyphicon-pencil'></span></a>
								</button>
							</td>
						</tr>	
						<tr>
							<td><input type='checkbox'/></td>
							<td>sohyun232</td>
							<td>김소현</td>
							<td>010-8465-2656</td>
							<td>sohyun2@google.com</td>
							<td>2016-06-10</td>
							<td>
								<button type='button' class='btn btn-default btn-xs'>
									<a href='03.html'><span class='glyphicon glyphicon-pencil'></span></a>
								</button>
							</td>
						</tr>	
						<tr>
							<td><input type='checkbox'/></td>
							<td>arim05123</td>
							<td>김아림</td>
							<td>010-1895-7442</td>
							<td>arim051@naver.com</td>
							<td>2016-06-13</td>
							<td>
								<button type='button' class='btn btn-default btn-xs'>
									<a href='03.html'><span class='glyphicon glyphicon-pencil'></span></a>
								</button>
							</td>
						</tr>															
					</tbody>
				</table>	
					
				<div class='buttons'>
					<button type='button' class='btn btn-primary' id='add' onClick="location.href='02.html'">등록</button>&nbsp;
					<button type='button' class='btn btn-warning' id='delete'>삭제</button>
				</div>
				
				<br><br><br>
					
				<div id="pagination">
					<ul class="pagination">
					    <li><a href="#">&laquo;</a></li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>