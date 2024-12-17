<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 열람</title>

    <!-- CSS 파일 (부트스트랩 및 추가 스타일) -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/css/style.css" />
    <style>
        /* 드롭다운의 크기를 약간 줄여주는 스타일 */
        #withdrawalStatus {
            max-width: 200px; /* 최대 너비 제한 */
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <!-- 회원정보 열람 -->
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">회원정보</h4>
            </div>
            <div class="card-body">
                <!-- 회원정보 항목 -->
                <div class="row">
                    <div class="col-md-3"><strong>전화번호:</strong></div>
                    <div class="col-md-9">010-1111-1111</div>
                </div>
                <div class="row">
                    <div class="col-md-3"><strong>가입일:</strong></div>
                    <div class="col-md-9">2023-10-05</div>
                </div>
                <div class="row">
                    <div class="col-md-3"><strong>잔여 포인트:</strong></div>
                    <div class="col-md-9">4,000 P</div>
                </div>
                <div class="row">
                    <div class="col-md-3"><strong>탈퇴여부:</strong></div>
                    <div class="col-md-9">
                        <!-- 탈퇴여부 드롭다운 -->
                        <select class="form-control form-control-sm" id="withdrawalStatus">
                            <option value="N" selected>N</option>
                            <option value="Y">Y</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <!-- 포인트 이력 테이블 -->
        <div class="card mt-4">
            <div class="card-header">
                <h4 class="card-title">포인트 이력</h4>
            </div>
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>일자</th>
                            <th>상세내역</th>
                            <th>변경된 포인트</th>
                            <th>잔여 포인트</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>2023-10-01</td>
                            <td>상품 구매</td>
                            <td>-500 P</td>
                            <td>1,500 P</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 저장 및 닫기 버튼 (한 줄에 배치) -->
        <div class="text-center mt-4">
            <div class="d-flex justify-content-center">
                <button class="btn btn-success me-2" onclick="saveChanges();">저장</button>
                <button class="btn btn-secondary" onclick="window.close();">닫기</button>
            </div>
        </div>
    </div>

    <!-- JS 파일 (부트스트랩) -->
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>

    <!-- 자바스크립트 코드 -->
    <script>
    </script>
</body>
</html>
