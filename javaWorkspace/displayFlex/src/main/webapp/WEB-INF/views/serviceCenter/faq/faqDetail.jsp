<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/faq/faqDetail.css">
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <main>
        <div id="contents">
            <div id="title_top">
                <h1>고객센터</h1>
                <%-- <c:if test="${loginMember.adminYn eq 'Y'}"> --%>
                <a href="/cinema/admin/FaqAdd">수정</a>
                <a href="">삭제</a>
                <%-- </c:if> --%>
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
                <div id="tab_wrap inner">
                    <!-- <h2></h2> -->
                    <table id="tb1_dtl" summary="공지사항 상세 내용에 대한 표">
                        <colgroup>
                            <col style="width: auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>게시글 제목</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="tb_info">
                                <td>
                                    <span class="tit">번호</span>
                                    <span class="mid">|</span>
                                    <span class="cont">1</span>
                                    <span class="tit">등록일</span>
                                    <span class="mid">|</span>
                                    <span class="cont">2023-12-04</span>
                                    <span class="tit">조회수</span>
                                    <span class="mid">|</span>
                                    <span class="cont">1</span>
                                </td>
                            </tr>
                            <tr id="tb_content">
                                <td>
                                    <div id="noticeContents">
                                        <p>
                                            내용 ~~
                                            <br>
                                            ~~
                                            <br>
                                            ~~
                                            <br>
                                            ~~
                                            <br>
                                            ~~
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr id="tb_link">
                                <td>
                                    <a href="" id="">
                                        <span class="tb_next">다음글</span>
                                    </a>
                                </td>
                            </tr>
                            <tr id="tb_link">
                                <td>
                                    <a href="" id="">
                                        <span class="tb_back">이전글</span>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="list_btn">
                        <a href="/cinema/serviceCenter/faqList"">목록</a>
                    </div>
                </div>
            </div>
        </div>
    </main>

</body>
</html>