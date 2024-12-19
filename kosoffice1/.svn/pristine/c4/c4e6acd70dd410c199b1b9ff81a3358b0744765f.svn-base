<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메뉴 분류 등록</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
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
		<h3 id="head" class="text-center mb-4"></h3>
		<form id="categoryForm">
			<input type='hidden' name="categoryCode" value="${categoryCode}">
			<!-- 분류명 입력 -->
			<div class="form-group">
				<label for="categoryName">분류명</label> <input type="text"
					class="form-control" id="categoryName" name = "categoryName" placeholder="분류명을 입력하세요"
					required>
			</div>

			<!-- 활성화 여부 선택 -->
			<div class="form-group">
				<label for="activeStatus">활성화 여부</label> <select
					class="form-control" id="activeSt" name ="activeSt" required>
					<option value="">선택</option>
					<option value="활성화">활성화</option>
					<option value="비활성화">비활성화</option>
				</select>
			</div>
		</form>

		<!-- 버튼 배치 -->
		<div class="button-container">
			<button type="button" onclick ="save()" class="btn btn-success btn-sm" id="saveButton">저장</button>
			<button type="button" onclick="selfClose()" class="btn btn-secondary btn-sm" id="closeButton">닫기</button>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="/assets/js/common.js"></script>
	<script>
		function selfClose(){
			 self.close();
		}
	
		$(document).ready(function() { 
			if("${categoryCode}" != null && "${categoryCode}" != ""){
				$('#head').text('메뉴 분류 수정');
				call_server(categoryForm, '/menucategory/getInfo', setData);

			}else{
				$('#head').text('신규 메뉴 분류 등록');
				return;
			}
		});

		function setData(data) {
			console.log(data);
			$('#categoryName').val(data.categoryName);
			$('#activeSt').val(data.activeSt);
		}
		
		function save(){
			call_server(categoryForm, '/menucategory/save', cbSave);
		}
		
		function cbSave(data){
			if(data){
				alert("저장되었습니다.");
				self.close()
			}else{
			alert("오류가 발생하였습니다.");
			}	
		}
	</script>
</body>

</html>
