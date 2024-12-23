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
							<h3 class="fw-bold mb-3">수흥부대찌개 결제수단</h3>
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
									<!-- 검색 입력 -->
									<div class="d-flex">
										<div class="me-3">
											<input type="text" class="form-control" id="paymName"
												name='paymName' placeholder="결제수단명을 입력하세요" />
										</div>
										<div class="me-3">
											<select class="form-control" id="actiYN" name='activeYN'>
												<option value="">활성화여부</option>
												<option value="Y">활성화</option>
												<option value="N">비활성화</option>
											</select>
										</div>
									</div>

									<!-- 버튼 영역 -->
									<div class="d-flex">
										<button type='button' class="btn btn-success me-2"
											id="addMenuButton" onclick="regPayM()">등록</button>
										<button type='button' class="btn btn-secondary"
											onclick="searchPayM(1)" id="refreshButton">조회</button>
									</div>
								</div>
						</div>
						</form>
					</div>
					<!-- Table -->
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">결제수단 리스트</h4>
								</div>
								<div class="card-body">
									<table class="table table-striped">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">결제수단명</th>
												<th scope="col">등록일</th>
												<th scope="col">활성화여부</th>
											</tr>
										</thead>
										<tbody id="TableBody">
											<!-- 더 많은 데이터들... -->
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end" id='paymPaging'>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 모달창 -->
	<div class="modal fade" id="payModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">결제수단 등록/수정</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="paymForm" enctype="multipart/form=data">
						<input type="hidden" id="paymCode" name="paymCode">
						<!-- 결제수단명 입력 -->
						<div class="form-group">
							<label for="payMName">결제수단명</label> <input type="text"
								class="form-control" id="paymName1" name="paymName"
								placeholder="결재수단명을 입력하세요" required>
						</div>
						<%-- 
						<!-- 결제수단명 입력 -->
						<div class="form-group">
							<label for="payAmount">누적 결제금액</label> <input type="text"
								class="form-control" id="paymAmount1" required>
						</div>
						--%>
						<!-- 상태 선택 -->
						<div class="form-group">
							<label for="status">활성화 여부</label> <select class="form-control"
								id="actiYN1" name="activeYN" required>
								<option value="">선택</option>
								<option value="Y">Y</option>
								<option value="N">N</option>
							</select>
						</div>
<%-- 
						<!-- 이미지 업로드 -->
						<div class="form-group">
							<label for="menuImage">결제수단 이미지</label> <input type="file"
								class="form-control-file" id="paymImage" name="paymImage"
								accept="image/*" required>
						</div>
--%>
					</form>
				</div>
				<div class="modal-footer">
					<!-- 버튼 배치 -->
					<div class="modal-footer border-top-0 d-flex justify-content-center">
						<button type="button" onclick="paymSave()"
							class="btn btn-success btn-sm" id="saveButton">저장</button>
						<button type="button" class="btn btn-secondary btn-sm"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- JS Files -->
	<script src="/assets/js/common.js"></script>
	<script src="/assets/js/core/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/core/popper.min.js"></script>
	<script src="/assets/js/core/bootstrap.min.js"></script>
	<script src="/assets/js/paging.js"></script>
</body>
<script>
	function regPayM() {
		$('#paymName1').val("");
		$('#paymCode').val("");
		//$('#paymAmount1').val("-");
		$('#actiYN1').val("");
		$('#payModal').modal('show');
	}

	function searchPayM(pg) {
		// form , url, callback
		$('#currentPage').val(pg);
		call_server(searchForm, '/paym/search', setList);
	}

	var paymlist = new Array();

	function setList(data) {
		var list = data.paymList;
		paymlist = list;
		console.log(paymlist);
		$('#TableBody').empty();
		var str = "";
		for (var i = 0; i < list.length; i++) {
			str = "<tr>";
			str += "<td>" + list[i].rn + "</td>";
			str += "<td><a href='#' onclick=\"view('" + list[i].paymCode
					+ "')\">" + list[i].paymName + "</a></td>";
			str += "<td>" + list[i].regDt + "</td>";
			str += "<td>" + list[i].activeYN + "</td>";
			str += "</tr>";
			$('#TableBody').append(str)
		}
		setPaging(paymPaging, data.startPage, data.endPage, 'searchPayM');
	}

	function view(cd) {
		$('#paymCode').val(cd);
		var data = new Object();
		for (var i = 0; i < paymlist.length; i++) {
			if (paymlist[i].paymCode == cd) {
				data = paymlist[i];
			}
		}
		$('#paymName1').val(data.paymName);
		//$('#paymAmount1').val("얼마");
		$('#actiYN1').val(data.activeYN);
		$('#payModal').modal('show');
	}
	
	function paymSave(){
		call_server(paymForm, '/paym/save', cbSave);
	}
	
	function cbSave(data){
		if (data) {
			alert("저장되었습니다.");
			$('#payModal').modal('hide');
		} else {
			alert("오류가 발생하였습니다.");
		}
	}
</script>
</html>
