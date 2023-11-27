<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/notice.css">

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
	
    <main>
        <div id="contents">
            <div id="title_top">
                <h1>공지사항</h1>
            </div>
            <div id="tab_tit">
                <nav>
                    <a href="/cinema/serviceCenter/faq">FAQ</a>
                    <a href="/cinema/serviceCenter/notice">공지사항</a>
                    <a href="/cinema/serviceCenter/inquiry">1:1 문의</a>
                    <a href="/cinema/serviceCenter/recommend">상영요청</a>
                </nav>
            </div>
            <fieldset id="search_wrap1">
                <legend>전체 공지 검색하기</legend>
                <select class="ty3" title="검색조건 제목 선택" id="selectCondition1">
                    <option value="1">제목</option>
                    <option value="2">내용</option>
                    <option value="3">제목+내용</option>
                </select>
                <input type="text" placeholder="검색어를 입력해주세요." id="seachKeyword1" title="검색어를 입력해주세요">
                <button type="button" class="btn_col2" id="btnSearch1">검색</button>
            </fieldset>
            
        </div>
    </main>

</body>
</html> 