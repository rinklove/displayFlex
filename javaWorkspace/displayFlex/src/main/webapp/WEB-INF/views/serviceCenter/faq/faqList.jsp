<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/faq/faqList.css">

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
    <main>
        <div id="contents">
            <div id="title_top">
                <h1>고객센터</h1>
            </div>
            <div id="tab_tit">
                <nav>
                    <a href="/cinema/serviceCenter/faqList">FAQ</a>
                    <a href="/cinema/serviceCenter/noticeList">공지사항</a>
                    <a href="/cinema/serviceCenter/inquiryWrite">1:1 문의</a>
                    <a href="/cinema/serviceCenter/recommendList">상영요청</a>
                </nav>
            </div>
            <div id="tab_con">
                <div id="faq_icon_wrap">
                    <button id="icon_01"><img src="/cinema/resources/image/icon/cinema_2yong.png" alt="영화관 이용">영화관 이용</button>
                    <button id="icon_02"><img src="/cinema/resources/image/icon/member.png" alt="사람 아이콘">회원</button>
                    <button id="icon_03"><img src="/cinema/resources/image/icon/star.png" alt="별 아이콘">등급</button>
                    <button id="icon_04"><img src="/cinema/resources/image/icon/ticket.png" alt="티켓 아이콘">쿠폰</button>
                    <button id="icon_05"><img src="/cinema/resources/image/icon/popcorn.png" alt="팝콘 아이콘">스토어</button>
                    <button id="icon_06"><img src="/cinema/resources/image/icon/ribbon.png" alt="리본 아이콘">이벤트</button>
                </div>
                <fieldset id="search_wrap">
                    <legend>영화관 FAQ 검색하기</legend>
                    <input type="text" placeholder="검색어를 입력해주세요." id="seachKeyword" title="검색어를 입력해주세요">
                    <button type="button" id="btn_col1">검색</button>
                    <div id="help_wrap" style="text-align: left;">
                        <p>더 궁금한 점이 있거나, 이미 문의한 내용과 답변을 확인하려면?</p>
                        <a href="/cinema/serviceCenter/inquiryWrite" style="font-weight: bold; color: #000000;">1:1문의 바로가기</a>
                    </div>
                </fieldset>
                <div id="acc">
                    <table id="tb_acc_wrap"
                        summary="FAQ 표입니다. 구분, 질문 순서로 행이 구성되어 있습니다." >
                        <colgroup>
                            <col style="width: 20%;">
                            <col style="width: auto">
                            <col style="width: 20%;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th id="thead1">번호</th>
                                <th id="thread2">제목</th>
                                <th id="thread3">등록일</th>
                            </tr>
                        </thead>
                        <tbody id="tab">
                            <tr>
                                <td>8</td>
                                <td>제목8</td>
                                <td>등록일8</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>제목7</td>
                                <td>등록일7</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>제목6</td>
                                <td>등록일6</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>제목5</td>
                                <td>등록일5</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>제목4</td>
                                <td>등록일4</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>제목3</td>
                                <td>등록일3</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>제목2</td>
                                <td>등록일2</td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">1</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목1</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일1</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>
    </main>

</body>
</html>