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
	
	<form action="/cinema/admin/faqAdd" method="get"></form>
    <main>
        <div id="contents">
            <div id="title_top">
                <h1>고객센터</h1>
                <a href="/cinema/admin/faqAdd">등록</a>
            </div>
            <div id="tab_tit">
                <nav>
                    <div id="top_tab1">
                        <a href="/cinema/serviceCenter/faqList">FAQ</a>
                    </div>
                    <div id="top_tab2">
                        <a href="/cinema/serviceCenter/noticeList">공지사항</a>
                    </div>
                    <div id="top_tab3">
                        <a href="/cinema/serviceCenter/inquiryWrite">1:1 문의</a>
                    </div>
                    <div id="top_tab4">
                        <a href="/cinema/serviceCenter/recommendList">상영요청</a>
                    </div>
                </nav>
            </div>
            <div id="tab_con">
                <div id="faq_icon_wrap">
                    <button id="icon_01" onclick="clickIcon">
                        <img src="/cinema/resources/image/faqIcon/cinema_2yong.png" alt="영화관 이용">
                        <a href="">영화관 이용</a>
                    </button>
                    <button id="icon_02" onclick="clickIcon">
                        <img src="/cinema/resources/image/faqIcon/member.png" alt="사람 아이콘">
                        <a href="">회원</a>
                    </button>
                    <button id="icon_03" onclick="clickIcon">
                        <img src="/cinema/resources/image/faqIcon/star.png" alt="별 아이콘">
                        <a href="">등급</a>
                    </button>
                    <button id="icon_04" onclick="clickIcon">
                        <img src="/cinema/resources/image/faqIcon/ticket.png" alt="티켓 아이콘">
                        <a href="">쿠폰</a>
                    </button>
                    <button id="icon_05" onclick="clickIcon">
                        <img src="/cinema/resources/image/faqIcon/popcorn.png" alt="팝콘 아이콘">
                        <a href="">스토어</a>
                    </button>
                    <button id="icon_06" onclick="clickIcon">
                        <img src="/cinema/resources/image/faqIcon/ribbon.png" alt="리본 아이콘">
                        <a href="">이벤트</a>
                    </button>
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
                                <td><a href="/cinema/serviceCenter/faqDetail">8</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목8</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일8</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">7</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목7</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일7</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">6</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목6</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일6</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">5</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목5</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일5</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">4</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목4</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일4</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">3</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목3</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일3</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">2</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목2</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일2</a></td>
                            </tr>
                            <tr>
                                <td><a href="/cinema/serviceCenter/faqDetail">1</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">제목1</a></td>
                                <td><a href="/cinema/serviceCenter/faqDetail">등록일1</a></td>
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

        </div>
    </main>
	

    <!-- <script>
        function clickIcon(button) {
            const bottons = document.querySelectorAll('#faq_icon_wrap button');
            bottons.forEach(function (btn) {
                btn.classList.remove('active');
            });
        button.classList.add('active');
        
        }
    </script> -->
</body>
</html>
