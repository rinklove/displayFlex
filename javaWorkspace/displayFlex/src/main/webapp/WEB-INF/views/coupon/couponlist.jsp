<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="/cinema/resources/css/coupon/couponlist.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보유 쿠폰 내역</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>   
	<div class="bw"> 
        <hr id="jul1">
        <div id="coupon_title"> &nbsp;&nbsp;&nbsp;&nbsp;FLEX 할인쿠폰 내역</div>
        <hr id="jul2">
        <div style="color: blue; font-size: 25px; font-weight: bold; padding: 1%;" > &nbsp;FLEX 할인쿠폰 보유내역</div>
        <div id="coupon_title2">
            <div>영화쿠폰</div>
            <div>스토어쿠폰</div>
        </div>
        <div id="main_top">
            <div id="main_title">
                <div style="color: white; font-size:large">쿠폰이름</div>
                <div style="color: white; font-size:large">쿠폰사용기간</div>
                <div style="color: white; font-size:large">쿠폰정보</div>
                <div style="color: white; font-size:large">쿠폰사용여부</div>
            </div>
            <div class="coupon_content">
                <div id="coupon_name">
                    <div>s그냥쿠폰</div>
                    <div>그냥그냥쿠폰</div>
                    <div>VIP꺼져쿠폰</div>
                    <div>아아아쿠폰</div>
                </div>
    
                <div id="coupon_period">
                    <div>2023-12-01 ~ 2023-12-31</div>
                    <div>2023-12-01 ~ 2023-12-31</div>
                    <div>2023-12-01 ~ 2023-12-31</div>
                    <div>2023-12-01 ~ 2023-12-31</div>
                </div>
    
                <div id="coupon_info">
                    <div>VIP할인쿠폰</div>
                    <div>어린이할인쿠폰</div>
                    <div>경로할인쿠폰</div>
                    <div>장애인쿠폰</div>
                </div>
    
                <div id="coupon_yn">
                    <div>사용가능</div>
                    <div>사용가능</div>
                    <div>사용가능</div>
                    <div>사용불가능</div>
                </div>
            </div>
    
        </div>

        






































































        

        <!-- <div class="coupon_info">
            <div id="info_one">
                <div>VIP무료 관람쿠폰</div>
                <hr>
                <div>VIP 반값 할인 쿠폰</div>
                <hr>
                <div>어린이 1000원 할인 쿠폰</div>
                <hr>
                <div>VIP무료 관람쿠폰</div>
            </div>
            <div id="info_two">
                <div>2023-12-01 ~ 2023-12-31</div>
                <div>2023-12-01 ~ 2023-12-31</div>
                <div>2023-12-01 ~ 2023-12-31</div>
                <div>2023-12-01 ~ 2023-12-31</div>
            </div>
            <div id="info_three">
                <div>VIP할인쿠폰</div>
                <div>어린이할인쿠폰</div>
                <div>경로할인쿠폰</div>
                <div>장애인할인쿠폰</div>
            </div>
            <div id="info_four">
                <div>N</div>
                <div>N</div>
                <div>N</div>
                <div>N</div>
            </div>
        </div>     -->
    </div>
</body>
</html>