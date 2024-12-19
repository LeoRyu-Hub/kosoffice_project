<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>주문 상세 정보</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <script src="/assets/js/core/jquery.3.2.1.min.js"></script>
    <style>
        /* 폰트 크기 줄이기 */
        body {
            font-size: 0.9rem; /* 기본 폰트 크기 */
        }

        .container {
            max-width: 700px; /* 화면에 맞게 최대 너비 설정 */
        }

        .card-header h5 {
            font-size: 1.1rem; /* 카드 헤더 글씨 크기 줄이기 */
        }

        .card-body p {
            font-size: 0.9rem; /* 본문 글씨 크기 줄이기 */
            margin-bottom: 0.5rem; /* 간격 줄이기 */
        }

        .table th,
        .table td {
            font-size: 0.85rem; /* 테이블 글씨 크기 줄이기 */
            padding: 0.5rem; /* 테이블 셀 패딩 줄이기 */
        }

        .btn {
            font-size: 0.85rem; /* 버튼 글씨 크기 줄이기 */
            padding: 0.4rem 1rem; /* 버튼 패딩 줄이기 */
        }

        /* 닫기 버튼 가운데 정렬 */
        .center-btn {
            display: flex;
            justify-content: center;
            margin-top: 1rem;
        }
    </style>
</head>

<body>
    <div class="container mt-4">
        <h3 class="fw-bold mb-4">주문 상세 정보</h3>

        <!-- 주문 정보 -->
        <div class="card mb-3">
            <div class="card-header">
                <h5>주문 정보</h5>
            </div>
            <div class="card-body">
                <!-- 주문 정보 표시 -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <p><strong>주문번호:</strong> 1104001</p>
                        <p><strong>적립여부:</strong> Y</p>
                        <p><strong>회원번호:</strong> 010-1111-1111</p>
                        <p><strong>적립액:</strong> 200원</p>
                        <p><strong>할인여부:</strong> N</p>
                        <p><strong>할인액:</strong> 0원</p>
                        <p><strong>주문금액:</strong> 20,000원</p>
                        <p><strong>결제금액:</strong> 20,000원</p>
                        <p><strong>주문일:</strong> 2024-11-04</p>
                        <p><strong>결제수단:</strong> 카드</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- 주문 메뉴 테이블 -->
        <div class="card mb-3">
            <div class="card-header">
                <h5>주문 메뉴</h5>
            </div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">메뉴명</th>
                            <th scope="col">수량</th>
                            <th scope="col">메뉴단가</th>
                            <th scope="col">총금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>원조부대찌개</td>
                            <td>2</td>
                            <td>₩10,000</td>
                            <td>₩20,000</td>
                        </tr>
                        <!-- 더 많은 주문 메뉴가 있으면 추가 -->
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 닫기 버튼 -->
        <div class="center-btn">
            <button class="btn btn-secondary" onclick="window.close();">닫기</button>
        </div>
    </div>

    <!-- JS Files -->
    <script src="/assets/js/core/bootstrap.bundle.min.js"></script>
</body>

</html>
