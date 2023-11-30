<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/cinema/resources/css/coupon/couponlist.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>   
	<div class="bw"> 
        <hr id="jul1">
        <div id="coupon_title"> &nbsp;&nbsp;&nbsp;&nbsp;FLEX 할인쿠폰 내역</div>
        <hr id="jul2">
        <div style="color: blue; font-size: 30px; font-weight: bold; padding: 1%;" > &nbsp;FLEX 할인쿠폰 보유내역</div>
        <div id="coupon_title2">
            &nbsp;&nbsp;<div>영화쿠폰</div>
            <div>스토어쿠폰</div>
        </div>
        <div id="main_top">
            <div id="main_title">
                <div style="color: white; font-size:large">쿠폰이름</div>
                <div style="color: white; font-size:large">쿠폰사용기간</div>
                <div style="color: white; font-size:large">쿠폰정보</div>
                <div style="color: white; font-size:large">쿠폰사용여부</div>
            </div>
        </div>
        <div class="coupon_info">
            <div id="info_one">
                <div>VIP무료 관람쿠폰</div>
                <div>VIP 반값 할인 쿠폰</div>
                <div>어린이 1000원 할인 쿠폰</div>
                <div>VIP무료 관람쿠폰</div>
            </div>
            <div id="info_two">
                <div>1</div>
                <div>2</div>
                <div>3</div>
                <div>4</div>
            </div>
            <div id="info_three">
                <div>1</div>
                <div>2</div>
                <div>3</div>
                <div>4</div>
            </div>
            <div id="info_four">
                <div>1</div>
                <div>2</div>
                <div>3</div>
                <div>4</div>
            </div>
        </div>    
    </div>
</body>
</html>