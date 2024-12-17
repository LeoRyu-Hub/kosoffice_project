<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 등록</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .preview-container {
            margin-top: 20px;
            text-align: center;
        }

        .preview-container img {
            max-width: 100%;
            height: auto;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 8px;
        }

        .form-group select, .form-group input {
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
    </style>
</head>

<body>
    <div class="container">
        <h3 class="text-center mb-4" id="txtHeader">메뉴등록</h3>
        <form id="menuForm">
            <!-- 메뉴명 입력 -->
            <div class="form-group">
                <label for="menuName">메뉴명</label>
                <input type="text" class="form-control" id="menuName" placeholder="메뉴명을 입력하세요" required>
            </div>

            <!-- 분류 선택 -->
            <div class="form-group">
                <label for="category">분류</label>
                <select class="form-control" id="category" required>
                    <option value="">분류 선택</option>
                    <option value="찌개류">찌개류</option>
                    <option value="사리류">사리류</option>
                    <option value="음료/주류">음료/주류</option>
                </select>
            </div>

            <!-- 가격 입력 -->
            <div class="form-group">
                <label for="price">가격</label>
                <input type="text" class="form-control" id="price" placeholder="가격을 입력하세요" required>
            </div>

            <!-- 설명 입력 -->
            <div class="form-group">
                <label for="description">설명</label>
                <textarea class="form-control" id="description" rows="4" placeholder="메뉴 설명을 입력하세요" required></textarea>
            </div>

            <!-- 상태 선택 -->
            <div class="form-group">
                <label for="status">상태</label>
                <select class="form-control" id="status" required>
                    <option value="">판매 상태 선택</option>
                    <option value="판매중">판매중</option>
                    <option value="판매종료">판매종료</option>
                </select>
            </div>

            <!-- 이미지 업로드 -->
            <div class="form-group">
                <label for="menuImage">메뉴 이미지</label>
                <input type="file" class="form-control-file" id="menuImage" accept="image/*" required>
            </div>

            <!-- 이미지 미리보기 -->
            <div class="preview-container" id="imagePreview">
                <img id="imagePreviewImg" src="" alt="이미지 미리보기" style="display: none;">
            </div>

            <!-- 버튼 배치 -->
            <div class="button-container">
                <button type="submit" type = "button" class="btn btn-success btn-sm" id="saveButton">메뉴 등록</button>
                <button type="button" class="btn btn-secondary btn-sm" id="closeButton">닫기</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="/assets/js/common.js"></script>

	<script>
//		$('#txtHeader').text("");
	
	</script>
</body>

</html>
