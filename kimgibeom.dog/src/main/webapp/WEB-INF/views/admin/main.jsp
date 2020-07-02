<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>ADMIN PAGE</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<%@ include file="common/scriptImport.jsp" %>
<script src="https://code.jquery.com/jquery-1.10.1.js"
	integrity="sha256-663tSdtipgBgyqJXfypOwf9ocmvECGG8Zdl3q+tk+n0="
	crossorigin="anonymous"></script>

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

.plus {
	float: right;
	text-align: right;
}

#supportItem, #moneyItem {
	margin-top: 120px;
}

#totalPrice, #todayPrice {
	width: 310px;
	height: 200px;
	border: solid #4873AE;
	border-width: 8px 0 0 0;
	border-radius: 3%;
	background: #fff;
	text-align: center;
	float: left;
	margin-top: 25px;
}

#totalPrice {
	margin-right: 20px;
}

.totalPrice, .todayPrice {
	font-size: 20px;
	margin-top: 50px;
}

.num {
	margin: 0 0 10px 0;
	font-size: 40px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class='wrapper' id='leftNav'>
		<header></header>
		<div class='sidebar' id='sidebar'>
			<%@ include file="common/nav.jsp"%>
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
				<!-- info 밑으로 화면 구성하면되고 글리피콘 사용할때 id 만들어서 사용해주세요. 안그러면 네비게이션바 글리피콘도 움직여요. -->
				<div class='item'>
					<div style='overflow: hidden;'>
						<strong class='border'>유기견 관리</strong> <a href='admin/dogListView'
							class='plus'> <span class='glyphicon glyphicon-plus'></span>
							더보기
						</a>
					</div>
					<hr style='border: 1px solid black; margin-top: 8px;'>
					<table class='table table-hover'>
						<tr>
							<td>진돗개 까미 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>치와와치치 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>포메라니안 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>달마시안 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>슈나우저 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>말티즈 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>비글 분양합니다</td>
							<td>2020-06-10</td>
						</tr>
						<tr>
							<td>시바견 분양합니다</td>
							<td>2020-06-10</td>
						</tr>

					</table>
				</div>

				<div class='item'>
					<div style='overflow: hidden;'>
						<strong class='border'>신고 접수</strong> <a href='admin/reportListView'
							class='plus'><span class='glyphicon glyphicon-plus'></span>
							더보기</a>
					</div>
					<hr style='border: 1px solid black; margin-top: 8px;'>
					<table class='table table-hover'>
						<tr>
							<td>쌍북에 유기견이 있습니다</td>
							<td>jessy777</td>
							<td>2020-06-10</td>
						<tr>
						<tr>
							<td>홍대역 1번출구에 유기견이 있습니다</td>
							<td>Jyp0423</td>
							<td>2020-06-10</td>
						<tr>
						<tr>
							<td>강남역 4번출구에 유기견이 있습니다</td>
							<td>bts3434</td>
							<td>2020-06-10</td>
						<tr>
						<tr>
							<td>영등포역 편의점에 유기견이 있습니다</td>
							<td>abcd123</td>
							<td>2020-06-10</td>
						<tr>
						<tr>
							<td>쌍북교육센터 앞에 유기견이 있습니다</td>
							<td>bob9999</td>
							<td>2020-06-10</td>
						<tr>
					</table>
				</div>

				<div class='item' id='supportItem'>
					<div style='overflow: hidden;'>
						<strong class='border'>후원금 현황</strong> <a href='donation/01.html'
							class='plus'><span class='glyphicon glyphicon-plus'></span>
							더보기</a>
					</div>

					<hr style='border: 1px solid black; margin-top: 8px;'>
					<table class='table table-hover'>
						<tr>
							<td>abcd123님이 30,000원을 후원하였습니다</td>
							<td>2020-06-10</td>
						<tr>
						<tr>
							<td>bum1993님이 50,000원을 후원하였습니다</td>
							<td>2020-06-10</td>
						<tr>
						<tr>
							<td>poo323님이 70,000원을 후원하였습니다</td>
							<td>2020-06-10</td>
						<tr>
							<td>GGANG님이 10,000원을 후원하였습니다</td>
							<td>2020-06-10</td>
						<tr>
							<td>Rinda님이 30,000원을 후원하였습니다</td>
							<td>2020-06-10</td>
						<tr>
					</table>
				</div>
				<div class='item' id='moneyItem'>
					<div class='money'>
						<div class='price' id='totalPrice'>
							<p class='totalPrice'>총 누적 후원금액</p>
							<div id="count1" class="num"></div>
						</div>
						<div class='price' id='todayPrice'>
							<p class='todayPrice'>이번달 후원금액</p>
							<div id="count2" class="num"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	Number.prototype.cf = function() {
		var a = this.toString().split(".");
		a[0] = a[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return a.join(".");
	}
	String.prototype.cf = function() {
		if (isNaN(this)) {
			return this;
		}
		return Number(this).cf();
	}

	function animateCount1(num) {
		var $el = $("#count1");
		$({
			val : 0
		}).animate({
			val : num
		}, {
			duration : 2000,
			step : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			},
			complete : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			}
		});
	}
	function animateCount2(num) {
		var $el = $("#count2");
		$({
			val : 0
		}).animate({
			val : num
		}, {
			duration : 2000,
			step : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			},
			complete : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			}
		});
	}

	$(()=>{
		animateCount1(143252300); 
		animateCount2(454000);
	});
</script>
</html> 