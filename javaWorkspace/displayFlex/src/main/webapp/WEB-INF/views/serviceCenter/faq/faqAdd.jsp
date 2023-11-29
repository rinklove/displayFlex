<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/faq/faqAdd.css">

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
            <div id="con_tit ty1">
                <h2  class="tit">FAQ 등록</h2>
            </div>
            <table id="tbl_form" summary="문의내용작성 테이블">
                <colgroup>
                    <col style="width: 15%;">
                    <col style="width: auto;">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row" class="req">
                            "분류"
                            ::after
                        </th>
                        <td>
                            <select title="문의내용 분류선택" id="iDdivisionCode">
                                <option value="0">분류선택</option>
                                <option value="1">영화관 이용</option>
                                <option value="2">회원</option>
                                <option value="3">등급</option>
                                <option value="4">쿠폰</option>
                                <option value="5">스토어</option>
                                <option value="6">이벤트</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="req">
                            "제목"
                            ::after
                        </th>
                        <td>
                            <div class="bx_textarea">
                                <input type="text" class="ty2" placeholder="제목을 입력해주세요" title="문의내용 제목입력" id="iDtitle">
                                <span class="txt_count">
                                    <em id="strongContentsCount_title">0</em>
                                    "/한글"
                                    <em>100</em>
                                    "자"
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="req">
                            "내용"
                            ::after
                        </th>
                        <td>
                            <div class="bx_textarea">
                                <textarea name="ty3" id="iDcontents" cols="10" rows="10" title="문의내용을 입력해주세요" 
                                placeholder=""내용에 개인정보(개인번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해주세요></textarea>
                                <div class="txt_red txt_color01">
                                    "현재 페이지 내 '클릭/타이핑' 없이 머무르는 경우,"
                                    <br>
                                    " 20분 후 접속이 자동 종료되며 작업한 내용은 저장이 되지 않습니다."
                                </div>
                                <span class="txt_count">
                                    <em id="strongContentsCount">0</em>
                                    "/한글"
                                    <em>4,000</em>
                                    "자"
                                </span>
                                ::after
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div id="btn_wrap">
                <button>취소</button>
                <button>확인</button>
            </div>
            
                    
        </div>


</body>
</html>