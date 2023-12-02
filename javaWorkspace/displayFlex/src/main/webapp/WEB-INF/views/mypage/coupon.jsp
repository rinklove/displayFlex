<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/mypage/coupon.css">

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="container">
        <div class="main">
            <div class="main-first">FLEX 할인쿠폰 내역</div>
            <div class="main-second">FLEX 할인쿠폰 보유(등록) 내역</div>
            <div class="main-box">
                <div class="main-box-b1">영화쿠폰</div>
                <div class="main-box-b2">기타쿠폰(스토어)</div>
            </div>
            <div class="main-table">
                <div class="main-table-header">
                    <div>쿠폰이름</div>
                    <div>사용기간</div>
                    <div>사용가능경로</div>
                    <div>쿠폰정보</div>
                </div>
                <div class="main-table-body">
                    <div>1</div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>6</div>
                    <div>7</div>
                    <div>8</div>
                    <div>9</div>
                    <div>10</div>
                    <div>11</div>
                    <div>12</div>
                    <div>13</div>
                    <div>14</div>
                    <div>15</div>
                    <div>16</div>
                </div>
            </div>
            <div class="main-third">FLEX 할인쿠폰 사용내역</div>
            <div class="main-fourth">
                <div class="main-fourth-b1">조회기간</div>
                <div class="main-fourth-b2">
                    <div class="main-fourth-b2-first">
                        <button class="b2-button">15일</button><button class="b2-button">1개월</button><button class="b2-button">2개월</button>
                        <div class="b2-content">3개월 이전의 내역은 자동 삭제됩니다.</div>
                    </div>
                    <div class="main-fourth-b2-second">
                        <div><label for="date"><input type="date" id="date" max="2023-12-31" min="2000-01-01" value="2023-12-02"></label></div>
                        <div><img src="/cinema/resources/image/mypage/calender.png" alt=""></div>
                        <div class="icon">~</div>
                        <div><label for="date"><input type="date" id="date" max="2023-12-31" min="2000-01-01" value="2023-12-02"></label></div>
                        <div><img src="/cinema/resources/image/mypage/calender.png" alt=""></div>
                        <div><input type="button" id="last-button" value="조회하기"></div>
                    </div>
                </div>
            </div>
            <div class="main-table2">
                <div class="main-table-header2">
                    <div>쿠폰이름</div>
                    <div>사용기간</div>
                    <div>사용가능경로</div>
                    <div>쿠폰정보</div>
                </div>
                <div class="main-table-body">1</div>
            </div>
        </div>
    </div>
        <footer></footer>
</body>
</html>