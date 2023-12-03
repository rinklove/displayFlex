<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/mypage/inquiryHistory.css">

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="container">
        <div class="main">
            <div class="main-first">나의 문의내역</div>
            <div class="main-second">1:1 문의</div>
            <div class="main-text">
                <div class="main-text-t1">문의조회</div>
                <div><input class="main-text-t2" type="text"></div>
                <div><input class="main-text-t3" type="button" value="조회하기"></div>
            </div>
            <div class="main-button">
                <div class="main-button-b1"><input type="button" value="선택삭제"></div>
                <div class="main-button-b2">총 0건</div>
            </div>
            <div class="main-table">
                <div class="main-table-header">번호</div>
                <div class="main-table-header">문의FLEX</div>
                <div class="main-table-header">유형</div>
                <div class="main-table-header">제목</div>
                <div class="main-table-header">등록일</div>
                <div class="main-table-header">상태</div>
                <div class="main-table-header">만족도</div>
                <div class="main-table-body">1</div>            
                <div class="main-table-body">000 관련</div>            
                <div class="main-table-body">회원탈퇴</div>            
                <div class="main-table-body">회원탈퇴 진행방법</div>            
                <div class="main-table-body">2023-11-28</div>            
                <div class="main-table-body">처리중</div>            
                <div class="main-table-body">-</div>            
            </div>

            <div class="main-bottom">
                <div class="main-bottom-icon"><img src="/cinema/resources/image/mypage/icon1.svg"></div>
                <div class="main-botton-content">
                    <div class="main-botton-content-t1">자주하시는 질문<input type="button" value="바로가기"></div>
                    <div class="main-botton-content-t2">고객님들께서 주로 하시는 질문에 대한 답변을
                        한곳에 모아두었습니다.</div>
                </div>
                <div class="main-bottom-icon"><img src="/cinema/resources/image/mypage/icon2.svg"></div>
                <div class="main-button-content"> 
                    <div class="main-botton-content-t1">고객의 말씀<input type="button" value="바로가기"></div>
                    <div class="main-botton-content-t2">불편사항과 문의사항을 남겨주시면 친절히
                        답변드리겠습니다.</div></div>
            </div>

        </div>
    </div>
        <footer></footer>
</body>
</html>