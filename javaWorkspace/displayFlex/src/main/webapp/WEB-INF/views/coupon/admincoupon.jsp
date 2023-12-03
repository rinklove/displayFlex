<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link rel="stylesheet" href="/cinema/resources/css/coupon/admincoupon.css">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>쿠폰 관리자</title>
</head>
<body>
    <div class="coupon-container">
        <hr style="border: 200;">
        <h1>쿠폰(ADMIN)</h1>
        <hr>
        
        <div class="coupon-info">
            <div class="info-label">쿠폰 이름:</div>
            <div class="info-value">
                <input type="text" id="couponName" name="couponName" value="VIP 무료관람쿠폰">
            </div>
        </div>
        <div class="coupon-info">
            <div class="info-label">쿠폰 정보:</div>
            <div class="info-value">
                <input type="text" id="couponInfo" name="couponInfo" value="vip쿠폰">
            </div>
        </div>
        <div class="coupon-info">
            <div class="info-label">쿠폰 발행일자:</div>
            <div class="info-value">
                <input type="date" id="couponIssuedDate" name="couponIssuedDate" value="2023-12-03">
            </div>
        </div>
        <div class="coupon-info">
            <div class="info-label">쿠폰 사용기간:</div>
            <div class="info-value">
                <input type="date" id="couponUsageStartDate" name="couponUsageStartDate" value="2023-12-03">
                <span> to </span>
                <input type="date" id="couponUsageEndDate" name="couponUsageEndDate" value="2023-12-17">
            </div>
        </div>
        <div class="coupon-info">
            <div class="info-label">할인금액:</div>
            <div class="info-value">
                <input type="text" id="discountAmount" name="discountAmount" value="1000원">
            </div>
        </div>
        <div class="coupon-info">
            <div class="info-label">쿠폰 안내:</div>
            <div class="info-value">
                <textarea id="couponDescription" name="couponDescription">쿠폰안내내내</textarea>
            </div>
        </div>
        
    </div>

</body>
</html>
