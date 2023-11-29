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
                    <tbody id="tab1">
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
                            <td>1</td>
                            <td>제목1</td>
                            <td>등록일1</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
        </div>
    </main>

</body>
</html> 