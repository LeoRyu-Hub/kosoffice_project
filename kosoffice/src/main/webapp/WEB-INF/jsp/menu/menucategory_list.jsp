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
							<h3 class="fw-bold mb-3">분류</h3>
						</div>
					</div>

					<!-- Search Form & Buttons -->
					<form id="searchform">
						<input type='hidden' id='currentPage' name='currentPage' value='1'>
						<div class="row mb-3">
							<div class="col-12">
								<!-- 박스 형태로 감싸기 위해 div에 border, padding 등 추가 -->
								<div
									class="d-flex justify-content-between align-items-center p-3 border rounded shadow-sm"
									style="background-color: #fff;">
									<!-- 검색 입력 -->
									<div class="d-flex">
										<div class="me-3">
											<input type="text" class="form-control" id="categoryName"
												name="categoryName" placeholder="분류명을 입력하세요" />
										</div>
										<div class="me-3">
											<select class="form-control" id="activeSt" name="activeSt">
												<option value="">활성화여부</option>
												<option value="Y">활성화</option>
												<option value="N">비활성화</option>
											</select>
										</div>
									</div>

									<!-- 버튼 영역 -->
									<div class="d-flex">
										<button type="button" class="btn btn-success me-2"
											id="addMenuButton" onclick="regCategory()">등록</button>
										<button class="btn btn-secondary" type="button"
											id="refreshButton" onclick="searchList(1)">조회</button>
									</div>
								</div>
							</div>
						</div>
					</form>
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
												<th scope="col">분류명</th>
												<th scope="col">등록일</th>
												<th scope="col">활성화여부</th>
											</tr>
										</thead>
										<tbody id="menuTableBody">
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end" id='prdocutPaging'>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="menuModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">카테고리</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="categoryForm">
						<input type='hidden' id="categoryCode" name="categoryCode">
						<!-- 분류명 입력 -->
						<div class="form-group">
							<label for="categoryName">분류명</label> <input type="text"
								class="form-control" id="categoryName1" name="categoryName"
								placeholder="분류명을 입력하세요" required>
						</div>

						<!-- 활성화 여부 선택 -->
						<div class="form-group">
							<label for="activeStatus">활성화 여부</label> <select
								class="form-control" id="activeSt1" name="activeSt" required>
								<option value="">선택</option>
								<option value="Y">활성화</option>
								<option value="N">비활성화</option>
							</select>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-sm"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" onclick="save()"
						class="btn btn-success btn-sm" id="saveButton">저장</button>
				</div>
			</div>
		</div>
		
	</div>



	<!-- JS Files -->
	<script src="/assets/js/core/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/core/popper.min.js"></script>
	<script src="/assets/js/core/bootstrap.min.js"></script>
	<script src="/assets/js/common.js"></script>
	<script src="/assets/js/paging.js"></script>
</body>
<script>
	function regCategory() {
		$('#categoryCode').val("");
		$('#categoryName1').val("");
		$('#activeSt1').val("");
		$('#menuModal').modal('show');
		//window.open('/menucategory/reg', 'MenuRegPopup', 'width=500,height=500,top=' + (window.innerHeight - 600) / 2 + ',left=' + (window.innerWidth - 800) / 2 + ',resizable=yes,scrollbars=yes');
	}

	function searchList(pg) {
		$('#currentPage').val(pg);
		call_server(searchform, '/menucategory/search', setList);
	}
	function setList(data) {
		var list = data.categoryList;
		$('#menuTableBody').empty();
		var str = "";
		for (var i = 0; i < list.length; i++) {
			str = "<tr>";
			str += "<td>" + (i + 1) + "</td>";
			str += "<td><a href='#' onclick=\"view('" + list[i].categoryCode+ "')\">" + list[i].categoryName + "</a></td>";
			str += "<td>" + list[i].regDt + "</td>";
			str += "<td>" + list[i].activeSt + "</td>";
			str += "</tr>";
			$('#menuTableBody').append(str)
		}
		setPaging(prdocutPaging,data.startPage, data.endPage,'searchList');
	}

	function view(code) {
		$('#categoryCode').val(code);
		call_server(categoryForm, '/menucategory/getInfo', setData);

		//window.open('/menucategory/reg?categoryCode='+code,'분류정보','width=500,height=500,top=' + (window.innerHeight - 600) / 2 + ',left=' + (window.innerWidth - 800) / 2 + ',resizable=yes,scrollbars=yes');
	}

	function setData(data) {
		console.log(data);
		$('#categoryName1').val(data.categoryName);
		$('#activeSt1').val(data.activeSt);
		$('#menuModal').modal('show');
	}

	function save() {
		call_server(categoryForm, '/menucategory/save', cbSave);
	}

	function cbSave(data) {
		if (data) {
			alert("저장되었습니다.");
			$('#menuModal').modal('hide');
		} else {
			alert("오류가 발생하였습니다.");
		}
	}
</script>
</html>
