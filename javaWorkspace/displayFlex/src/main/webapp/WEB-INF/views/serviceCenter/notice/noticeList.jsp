<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/notice/noticeList.css">

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
	
    <main>
        <div id="contents">
            <div id="title_top">
                <h1>고객센터</h1>
                <%-- <c:if test="${loginMember.adminYn eq 'Y'}"> --%>
                <a href="/cinema/admin/noticeAdd">등록</a>
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
            <fieldset id="search_wrap1">
                <legend>전체 공지 검색하기</legend>
                <select class="ty3" title="검색조건 제목 선택" id="selectCondition1">
                    <option value="1">제목</option>
                    <option value="2">내용</option>
                    <option value="3">제목+내용</option>
                </select>
                <input type="text" placeholder="검색어를 입력해주세요." id="seachKeyword1" title="검색어를 입력해주세요">
                <button type="button" class="btn_col2">검색</button>
            </fieldset>
            <div id="acc1">
                <table id="tb_acc_wrap1"
                    summary="공지사항 표입니다. 구분, 질문 순서로 행이 구성되어 있습니다." >
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
                            <td><a href="/cinema/serviceCenter/noticeDetail">8</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목8</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일8</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">7</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목7</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일7</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">6</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목6</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일6</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">5</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목5</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일5</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">4</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목4</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일4</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">3</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목3</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일3</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">2</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목2</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일2</a></td>
                        </tr>
                        <tr>
                            <td><a href="/cinema/serviceCenter/noticeDetail">1</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">제목1</a></td>
                            <td><a href="/cinema/serviceCenter/noticeDetail">등록일1</a></td>
                        </tr>
                    </tbody>
                </table>
                <div id="paging">
                    <a href="">1</a>
                    <a href="">2</a>
                    <a href="">3</a>
                    <a href="">4</a>
                    <a href="">5</a>
                </div>
            </div>
            
        </div>
    </main>

</body>
</html> 