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
							<h3 class="fw-bold mb-3">수흥부대찌개 메뉴</h3>
						</div>
					</div>

					<!-- Search Form & Buttons -->
					<div class="row mb-3">
						<div class="col-12">
							<form id="searchform">
							<input type='hidden' id='currentPage' name='currentPage' value='1'>
								<!-- 박스 형태로 감싸기 위해 div에 border, padding 등 추가 -->
								<div
									class="d-flex justify-content-between align-items-center p-3 border rounded shadow-sm"
									style="background-color: #fff;">
									<!-- 검색 입력 -->
									<div class="d-flex">
										<div class="me-3">
											<input type="text" class="form-control" id="menuSearch"
												name="menuName" placeholder="메뉴명을 입력하세요" />
										</div>
										<div class="me-3">
											<select class="form-control" id="categorySearch"
												name="categoryCode">
												<option value="">분류 선택</option>
											</select>
										</div>
										<div class="me-3">
											<select class="form-control" id="statusSearch" name="menuSt">
												<option value="">판매상태 선택</option>
												<option value="판매중">판매중</option>
												<option value="판매종료">판매종료</option>
											</select>
										</div>
									</div>

									<!-- 버튼 영역 -->
									<div class="d-flex">
										<button type='button' class="btn btn-success me-2"
											id="addMenuButton" onclick="regMenu()">등록</button>
										<button type='button' class="btn btn-secondary"
											id="refreshButton" onclick="searchMenu(1)">조회</button>
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
									<h4 class="card-title">메뉴 리스트</h4>
								</div>
								<div class="card-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">메뉴명</th>
												<th scope="col">분류</th>
												<th scope="col">가격</th>
												<th scope="col">판매상태</th>
											</tr>
										</thead>
										<tbody id="menuTableBody">
											<!-- 더 많은 데이터들... -->
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end" id='menuPaging'>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달창 -->
	<div class="modal fade" id="menuModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">메뉴 등록/수정</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="menuform" enctype="multipart/form=data">
						<input type='hidden' id="menuCode" name="menuCode">
						<!-- 메뉴명 입력 -->
						<div class="form-group">
							<label for="menuName">메뉴명</label> <input type="text"
								class="form-control" id="menuName1" name="menuName"
								placeholder="메뉴명을 입력하세요" required>
						</div>

						<!-- 분류 선택 -->
						<div class="form-group">
							<label for="category">분류</label> <select class="form-control"
								id="category1" name="categoryCode" required>
								<option value="">분류 선택</option>
							</select>
						</div>

						<!-- 가격 입력 -->
						<div class="form-group">
							<label for="price">가격</label>
							<div class="position-relative">
								<input type="text" class="form-control" id="price1"
									placeholder="가격을 입력하세요" name="menuPrice" required
									style="padding-right: 30px;"> <span
									style="position: absolute; right: 10px; top: 50%; transform: translateY(-50%);">원</span>
							</div>
						</div>



						<!-- 설명 입력 -->
						<div class="form-group">
							<label for="description">설명</label>
							<textarea class="form-control" id="detail1" rows="4"
								placeholder="메뉴 설명을 입력하세요" name="menuDetail" required></textarea>
						</div>

						<!-- 상태 선택 -->
						<div class="form-group">
							<label for="status">상태</label> <select class="form-control"
								id="st1" name="menuSt" required>
								<option value="">판매 상태 선택</option>
								<option value="판매중">판매중</option>
								<option value="판매종료">판매종료</option>
							</select>
						</div>

						<!-- 이미지 업로드 -->
						<div class="form-group">
							<label for="menuImage">메뉴 이미지</label> <input type="file"
								class="form-control-file" id="menuImage" name="menuImage"
								accept="image/*" required>
						</div>


					</form>
				</div>
				<div class="modal-footer">
					<!-- 버튼 배치 -->
					<div class="modal-footer border-top-0 d-flex justify-content-center">
						<button type="button" class="btn btn-secondary btn-sm"
							data-bs-dismiss="modal">닫기</button>
						<button type="button" onclick="menuSave()"
							class="btn btn-success btn-sm" id="saveButton">저장</button>

					</div>
				</div>
			</div>
		</div>

	</div>

	<form id="hiddenform"></form>

	<!-- JS Files -->
	<script src="/assets/js/common.js"></script>
	<script src="/assets/js/core/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/core/popper.min.js"></script>
	<script src="/assets/js/core/bootstrap.min.js"></script>
	<script src="/assets/js/paging.js"></script>
</body>
<script>
	$(document).ready(function() {
		call_server(hiddenform, '/menu/getcategory', setCategory);
	})

	function setCategory(list) {
		for (var i = 0; i < list.length; i++) {
			$('#categorySearch').append(
					"<option value ='"+list[i].categoryCode+"'>"
							+ list[i].categoryName + "</option>");
			$('#category1').append(
					"<option value ='"+list[i].categoryCode+"'>"
							+ list[i].categoryName + "</option>");
		}
	}

	function regMenu() {
		$('#menuCode').val("");
		$('#menuName1').val("");
		$('#category1').val("");
		$('#price1').val("");
		$('#detail1').val("");
		$('#st1').val("");
		$('#menuImage').val("");
		$('#menuform')[0].reset();
		$('#menuModal').modal('show');
	}

	function menuSave() {
		call_server(menuform, '/menu/save', cbSave);
	}

	function cbSave(data) {
		if (data) {
			alert("저장되었습니다.");
			$('#menuModal').modal('hide');
		} else {
			alert("오류가 발생하였습니다.");
		}
	}

	function searchMenu(pg) {
		// form , url, callback
		$('#currentPage').val(pg);
		call_server(searchform, '/menu/search', setList);
	}

	var menulist = new Array();

	function setList(data) {
		console.log(data);
		var list = data.menuList;
		menulist = list;
		console.log(menulist);
		$('#menuTableBody').empty();
		var str = "";
		for (var i = 0; i < list.length; i++) {
			str = "<tr>";
			str += "<td>" + list[i].rn + "</td>";
			str += "<td><a href='#' onclick=\"view('" + list[i].menuCode + "')\">" + list[i].menuName + "</a></td>";
			str += "<td>" + list[i].categoryName + "</td>";
			str += "<td>" + list[i].menuPrice + "원" + "</td>";
			str += "<td>" + list[i].menuSt + "</td>";
			str += "</tr>";
			$('#menuTableBody').append(str)
		}
		setPaging(menuPaging,data.startPage, data.endPage,'searchMenu');
	}

	function view(code) {

		$('#menuCode').val(code);
		var data = new Object();
		for (var i = 0; i < menulist.length; i++) {
			if (menulist[i].menuCode == code) {
				data = menulist[i];
			}
		}
		$('#menuName1').val(data.menuName);
		$('#category1').val(data.categoryCode);
		$('#price1').val(data.menuPrice);
		$('#detail1').val(data.menuDetail);
		$('#st1').val(data.menuSt);
		$('#menuModal').modal('show');
	}
</script>
</html>
