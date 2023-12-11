<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="/cinema/resources/css/event/adminevent.css">
<script src="https://kit.fontawesome.com/08e9cd3338.js"
	crossorigin="anonymous"></script>
<script defer src="/cinema/resources/js/store/adminStoreEnroll.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 관리자</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<form action="/cinema/event/adminevent" method="post"
		entype="multipart/form-data">
		<div class="product">
			<div></div>
			<div class="product-main">
				<div id="top">
					<div>         
						<h1>이벤트(ADMIN)</h1>
					</div>
				</div>
				<div id="product-detail">
					<div id="imgPreview">
						<i class="fa-solid fa-circle-plus"></i>
						<input type="file" id="upload" accept="image/*" onchange="previewImage(event)">  
					</div>
					<div id="detail">
						<div>
							<input name="i_name" style="width: 20em;" width="50em" type="text" size=20 placeholder="ex.감독과의 대화입니다. 대화 대화">
						</div>
						<div id="description">
							<div>이벤트기간</div>
							<div>
								<input style="width: 10em; font-size: 15px;"type="date" id="couponUsageStartDate" name="couponUsageStartDate" value="2023-12-01">
                                <span> to </span>
                                <input style="width: 10em; font-size: 15px;"type="date" id="couponUsageEndDate" name="couponUsageEndDate" value="2023-12-31">
							</div>
                            
							<div>이벤트 내용</div>
							<div>
								<textarea id="productDetail" name="t_contents" cols="50" rows="5"
									placeholder="영화 감독과의 대화 대화 대화 대화 "></textarea>
							</div>
							<div>이벤트분류</div>
							<span> 
								<input type="radio" value="snack" name="type"> 제휴/할인
							    <input type="radio" value="snack" name="type"> 시사회/간담회
								<input type="radio" value="photocard" name="type"> 무대인사 
								<br>
								
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