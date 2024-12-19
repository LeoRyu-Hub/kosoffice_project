<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>매출 상세 조회</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h3 class="fw-bold mb-4">매출 상세 조회</h3>

        <!-- 매출 정보 -->
        <div class="card mb-4">
            <div class="card-header">
                <h5>매출 정보</h5>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <div class="col-md-6">
                        <p><strong>일자:</strong> 2024-10-30</p>
                        <p><strong>총 매출액:</strong> 3,700,000원</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- 주문 목록 테이블 -->
        <div class="card mb-4">
            <div class="card-header">
                <h5>주문 목록</h5>
            </div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">주문번호</th>
                            <th scope="col">결제금액</th>
                            <th scope="col">주문보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1104001</td>
                            <td>2,000,000원</td>
                            <td><button class="btn btn-primary" onclick="viewOrder(1104001)">보기</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>1104002</td>
                            <td>1,700,000원</td>
                            <td><button class="btn btn-primary" onclick="viewOrder(1104002)">보기</button></td>
                        </tr>
                        <!-- 더 많은 데이터들... -->
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 닫기 버튼 -->
        <div class="mt-4 text-center">
            <button class="btn btn-secondary" onclick="window.close();">닫기</button>
        </div>
    </div>

    <script src="/assets/js/core/jquery.3.2.1.min.js"></script>
    <script src="/assets/js/core/bootstrap.bundle.min.js"></script>
    <script>
        // 주문보기 버튼 클릭 시 동작
        function viewOrder(orderId) {
            // 예시로 팝업을 열거나, 실제 주문 상세 페이지로 이동
            window.open("/order/detail?orderId=" + orderId, "OrderDetailPopup", "width=800,height=800,scrollbars=yes");
        }
    </script>
</body>
</html>
