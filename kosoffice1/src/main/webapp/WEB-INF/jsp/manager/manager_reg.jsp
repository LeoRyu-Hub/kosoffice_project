<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 등록</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-group select,
        .form-group input {
            width: 100%;
        }

        .container {
            max-width: 700px;
            margin-top: 50px;
        }

        /* 버튼을 한 줄로 배치하고 크기 조절 및 정렬 */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 10px; /* 버튼 사이 간격 */
            margin-top: 20px;
        }

        .btn-sm {
            font-size: 14px;
            padding: 5px 10px;
        }

        /* 비밀번호 확인이 동일한지 체크하는 메시지 */
        .password-match-message {
            color: red;
            font-size: 12px;
            display: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <h3 class="text-center mb-4">관리자 등록</h3>
        <form id="categoryForm">
            <!-- 관리자ID 입력 -->
            <div class="form-group">
                <label for="adminId">관리자ID</label>
                <input type="text" class="form-control" id="adminId" placeholder="관리자ID를 입력하세요" required>
            </div>

            <!-- 관리자명 입력 -->
            <div class="form-group">
                <label for="adminName">관리자명</label>
                <input type="text" class="form-control" id="adminName" placeholder="관리자명을 입력하세요" required>
            </div>

            <!-- 비밀번호 입력 -->
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요" required>
            </div>

            <!-- 비밀번호 확인 -->
            <div class="form-group">
                <label for="confirmPassword">비밀번호 확인</label>
                <input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호를 확인하세요" required>
                <div id="passwordMismatchMessage" class="password-match-message">비밀번호가 일치하지 않습니다.</div>
            </div>

            <!-- 이메일 입력 -->
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요" required>
            </div>

            <!-- 전화번호 입력 -->
            <div class="form-group">
                <label for="phoneNumber">전화번호</label>
                <input type="text" class="form-control" id="phoneNumber" placeholder="전화번호를 입력하세요" required>
            </div>

            <!-- 퇴사 여부 선택 -->
            <div class="form-group">
                <label for="activeStatus">퇴사 여부</label>
                <select class="form-control" id="activeStatus" required>
                    <option value="">선택</option>
                    <option value="Y">퇴사</option>
                    <option value="N">재직 중</option>
                </select>
            </div>

            <!-- 저장 및 닫기 버튼 -->
            <div class="button-container">
                <button type="submit" class="btn btn-success btn-sm" id="saveButton">저장</button>
                <button type="button" class="btn btn-secondary btn-sm" id="closeButton">닫기</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>

    </script>
</body>

</html>
