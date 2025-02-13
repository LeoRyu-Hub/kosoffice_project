<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>수흥부대찌개</title>
<meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport" />
<link rel="icon" href="assets/img/kaiadmin/favicon.ico" type="image/x-icon" />
<!-- Fonts and icons -->
<script src="assets/js/plugin/webfont/webfont.min.js"></script>
<script>
	WebFont.load({
		google : {
			families : [ "Public Sans:300,400,500,600,700" ]
		},
		custom : {
			families : [ "Font Awesome 5 Solid", "Font Awesome 5 Regular",
					"Font Awesome 5 Brands", "simple-line-icons", ],
			urls : [ "assets/css/fonts.min.css" ],
		},
		active : function() {
			sessionStorage.fonts = true;
		},
	});
</script>
<!-- CSS Files -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="/assets/css/plugins.min.css" />
<link rel="stylesheet" href="/assets/css/kaiadmin.min.css" />
<link rel="stylesheet" href="/assets/css/calendar.css" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link rel="stylesheet" href="/assets/css/demo.css" />
</head>
<style>
.chart-container {
	width: 100%;
	height: calc(100vh - 200px); /* 뷰포트 높이에서 여백을 제외 */
}
</style>
<body>
	<div class="wrapper">
		<!-- Sidebar -->
		<div class="sidebar" data-background-color="dark">
			<div class="sidebar-logo">
				<!-- Logo Header -->
				<div class="logo-header" data-background-color="dark">
					<a href="/main" class="logo"> <img src="assets/img/kaiadmin/logo_light.svg" alt="navbar brand" class="navbar-brand" height="20" />
					</a>
					<div class="nav-toggle">
						<button class="btn btn-toggle toggle-sidebar">
							<i class="gg-menu-right"></i>
						</button>
						<button class="btn btn-toggle sidenav-toggler">
							<i class="gg-menu-left"></i>
						</button>
					</div>
					<button class="topbar-toggler more">
						<i class="gg-more-vertical-alt"></i>
					</button>
				</div>
				<!-- End Logo Header -->
			</div>
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<ul class="nav nav-secondary">
						<li class="nav-section"><span class="sidebar-mini-icon"> <i class="fa fa-ellipsis-h"></i>
						</span></li>
						<li class="nav-item"><a data-bs-toggle="collapse" href="#base"> <i class="fas fa-utensils"></i> <!-- 아이콘 변경 -->
								<p>메뉴관리</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="base">
								<ul class="nav nav-collapse">
									<li><a href="/menu/list"> <span class="sub-item">메뉴조회</span></a></li>
									<li><a href="/menucategory/list"> <span class="sub-item">메뉴카테고리조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse" href="#sidebarLayouts"> <i class="fas fa-shopping-cart"></i> <!-- 아이콘 변경 -->
								<p>주문관리</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									<li><a href="/order/list"> <span class="sub-item">주문조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse" href="#tables"> <i class="fas fa-dollar-sign"></i> <!-- 아이콘 변경 -->
								<p>매출관리</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="tables">
								<ul class="nav nav-collapse">
									<li><a href="/sales/list"> <span class="sub-item">매출조회</span></a></li>
									<li><a href="/menusales/list"> <span class="sub-item">메뉴별매출</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse" href="#maps"> <i class="fas fa-users"></i> <!-- 아이콘 변경 -->
								<p>회원관리</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="maps">
								<ul class="nav nav-collapse">
									<li><a href="/member/list"> <span class="sub-item">회원조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse" href="#charts"> <i class="fas fa-credit-card"></i> <!-- 아이콘 변경 -->
								<p>결제수단관리</p> <span class="caret"></span>
						</a>
							<div class="collapse" id="charts">
								<ul class="nav nav-collapse">
									<li><a href="/paymentmethod/list"> <span class="sub-item">결제수단조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse" href="#submenu"> <i class="fas fa-cogs"></i> <!-- 아이콘 변경 -->
								<p>시스템관리</p> <span class="caret"></span></a>
							<div class="collapse" id="submenu">
								<ul class="nav nav-collapse">
									<li><a href="/manager/list"> <span class="sub-item">관리자조회</span></a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->
		<div class="main-panel">
			<div class="main-header">
				<div class="main-header-logo">
					<!-- Logo Header -->
					<div class="logo-header" data-background-color="dark">
						<a href="index.html" class="logo"> <img src="assets/img/kaiadmin/logo_light.svg" alt="navbar brand" class="navbar-brand" height="20" />
						</a>
						<div class="nav-toggle">
							<button class="btn btn-toggle toggle-sidebar">
								<i class="gg-menu-right"></i>
							</button>
							<button class="btn btn-toggle sidenav-toggler">
								<i class="gg-menu-left"></i>
							</button>
						</div>
						<button class="topbar-toggler more">
							<i class="gg-more-vertical-alt"></i>
						</button>
					</div>
					<!-- End Logo Header -->
				</div>
				<!-- Navbar Header -->
				<nav class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom">
					<div class="container-fluid">
						<!-- Search Bar -->
						<div class="navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex"></div>
						<!-- Top Bar -->
						<ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
							<!-- Quick Actions -->
							<li class="nav-item topbar-icon dropdown hidden-caret">
								<div class="dropdown-menu quick-actions animated fadeIn" aria-labelledby="dropdownMenuButton">
									<div class="quick-actions-scroll scrollbar-outer">
										<div class="quick-actions-items">
											<div class="row m-0"></div>
										</div>
									</div>
								</div>
							</li>
							<!-- User Profile -->
							<li class="nav-item topbar-user dropdown hidden-caret"><a class="dropdown-toggle profile-pic" data-bs-toggle="dropdown" href="#" aria-expanded="false">
									<div class="avatar-sm">
										<img src="assets/img/profile.jpg" alt="Profile Picture" class="avatar-img rounded-circle" />
									</div> <span class="profile-username"> <span class="op-7">Hi,</span> <span class="fw-bold">류건희</span>
								</span>
							</a>
								<ul class="dropdown-menu dropdown-user animated fadeIn">
									<div class="dropdown-user-scroll scrollbar-outer">
										<li>
											<div class="user-box">
												<div class="avatar-lg">
													<img src="assets/img/profile.jpg" alt="Profile Picture" class="avatar-img rounded" />
												</div>
												<div class="u-text">
													<h4>류건희</h4>
													<p class="text-muted">ryu@example.com</p>
												</div>
											</div>
										</li>
										<li>
											<div class="dropdown-divider"></div> <a class="dropdown-item" href="#">로그아웃</a> <a class="dropdown-item" href="#">비밀번호 변경</a>
										</li>
									</div>
								</ul></li>
						</ul>
					</div>
				</nav>
				<!-- End Navbar -->
			</div>
			<div class="container">
				<div class="page-inner">
					<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4">
						<div>
							<h3 class="fw-bold mb-3">수흥부대찌개</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-md-3">
							<div class="card card-stats card-round">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-icon">
											<div class="icon-big text-center icon-primary bubble-shadow-small">
												<i class="fas fa-shopping-cart"></i>
											</div>
										</div>
										<div class="col col-stats ms-3 ms-sm-0">
											<div class="numbers">
												<p class="card-category">어제 주문 수</p>
												<h4 class="card-title" id="yeterdayOrder"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="card card-stats card-round">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-icon">
											<div class="icon-big text-center icon-success bubble-shadow-small">
												<i class="fas fa-luggage-cart"></i>
											</div>
										</div>
										<div class="col col-stats ms-3 ms-sm-0">
											<div class="numbers">
												<p class="card-category">어제 매출액</p>
												<h4 class="card-title" id="yeterdaySales"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="card card-stats card-round">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-icon">
											<div class="icon-big text-center icon-primary bubble-shadow-small">
												<i class="fas fa-shopping-cart"></i>
											</div>
										</div>
										<div class="col col-stats ms-3 ms-sm-0">
											<div class="numbers">
												<p class="card-category">오늘 주문 수</p>
												<h4 class="card-title" id="todayOrder"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="card card-stats card-round">
								<div class="card-body">
									<div class="row align-items-center">
										<div class="col-icon">
											<div class="icon-big text-center icon-success bubble-shadow-small">
												<i class="fas fa-luggage-cart"></i>
											</div>
										</div>
										<div class="col col-stats ms-3 ms-sm-0">
											<div class="numbers">
												<p class="card-category">오늘 매출액</p>
												<h4 class="card-title" id="todaySales"></h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="card card-round">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">주간 일별 정산</div>
									</div>
								</div>
								<div class="card-body">
									<div class="chart-container" style="height: auto; width: 100%;">
										<canvas id="statisticsChart"></canvas>
									</div>
									<div id="myChartLegend"></div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="calendar-section">
					<div class="calendar-container">
						<div class="calendar-header">
							<div>
								<select id="selectYear" onchange="setYear()">
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
									<option value="2028">2028</option>
									<option value="2029">2029</option>
									<option value="2030">2030</option>
								</select> <select id="selectMonth" onchange="setMonth()">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
								<button type="button" onclick="generateCalendar()">적용하기</button>
							</div>
							<div>
								<h3 id="calendarTitle">
									<span id="titleYear"></span>년 <span id="titleMonth"></span>월
								</h3>
							</div>
						</div>
						<table class="calendar-table" id="calendarTable">
							<thead>
								<tr>
									<th value="1">일</th>
									<th value="2">월</th>
									<th value="3">화</th>
									<th value="4">수</th>
									<th value="5">목</th>
									<th value="6">금</th>
									<th value="7">토</th>
								</tr>
							</thead>
							<tbody id="calendarDt">
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달창 -->
	<div class="modal fade" id="schModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="max-width: 75%;">
			
			<div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header border-bottom-0">
					<h5 class="modal-title" id="exampleModalLabel">일정 관리</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>

				<div class="card mb-3">
					<div class="card-header">
						<h5 class="card-title mb-0">일정 정보</h5>
					</div>
					<form id="schform">		
					<input type = "hidden" id = "scheduleDt" name = "scheduleDt">
					<div class="card-body">
						<div class="form-group">
							<label for="schTitle"  style="font-weight: bold;">일정 제목</label> 
							<input type="text" class="form-control" id="schTitle" name="scheduleTitle" required placeholder="일정 제목을 입력하세요.">
						</div>
						<div class="form-group">
							<label for="schDetail"  style="font-weight: bold;">세부 내역</label>
							<textarea class="form-control" id="schDetail" rows="4" name="scheduleDetail" required placeholder="일정에 대한 세부 정보를 입력하세요."></textarea>
						</div>
						<div class="modal-footer border-top-0 d-flex justify-content-center">
						<button type="button" class="btn btn-primary btn-sm" onclick = 'addSch()'>추가</button>
						</div>
					</div>
					</form>
				</div>
				
				<!-- 일정 리스트 카드 -->
				<div class="card mb-3">
					<div class="card-header">
						<h5 class="card-title mb-0">일정 리스트</h5>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th scope="col" style="width: 50px; padding: 5px;">#</th>
									<th scope="col" style="width: 230px; padding: 5px;">일정 제목</th>
									<th scope="col">세부 내역</th>
									<th scope="col" style="width: 100px; padding: 5px;">삭제</th>
								</tr>
							</thead>
							<tbody id="schListTable"></tbody>
						</table>
					</div>
				</div>

				<!-- 모달 푸터-->
				<div class="modal-footer border-top-0 d-flex justify-content-center">
					<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>


	<!-- Core JS Files -->
	<script src="/assets/js/core/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/core/popper.min.js"></script>
	<script src="/assets/js/core/bootstrap.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

	<!-- jQuery Vector Maps -->
	<script src="/assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
	<script src="/assets/js/plugin/jsvectormap/world.js"></script>

	<!-- Chart JS -->
	<script src="/assets/js/plugin/chart.js/chart.min.js"></script>

	<!-- jQuery Sparkline -->
	<script src="/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

	<!-- Chart Circle -->
	<script src="/assets/js/plugin/chart-circle/circles.min.js"></script>

	<!-- Datatables -->
	<script src="/assets/js/plugin/datatables/datatables.min.js"></script>

	<!-- Bootstrap Notify -->
	<script src="/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

	<!-- Kaiadmin JS -->
	<script src="/assets/js/kaiadmin.min.js"></script>

	<!-- Demo and Custom Scripts -->
	<script src="/assets/js/setting-demo.js"></script>
	<script src="/assets/js/common.js"></script>
	<script src="/assets/js/paging.js"></script>
	
	<form id="deleteform">
	<input type = "hidden" id = "scheduleDt1" name = "scheduleDt">
	<input type = "hidden" id = "scheduleSq1" name = "scheduleSq">
	</form>
	

	<form id="hiddenForm"></form>
	<form id="calendarForm">
		<input type="hidden" id="date" name="dt">
	</form>
	<script>
		var year = 0;
		var month = 0;
		var day = 15;
		$(document).ready(function() {
			call_server(hiddenForm, '/yesterdayOrder/search',setYestedayOrder);
			call_server(hiddenForm, '/yesterdaySales/search',setYestedaySales);
			call_server(hiddenForm, '/todayOrder/search',setTodayOrder);
			call_server(hiddenForm, '/todaySales/search',setTodaySales);
			var today = new Date();
			year = today.getFullYear(); //오늘기준날짜 월 조회
			month = today.getMonth() + 1; //오늘기준날짜 달 조회
			$('#selectYear').val(year).prop("selected",true); // 셀렉트박스에 대입
			$('#selectMonth').val(month).prop("selected",true);
			fullDay = year + '-' + month + '-' + day; // 서버로 보낼 날짜
			//console.log(fullDay);
			$('#titleYear').text(year);
			$('#titleMonth').text(month);
			$('#date').val(fullDay);
			generateCalendar(); //이번달 달력 생성
		});
		
		
		function setYestedayOrder(data) {
			$('#yeterdayOrder').text(data);
		}

		function setTodayOrder(data) {
			$('#todayOrder').text(data);
		}

		function setYestedaySales(data) {
			$('#yeterdaySales').text(comma(data) + "원");
		}

		function setTodaySales(data) {
			$('#todaySales').text(comma(data) + "원");
		}
		
		$(document).ready(function() {
			call_server(hiddenForm, '/chartSales/search', setChartSales);
		});
		
		var lbArray = new Array();
		
		function setChartSales(list){
			for(var i=0; i < list.length; i++){
				lbArray.push(list[i].sp);
			}
			var statisticsChart = getChart();
		}
		
		
		function getChart(){
			
			var today = new Date(); // 오늘 날짜를 Date 객체로 생성
			var maxCost = getMaxCost(lbArray);
			// 오늘의 연, 월, 일 가져오기
			var yyyy = today.getFullYear();
			var mm = today.getMonth() + 1; // 월은 0부터 시작
			var dd = today.getDate();

			// 날짜 포맷을 01, 02, ...로 맞추기
			mm = mm < 10 ? '0' + mm : mm;
			dd = dd < 10 ? '0' + dd : dd;

			// 오늘 날짜와 요일을 포맷에 맞게 출력
			var todayStr = yyyy + '-' + mm + '-' + dd;
			
			var today1 = getDateString(1);
			var today2 = getDateString(2);
			var today3 = getDateString(3);
			var today4 = getDateString(4);
			var today5 = getDateString(5);
			var today6 = getDateString(6);

			var ctx = document.getElementById('statisticsChart').getContext('2d');
			
			return new Chart(ctx,
				    {
		        type: 'bar',
		        data: {
		        	
		            labels: [today6, today5, today4, today3, today2, today1, todayStr],
						datasets : [
							//데이터 입력
								{
									label : "일별 매출",
									borderColor : '#177dff',
									pointBackgroundColor : 'rgba(23, 125, 255, 0.6)',
									pointRadius : 0,
									backgroundColor : 'rgba(23, 125, 255, 0.4)',
									legendColor : '#177dff',
									fill : true,
									borderWidth : 2,
									data : lbArray
								} ]
					},
					options : {
						responsive : true,
						maintainAspectRatio : false,
						legend : {
							display : false
						},
						tooltips : {
							bodySpacing : 4,
							mode : "nearest",
							intersect : 0,
							position : "nearest",
							xPadding : 10,
							yPadding : 10,
							caretPadding : 10
						},
						layout : {
							padding : {
								left : 5,
								right : 5,
								top : 15,
								bottom : 15
							}
						},
						scales : {
							yAxes : [ {
								ticks : {
								    fontStyle: "500",
					                beginAtZero: true, // 값이 0에서 시작
					                maxTicksLimit: 10, // 최대 틱 갯수 제한
					                padding: 10,
					                stepSize: 100000, // 값 간격 설정
					                min: 0, // Y축 최소값
					                max: Math.ceil(maxCost/100000)*100000 // Y축 최대값
								},
								gridLines : {
									drawTicks : false,
									display : false
								},
								scaleLabel: {
			                        display: true,
			                        labelString: '(만원)', // y축 레이블에 "매출 (만원)" 추가
			                        fontSize: 14, // 글자 크기
			                        fontStyle: 'bold',
			                        padding: 20, // 레이블과 그래프 사이의 간격
			                        mirror: true, // 레이블이 수평으로 표시되도록 설정
			                        transform: {
			                            rotate: Math.PI / 2 // 90도 회전 (라디안 단위로)
			                        }
								}
							} ],
							xAxes : [ {
								gridLines : {
									zeroLineColor : "transparent"
								},
								ticks : {
									padding : 10,
									fontStyle : "500"
								}
							} ]
						},
						/*
						legendCallback : function(chart) {
							var text = [];
							text
									.push('<ul class="' + chart.id + '-legend html-legend">');
							for (var i = 0; i < chart.data.datasets.length; i++) {
								text
										.push('<li><span style="background-color:' + chart.data.datasets[i].legendColor + '"></span>');
								if (chart.data.datasets[i].label) {
									text.push(chart.data.datasets[i].label);
								}
								text.push('</li>');
							}
							text.push('</ul>');
							return text.join('');
						}
						*/
					}
				});
		}
		
		// 날짜를 계산하여 오늘의 이전 날짜들 구하기
		function getDateString(offset) {
			var today = new Date(); // 오늘 날짜를 Date 객체로 생성
		    var date = new Date(today);
		    date.setDate(today.getDate() - offset);  // Offset 만큼 날짜 빼기
		    var yyyy = date.getFullYear();
		    var mm = date.getMonth() + 1; // 월은 0부터 시작
		    var dd = date.getDate();

		    // 날짜 포맷을 01, 02, ...로 맞추기
		    mm = mm < 10 ? '0' + mm : mm;
		    dd = dd < 10 ? '0' + dd : dd;

		    return yyyy + '-' + mm + '-' + dd;
		}
		
		function getMaxCost(arr){
			var cost = 0;
			for(var i=0;i<arr.length;i++){
				if(arr[i]>cost){
					cost = arr[i];
				}
			}
			return cost;
		}
		
		
		function setYear(){
			year = $("#selectYear option:selected").val();
			fullDay = year + '-' + month + '-' + day;
			$('#date').val(fullDay);
		}
		
		function setMonth(){
			month = $("#selectMonth option:selected").val();
			fullDay = year + '-' + month + '-' + day;
			$('#date').val(fullDay);
		}
		
		//적용하기 버튼(달력생성)
		function generateCalendar(){
			year = $("#selectYear option:selected").val();
			month = month = $("#selectMonth option:selected").val();
			$('#titleYear').text(year);
			$('#titleMonth').text(month);
			call_server(calendarForm, '/getCalendarDate', setCalendar);
		}
		
		var schList = [];
		
		//실질적 달력 생성
		function setCalendar(vo){
			//console.log(vo);
			//console.log(vo.daylist);
			//날짜 뿌려주는 코드
			var dateList = vo.daylist.map(item => ({
							  date: parseInt(item.dt.slice(-2)), // 날짜만 추출
				  			  yoil: item.yoil // 요일 그대로 출력
							}));
			$('#calendarDt').empty();
			var str ="";
			for (var i= 0; i < dateList.length; i++){
				if(i==0){
					str+="<tr>";
					for(var j=1;j<dateList[i].yoil;j++){
						str+="<td></td>";
					}
				}else if(dateList[i].yoil=='1'){
					str+="<tr>";
				}
				str += "<td id=\"" + vo.daylist[i].dt + "\" onclick=\"viewSch('" + vo.daylist[i].dt + "')\">" +  dateList[i].date + "</td>";
				if(i==dateList.length-1 || dateList[i].yoil=='7'){
					
					if(i==dateList.length-1){
						
						for(var j=Number(dateList[i].yoil)+1;j<=7;j++){
							str+="<td></td>";
						}
					}
					str+="</tr>";
				}
			}
			$('#calendarDt').append(str);
			
			/* 날짜에 append
			var str1 = '테스트';
			$('#2024-12-07').append('<br>'+'<span style="font-size: 12px;">' + str1 + '</span>');
			*/
			
			//일정 뿌려주는 코드
			//console.log(vo.schlist);
			schList = vo.schlist; //전역변수에 스케줄리스트 저장
			//console.log(schList);
			for (var k=0; k < vo.schlist.length; k++){
				if(vo.schlist[k].scheduleDt !== null && vo.schlist[k].scheduleDt!==""){
					//console.log(vo.schlist[k].scheduleDt);
					//console.log(vo.schlist[k].scheduleTitle);
					var scheduleDtId = vo.schlist[k].scheduleDt;
					var str1 = '';
					str1 += "<br>";
					str1 += "<span style=\"font-size: 12px;\">";
					str1 += vo.schlist[k].scheduleTitle;
					str1 += "</span>";
				}
				$('#' + scheduleDtId).append(str1);
			}
		}
		
		//일정관리 모달창
		function viewSch(dt){
			$('#schListTable').empty();
			$('#schTitle').val('');
			$('#schDetail').val('');
			$('#scheduleDt').val(dt);
			$('#scheduleDt1').val(dt);
			var cnt = 0;
			for (var i=0; i < schList.length; i++){
				var str = '';
				if(schList[i].scheduleDt == dt){
					cnt++;
					str += "<tr>";
					str += "<td>" + cnt + "</td>";
					str += "<td>" + schList[i].scheduleTitle + "</td>";
					str += "<td>" + schList[i].scheduleDetail + "</td>";
					str += "<td><button type='button' class='btn btn-danger btn-sm' onclick='deleteSch()'>삭제</button></td>";
					str += "<input type='hidden' value='" + schList[i].scheduleSq + "' id='scheduleSq' name='scheduleSq'>";
					str += "</tr>";
				}
				$('#schListTable').append(str);
			}
			$('#schModal').modal('show');
		}
		
		
		//일정추가
		function addSch(){
			call_server(schform, '/sch/add',setSchList);
		}
		
		function setSchList(){
			alert('완료');
		}
		
		function deleteSch(){
			call_server(deleteform, '/sch/delete',setSchList);
		}
	
	</script>
</body>
</html>
