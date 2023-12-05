<%@page import="displayFlex.util.page.vo.PageVo"%>
<%@page import="displayFlex.serviceCenter.faq.vo.FaqVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    	List<FaqVo> faqVoList = (List<FaqVo>) request.getAttribute("faqVoList");
     	PageVo pvo = (PageVo)request.getAttribute("pvo");
	 %>
    
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
                <%-- <c:if test="${loginMember.adminYn eq 'Y'}"> --%> 
                <%-- <% if(loginMember != null) { %> --%>
	                <a href="/cinema/admin/faqAdd">등록</a>
                <%-- <% } %> --%>
                <%-- </c:if> --%>
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
                        <% for(FaqVo vo : faqVoList){ %>
                        	<tr>
                        		<td><%= vo.getFaqNo() %></td>
                        		<td><%= vo.getTitle() %></td>
                        		<td><%= vo.getEnrollDate() %></td>
                        	</tr>
                        <% } %>
                        </tbody>
                    </table>
                    <div id="paging">
                    	<% if(pvo.getStartPage() != 1){ %>
                    		<a href="/cinema/serviceCenter/faqList?pno=<%= pvo.getStartPage()-1 %>">이전</a>
                    	<% } %>
                    	
                    	<% for(int i = pvo.getStartPage() ; i <= pvo.getEndPage(); i++){ %>
							<% if( i == pvo.getCurrentPage() ){ %>
								<span><%= i %></span>
							<% } else { %>
								<a href="/cinema/serviceCenter/faqList?pno=<%= i %>"><%= i %></a>
							<% } %>
						<% } %>
						
						<% if( pvo.getEndPage() != pvo.getMaxPage() ){ %>
							<a href="/cinema/serviceCenter/faqList?pno=<%= pvo.getEndPage()+1 %>">다음</a>	
						<% } %>
                    	
                        
                    </div>
                </div>

            </div>

        </div>
    </main>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>

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
