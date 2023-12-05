<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="/cinema/resources/css/store/adminStoreEnroll.css">
<script src="https://kit.fontawesome.com/08e9cd3338.js"
	crossorigin="anonymous"></script>
<script defer src="/cinema/resources/js/store/adminStoreEnroll.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 등록 페이지</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<form action="/cinema/admin/store/enroll" method="post"
		entype="multipart/form-data">
		<div class="product">
			<div></div>
			<div class="product-main">
				<div id="top">
					<div>
						<h1>스토어 - 제품등록</h1>
					</div>
				</div>
				<div id="product-detail">
					<div>
						<div id="imgPreview">
							<i class="fa-solid fa-circle-plus"></i>
						</div>
						<div>
							<input type="file" id="upload" accept="image/*" onchange="previewImage(event)">
						</div>
					</div>
					<div id="detail">
						<div>
							<input type="text" placeholder="ex)우리 패키지">
						</div>
						<div id="description">
							<div>가격</div>
							<div>
								<input type="text" placeholder="61,000원">
							</div>
							<div>상품구성</div>
							<div>
								<input type="text" placeholder="일반 영화 관람권 4매+더블콤보 1개">
							</div>
							<div>제품설명</div>
							<div>
								<textarea id="productDetail" cols="20" rows="5"
									placeholder="일반 영화를 관람할 수 있는 영화 관람권 4매와 맛있는 팝콘과 콜라를 먹을 수 있는 우리 패키지"></textarea>
							</div>
							<div>분류</div>
							<span> 
								<input type="radio" value="snack" name="type"> 베스트 
							    <input type="radio" value="snack" name="type"> 기프트카드
								<input type="radio" value="photocard" name="type"> 콤보 
								<br>
								<input type="radio" value="combo" name="type"> 팝콘 
							    <input type="radio" value="popcorn" name="type"> 음료 
								<input type="radio" value="drink" name="type"> 스낵
							</span>
						</div>
					</div>
				</div>
				<div id="adminButton">
					<div id="enroll">
						<input type="submit" value="등록">
					</div>
					<div id="delete">
						<button>취소</button>
					</div>
				</div>
			</div>

			<div></div>
		</div>
	</form>
</body>
</html>