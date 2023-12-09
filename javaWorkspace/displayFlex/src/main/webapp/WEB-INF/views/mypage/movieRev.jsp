<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/mypage/movieRev.css">

</head>
<body>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

	<div class="container">
		<div class="main">
			<div class="main-first">□ 결제/예매내역 목록</div>
			<div class="main-second">이우철님의 지난 3개월동안 예매한 영화티켓 내역입니다.</div>
			<div class="main-third">
				<div class="main-third-t1">조회기간 선택</div>
				<div class="main-third-t2">기간별 <button>7일</button><button>15일</button><button>30일</button></div>
				<div class="main-third-t3">
				<div>예매일자별</div>
				<form><input type='date' id='currentDate'/></form>
				</div>
			</div>
			<div>b04</div>
			<div>b05</div>
		</div>
	</div>	

</body>
</html>

<script>

  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);;
  
  </script>
  