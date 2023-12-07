<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/cinema/resources/css/store/storeList.css">
<script defer src="/cinema/resources/js/store/storeList.js"></script>
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
				<div><button onclick="location.href='/cinema/store'"><span>베스트</span></button></div>
				<div><button onclick="location.href='/cinema/store/giftcard'"><span>기프트카드</span></button></div>
				<div><button onclick="location.href='/cinema/store/combo'"><span>콤보</span></button></div>
				<div><button onclick="location.href='/cinema/store/popcorn'"><span>팝콘</span></button></div>
				<div><button onclick="location.href='/cinema/store/drink'"><span>음료</span></button></div>
				<div><button onclick="location.href='/cinema/store/snack'"><span>스낵</span></button></div>
			</div>
			<div class="itemPoto">
				<c:forEach items="${storeVoList}" var="vo">
					<div>
						<a href="/cinema/store/product">
						<img src="${vo.image}" alt="product">
						<span id="first"><b>${vo.title}</b></span>
						</a>
						<br>
						<span id="second">${vo.productElement}</span>
						<br>
						<br>
						<span id="third"><b>${vo.price}</b></span>
					</div>
				</c:forEach>
				<div></div>
				<div></div>
			</div>

		</div>
		
		<div></div>
	
	</div>

</body>
</html>