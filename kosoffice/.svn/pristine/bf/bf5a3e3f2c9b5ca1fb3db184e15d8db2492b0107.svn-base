<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>수흥부대찌개</title>
    <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport" />
    <link rel="icon" href="/assets/img/kaiadmin/favicon.ico" type="image/x-icon" />

    <!-- Fonts and icons -->
    <script src="/assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
        WebFont.load({
            google: {
                families: ["Public Sans:300,400,500,600,700"]
            },
            custom: {
                families: ["Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"],
                urls: ["/assets/css/fonts.min.css"],
            },
            active: function() {
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
                    <a href="/main" class="logo">
                        <img src="/assets/img/kaiadmin/logo_light.svg" alt="navbar brand" class="navbar-brand" height="20" />
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
                        <li class="nav-section"><span class="sidebar-mini-icon"><i class="fa fa-ellipsis-h"></i></span></li>
                        <li class="nav-item"><a data-bs-toggle="collapse" href="#base">
                            <i class="fas fa-utensils"></i><p>메뉴관리</p><span class="caret"></span></a>
                            <div class="collapse" id="base">
                                <ul class="nav nav-collapse">
                                    <li><a href="/menu/list"><span class="sub-item">메뉴조회</span></a></li>
                                    <li><a href="/menucategory/list"><span class="sub-item">메뉴카테고리조회</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item"><a data-bs-toggle="collapse" href="#sidebarLayouts">
                            <i class="fas fa-shopping-cart"></i><p>주문관리</p><span class="caret"></span></a>
                            <div class="collapse" id="sidebarLayouts">
                                <ul class="nav nav-collapse">
                                    <li><a href="/order/list"><span class="sub-item">주문조회</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item"><a data-bs-toggle="collapse" href="#tables">
                            <i class="fas fa-dollar-sign"></i><p>매출관리</p><span class="caret"></span></a>
                            <div class="collapse" id="tables">
                                <ul class="nav nav-collapse">
                                    <li><a href="/sales/list"><span class="sub-item">매출조회</span></a></li>
                                    <li><a href="/menusales/list"><span class="sub-item">메뉴별매출</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item"><a data-bs-toggle="collapse" href="#maps">
                            <i class="fas fa-users"></i><p>회원관리</p><span class="caret"></span></a>
                            <div class="collapse" id="maps">
                                <ul class="nav nav-collapse">
                                    <li><a href="/member/list"><span class="sub-item">회원조회</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item"><a data-bs-toggle="collapse" href="#charts">
                            <i class="fas fa-credit-card"></i><p>결제수단관리</p><span class="caret"></span></a>
                            <div class="collapse" id="charts">
                                <ul class="nav nav-collapse">
                                    <li><a href="/paymentmethod/list"><span class="sub-item">결제수단조회</span></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item"><a data-bs-toggle="collapse" href="#submenu">
                            <i class="fas fa-cogs"></i><p>시스템관리</p><span class="caret"></span></a>
                            <div class="collapse" id="submenu">
                                <ul class="nav nav-collapse">
                                    <li><a href="/manager/list"><span class="sub-item">관리자조회</span></a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Main Panel -->
        <div class="main-panel">
            <div class="main-header">
                <div class="main-header-logo">
                    <div class="logo-header" data-background-color="dark">
                        <a href="index.html" class="logo">
                            <img src="/assets/img/kaiadmin/logo_light.svg" alt="navbar brand" class="navbar-brand" height="20" />
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
                <nav class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom">
                    <div class="container-fluid">
                        <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
                            <li class="nav-item topbar-user dropdown hidden-caret">
                                <a class="dropdown-toggle profile-pic" data-bs-toggle="dropdown" href="#" aria-expanded="false">
                                    <div class="avatar-sm">
                                        <img src="/assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle" />
                                    </div> 
                                    <span class="profile-username"><span class="op-7">Hi,</span><span class="fw-bold">류건희</span></span>
                                </a>
                                <ul class="dropdown-menu dropdown-user animated fadeIn">
                                    <div class="dropdown-user-scroll scrollbar-outer">
                                        <li><a class="dropdown-item" href="#">로그아웃</a><a class="dropdown-item" href="#">비밀번호 변경</a></li>
                                    </div>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>

            <!-- Main Content -->
            <div class="container">
                <div class="page-inner">
                    <div class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4">
                        <div>
                            <h3 class="fw-bold mb-3">수흥부대찌개 메뉴별 매출조회</h3>
                        </div>
                    </div>

                    <div class="row mt-4">
                        <!-- 왼쪽: 상위 5상품 -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">상위 5 상품</h4>
                                </div>
                                <div class="card-body">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">상품명</th>
                                                <th scope="col">총 금액</th>
                                            </tr>
                                        </thead>
                                        <tbody id="top5">
                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- 오른쪽: 상품별 매출 그래프 -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">상품별 매출 비율</h4>
                                </div>
                                <div class="card-body">
                                    <canvas id="salesChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 하단: 메뉴별 매출 테이블 -->
                    <div class="row mt-4">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">메뉴별 매출</h4>
                                </div>
                                <div class="card-body">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">메뉴명</th>
                                                <th scope="col">메뉴단가</th>
                                                <th scope="col">판매수량</th>
                                                <th scope="col">총금액</th>
                                            </tr>
                                        </thead>
                                        <tbody id="salesByMenu">
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form id="hiddenForm">
    </form>

    <!-- JS Files -->
    <script src="/assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="/assets/js/core/popper.min.js"></script>
    <script src="/assets/js/core/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="/assets/js/common.js"></script>

    
    <script>
    	$(document).ready(function(){
    		call_server(hiddenForm, '/menuSales/search',setList);
    	});	
    	
    	var menuList = new Array();
    	var priceList = new Array();
    	
    	function setList(list){
    		console.log(list);
    		str='';
    		str1='';
    		for (var i=0; i<list.length; i++){
    			
    			$('#top5').empty();
    			$('#salesByMenu').empty();
    			
    			str+="<tr>";
    			str+="<td>" + (i+1) + "</td>";
    			str+="<td>" + list[i].menuName + "</td>";
    			str+="<td>" + comma(list[i].totalPrice) + "원" +"</td>";
    			str+="</tr>";
    			$('#top5').append(str);
    			
	   			str1+="<tr>";
    			str1+="<td>" + (i+1) + "</td>";
    			str1+="<td>" + list[i].menuName + "</td>";
    			str1+="<td>" + comma(list[i].menuPrice) + "원" +"</td>";    			
    			str1+="<td>" + list[i].totalQty + "개" +"</td>";
    			str1+="<td>" + comma(list[i].totalPrice) + "원" +"</td>";
    			str+="</tr>"
        		$('#salesByMenu').append(str1);
    			
    			menuList.push(list[i].menuName);
    			priceList.push(list[i].totalPrice);
    		}
    		console.log(menuList);
    		console.log(priceList);
    		getChart(); //화면 실행 후 차트 로드해야 하면에 출력(코딩순서중요!)
    	}
    	
    	
    
    
    <!-- Chart.js 코드 -->
    function getChart() {
        var ctx = document.getElementById('salesChart').getContext('2d');
        var salesChart = new Chart(ctx, {
            type: 'pie', 
            data: {
                labels: menuList, 
                datasets: [{
                    label: '상품별 매출 비율', 
                    data: priceList,
                    backgroundColor: ['#ff6384', '#36a2eb', '#cc65fe', '#ffce56', '#ff8c42'], // 각 항목의 배경 색상
                    borderColor: '#fff', 
                    borderWidth: 1 
                }]
            },
            options: {
                responsive: true, 
                plugins: {
                    legend: {
                        position: 'top'
                    }
                }
            }
        });
    }

    </script>
</body>
</html>
