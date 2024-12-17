<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>수흥부대찌개</title>
<meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
	name="viewport" />
<link rel="icon" href="/assets/img/kaiadmin/favicon.ico"
	type="image/x-icon" />

<!-- Fonts and icons -->
<script src="/assets/js/plugin/webfont/webfont.min.js"></script>
<script>
	WebFont.load({
		google : {
			families : [ "Public Sans:300,400,500,600,700" ]
		},
		custom : {
			families : [ "Font Awesome 5 Solid", "Font Awesome 5 Regular",
					"Font Awesome 5 Brands", "simple-line-icons" ],
			urls : [ "/assets/css/fonts.min.css" ],
		},
		active : function() {
			sessionStorage.fonts = true;
		},
	});
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- CSS Files -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="/assets/css/plugins.min.css" />
<link rel="stylesheet" href="/assets/css/kaiadmin.min.css" />
<link rel="stylesheet" href="/assets/css/demo.css" />
</head>
<body>
	<div class="wrapper">
		<!-- Sidebar -->
		<div class="sidebar" data-background-color="dark">
			<div class="sidebar-logo">
				<div class="logo-header" data-background-color="dark">
					<a href="/main" class="logo"> <img
						src="/assets/img/kaiadmin/logo_light.svg" alt="navbar brand"
						class="navbar-brand" height="20" />
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
			</div>
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<ul class="nav nav-secondary">
						<li class="nav-section"><span class="sidebar-mini-icon"><i
								class="fa fa-ellipsis-h"></i></span></li>
						<li class="nav-item"><a data-bs-toggle="collapse"
							href="#base"> <i class="fas fa-utensils"></i>
								<p>메뉴관리</p> <span class="caret"></span></a>
							<div class="collapse" id="base">
								<ul class="nav nav-collapse">
									<li><a href="/menu/list"><span class="sub-item">메뉴조회</span></a></li>
									<li><a href="/menucategory/list"><span
											class="sub-item">메뉴카테고리조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse"
							href="#sidebarLayouts"> <i class="fas fa-shopping-cart"></i>
								<p>주문관리</p> <span class="caret"></span></a>
							<div class="collapse" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									<li><a href="/order/list"><span class="sub-item">주문조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse"
							href="#tables"> <i class="fas fa-dollar-sign"></i>
								<p>매출관리</p> <span class="caret"></span></a>
							<div class="collapse" id="tables">
								<ul class="nav nav-collapse">
									<li><a href="/sales/list"><span class="sub-item">매출조회</span></a></li>
									<li><a href="/menusales/list"><span class="sub-item">메뉴별매출</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse"
							href="#maps"> <i class="fas fa-users"></i>
								<p>회원관리</p> <span class="caret"></span></a>
							<div class="collapse" id="maps">
								<ul class="nav nav-collapse">
									<li><a href="/member/list"><span class="sub-item">회원조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse"
							href="#charts"> <i class="fas fa-credit-card"></i>
								<p>결제수단관리</p> <span class="caret"></span></a>
							<div class="collapse" id="charts">
								<ul class="nav nav-collapse">
									<li><a href="/paymentmethod/list"><span
											class="sub-item">결제수단조회</span></a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a data-bs-toggle="collapse"
							href="#submenu"> <i class="fas fa-cogs"></i>
								<p>시스템관리</p> <span class="caret"></span></a>
							<div class="collapse" id="submenu">
								<ul class="nav nav-collapse">
									<li><a href="/manager/list"><span class="sub-item">관리자조회</span></a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Main Panel -->
		<div class="main-panel">
			<div class="main-header">
				<div class="main-header-logo">
					<div class="logo-header" data-background-color="dark">
						<a href="index.html" class="logo"> <img
							src="/assets/img/kaiadmin/logo_light.svg" alt="navbar brand"
							class="navbar-brand" height="20" />
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
				</div>

				<!-- Navbar Header -->
				<nav
					class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom">
					<div class="container-fluid">
						<nav
							class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex"></nav>
						<ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
							<li class="nav-item topbar-user dropdown hidden-caret"><a
								class="dropdown-toggle profile-pic" data-bs-toggle="dropdown"
								href="#" aria-expanded="false">
									<div class="avatar-sm">
										<img src="/assets/img/profile.jpg" alt="..."
											class="avatar-img rounded-circle" />
									</div> <span class="profile-username"><span class="op-7">Hi,</span>
										<span class="fw-bold">류건희</span></span>
							</a>
								<ul class="dropdown-menu dropdown-user animated fadeIn">
									<div class="dropdown-user-scroll scrollbar-outer">
										<li><a class="dropdown-item" href="#">로그아웃</a><a
											class="dropdown-item" href="#">비밀번호 변경</a></li>
									</div>
								</ul></li>
						</ul>
					</div>
				</nav>
			</div>

			<!-- Main Content -->
			<div class="container">
				<div class="page-inner">
					<div
						class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4">
						<div>
							<h3 class="fw-bold mb-3">수흥부대찌개 주문</h3>
						</div>
					</div>

					<!-- Search Form & Buttons -->
					<div class="row mb-3">
						<div class="col-12">
							<form id="searchForm">
								<input type='hidden' id='currentPage' name='currentPage'
									value='1'>
								<!-- 박스 형태로 감싸기 위해 div에 border, padding 등 추가 -->
								<div
									class="d-flex justify-content-between align-items-center p-3 border rounded shadow-sm"
									style="background-color: #fff;">
									<!-- 날짜 입력 -->
									<div class="d-flex align-items-center">
										<div class="me-3">
											<input type="date" class="form-control" id="startDate"
												name='startDate' placeholder="시작 날짜" />
										</div>
										<span class="mx-2" style="font-size: 1.4rem;">~</span>
										<div class="ms-3">
											<input type="date" class="form-control" id="endDate"
												name='endDate' placeholder="종료 날짜" />
										</div>
									</div>
									<!-- 버튼 영역 -->
									<div class="d-flex">
										<button type='button' onclick="serchList(1)"
											class="btn btn-secondary" id="refreshButton">조회</button>
									</div>
								</div>
							</form>
						</div>
					</div>

					<!-- Table -->
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">주문 리스트</h4>
								</div>
								<div class="card-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">주문번호</th>
												<th scope="col">주문금액</th>
												<th scope="col">결제금액</th>
												<th scope="col">결제수단</th>
												<th scope="col">결제일시</th>
											</tr>
										</thead>
										<tbody id="orderTableBody">
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end" id='orderPaging'>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 모달창 -->
	<div class="modal fade" id="orderModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="max-width: 75%;">

			<div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header border-bottom-0">
					<h5 class="modal-title" id="exampleModalLabel">주문상세정보</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<!-- 주문 정보 카드 -->
				<div class="card mb-3">
					<div class="card-header">
						<h5 class="card-title mb-0">주문 정보</h5>
					</div>
					<div class="card-body">
						<form id="orderMenuForm">
							<input type="hidden" name="orderNo" id="orderNo">
							<div class="row">
								<div class="col-md-6">
									<p>
										<span id="orderNo1"></span>
									</p>
									<p>
										<span id="earnYN1"></span>
									</p>
									<p>
										<span id="memberPhone1"></span>
									</p>
									<p>
										<span id="earnPrice1"></span>
									</p>
									<p>
										<span id="discountYN1"></span>
									</p>
									<p>
										<span id="discountPrice1"></span>
									</p>
									<p>
										 <span id="orderPrice1"></span>
									</p>
									<p>
										 <span id="payPrice1"></span>
									</p>
									<p>
										<span id="orderDt1"></span>
									</p>
									<p>
										 <span id="paymentmethodName1"></span>
									</p>
									<p>
										<span id="request1"></span>
									</p>
								</div>
							</div>
						</form>
					</div>
				</div>

				<!-- 주문 메뉴 테이블 -->
				<div class="card mb-3">
					<div class="card-header">
						<h5 class="card-title mb-0">주문 메뉴</h5>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">메뉴명</th>
									<th scope="col">수량</th>
									<th scope="col">메뉴단가</th>
									<th scope="col">총금액</th>
								</tr>
							</thead>
							<tbody id="orderMenuTable"></tbody>
						</table>
					</div>
				</div>

				<!-- 모달 푸터-->
				<div class="modal-footer border-top-0 d-flex justify-content-center">
					<button type="button" class="btn btn-secondary btn-sm"
						data-bs-dismiss="modal">닫기</button>
				</div>
			</div>

		</div>
	</div>


	<!-- JS Files -->
	<script src="/assets/js/common.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/js/core/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/core/popper.min.js"></script>
	<script src="/assets/js/core/bootstrap.min.js"></script>
	<script src="/assets/js/paging.js"></script>
</body>
<script>
	
	$(document).ready(function() {
		var today = new Date();
		
		var yyyy = today.getFullYear();
		var mm = today.getMonth() + 1; // 월은 0부터 시작
		var dd = today.getDate();
		
	    mm = mm < 10 ? '0' + mm : mm; //1월 1일 -> 01월 01일 이런식으로 표현하기위해서
	    dd = dd < 10 ? '0' + dd : dd;
	    
	    var setToday = yyyy + '-' + mm + '-' + dd;
	    
	    $('#startDate').val(setToday);
	    $('#endDate').val(setToday);
	
	});

	function serchList(pg) {
		$('#currentPage').val(pg);
		call_server(searchForm, '/order/search', setOrder);
	}

	var orderMenuList = new Array();

	function setOrder(data) {
		var list = data.orderList;
		orderMenuList = list;
		$('#orderTableBody').empty();
		var str = "";
		for (var i = 0; i < list.length; i++) {
			str = "<tr>";
			str += "<td>" + list[i].rn + "</td>";
			str += "<td><a href='#' onclick=\"view('" + list[i].orderNo + "')\">" + list[i].orderNo + "</a></td>";
			str += "<td>" + comma(list[i].orderPrice) + "원" + "</td>";
			str += "<td>" + comma(list[i].payPrice) + "원" + "</td>";
			str += "<td>" + list[i].paymentmethodName + "</td>";
			str += "<td>" + list[i].orderDt + "</td>";
			str += "</tr>";
			$('#orderTableBody').append(str)
		}
		setPaging(orderPaging, data.startPage, data.endPage, 'serchList');
	}

	function view(no) {
		var data = new Object();
		for (var i = 0; i < orderMenuList.length; i++) {
			if (orderMenuList[i].orderNo == no) {
				data = orderMenuList[i];
			}
		}
		console.log(data);
		$('#orderNo').val(data.orderNo);
		$('#orderNo1').html("<strong>주문번호:</strong> " + data.orderNo);
		$('#earnYN1').html("<strong>적립여부:</strong> " + data.earnYN);
		$('#memberPhone1').html("<strong>회원번호:</strong> " + data.memberPhone);
		$('#earnPrice1').html("<strong>적립액:</strong> " + comma(data.earnPrice) + "원");
		$('#discountYN1').html("<strong>할인여부:</strong> " + data.discountYN);
		$('#discountPrice1').html("<strong>할인액:</strong> " + comma(data.discountPrice) + "원");
		$('#orderPrice1').html("<strong>주문금액:</strong> " + comma(data.orderPrice)+ "원");
		$('#payPrice1').html("<strong>결제금액:</strong> " + comma(data.payPrice)+ "원") ;
		$('#orderDt1').html("<strong>주문일:</strong> " + data.orderDt);
		$('#paymentmethodName1').html("<strong>결제수단:</strong> " + data.paymentmethodName);
		$('#request1').html("<strong>요청사항:</strong> " + data.request);
		call_server(orderMenuForm, '/order/menu', setMenu);
		$('#orderModal').modal('show');
	}

	function setMenu(list) {
		console.log(list);
		$('#orderMenuTable').empty();
		var str = "";
		for (var i = 0; i < list.length; i++) {
			str = "<tr>";
			str += "<td>" + (i + 1) + "</td>";
			str += "<td>" + list[i].menuName + "</td>";
			str += "<td>" + list[i].orderQty + "</td>";
			str += "<td>" + comma(list[i].menuPrice) + "원" + "</td>";
			str += "<td>" + comma(list[i].orderQty * list[i].menuPrice) + "원"
					+ "</td>";
			str += "</tr>";
			$('#orderMenuTable').append(str)
		}
		//setPaging(orderPaging, data.startPage, data.endPage, 'serchList');
	}
</script>
</html>
