<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/cinema/resources/css/store/storeList.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="store">
		
		<div></div>
		
		<div class="store-main">
			<div id="top">
				<div><h1>스토어</h1></div>
				<%-- <c:if test="${loginMember.adminYn eq 'Y'}"> --%> 
				<div id="enroll"><button onclick="location.href='/cinema/admin/store/enroll'">등록</button></div>
				<div id="delete"><button>삭제</button></div>
				<%-- </c:if> --%>
			</div>
			<div id="smallMenu">
				<div><span>베스트</span></div>
				<div><span>기프트카드</span></div>
				<div><span>콤보</span></div>
				<div><span>팝콘</span></div>
				<div><span>음료</span></div>
				<div><span>스낵</span></div>
			</div>
			<div class="itemPoto">
				<div>
					<a href="/cinema/store/product">
					<img src="/cinema/resources/image/store/item.png" alt="item">
					<span id="first"><b>우리 패키지</b></span>
					</a>
					<br>
					<span id="second">일반 영화관람권 4매+더블콤보 1개</span>
					<br>
					<br>
					<span id="third"><b>61,000원</b></span>
				</div>
				<div>
					<a href="/cinema/store/product">
					<img src="/cinema/resources/image/store/item1.png" alt="item1">
					<span id="first"><b>CGV콤보</b></span>
					</a>
					<br>
					<span id="second">팝콘(L)1+탄산음료(M)2</span>
					<br>
					<br>
					<span id="third"><b>10,000원</b></span>
				</div>
				<div>
					<a href="/cinema/store/product">
					<img src="/cinema/resources/image/store/item2.png" alt="item2">
					<span id="first"><b>달콤팝콘(L)</b></span>
					</a>
					<br>
					<span id="second">달콤팝콘(L)</span>
					<br>
					<br>
					<span id="third"><b>6,500원</b></span>
				</div>
				<div>
					<a href="/cinema/store/product">
					<img src="/cinema/resources/image/store/item3.png" alt="item3">
					<span id="first"><b>고소팝콘(L)</b></span>
					</a>
					<br>
					<span id="second">고소팝콘(L)</span>
					<br>
					<br>
					<span id="third"><b>5,500원</b></span>
				</div>
				<div></div>
				<div></div>
			</div>

		</div>
		
		<div></div>
	
	</div>

</body>
</html>