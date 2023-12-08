<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="displayFlex.serviceCenter.recommend.vo.RecommendVo"%>
<%@page import="displayFlex.util.page.vo.PageVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	List<RecommendVo> recommendVoList = (List<RecommendVo>) request.getAttribute("recommendVoList");
    	PageVo pvo = (PageVo)request.getAttribute("pvo");
    	Map<String, String> searchMap = (Map<String, String>)request.getAttribute("searchMap");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/recommend/recommendList.css">
<script defer type="text/javascript" src="./resources/js/serviceCenter/recommend.js"></script>

</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

	<main>
        <div id="contents">
            <div id="title_top">
                <h1>고객센터</h1>
                <c:if test="${loginMember.adminYn eq 'N'}">
                	<button onclick="location.href='/cinema/serviceCenter/recommendWrite'">작성</button>
                </c:if>
            </div>
            <div id="tab_tit">
                <nav>
                    <a href="/cinema/serviceCenter/faqList">FAQ</a>
                    <a href="/cinema/serviceCenter/noticeList">공지사항</a>
                    <a href="/cinema/serviceCenter/inquiryWrite">1:1 문의</a>
                    <a href="/cinema/serviceCenter/recommendList">상영요청</a>
                </nav>
            </div>
            <fieldset id="search_wrap2">
                <!-- <legend>상영 요청작 검색하기</legend> -->
                <select class="ty3" title="검색조건 제목 선택" id="selectCondition1">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="titcon">제목+내용</option>
                </select>
                <input type="text" name="searchValue" placeholder="검색어를 입력해주세요." id="seachKeyword2">
                <input type="submit" class="btn_col3" value="검색" onclick="location.href='/cinema/serviceCenter/recommendSearch?searchType=' + document.getElementById('selectCondition1').value + '&searchValue=' + document.getElementById('seachKeyword1').value;">
            </fieldset>
            <div id="acc3">
                <table id="tb_acc_wrap3"
                    summary="상영요청 표입니다. 구분, 질문 순서로 행이 구성되어 있습니다." >
                    <colgroup>
                        <col style="width: 20%;">
                        <col style="width: auto">
                        <col style="width: 20%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th id="thead1">번호</th>
                            <th id="thread2">제목</th>
                            <th id="thread3">작성자</th>
                            <th id="thread4">등록일</th>
                        </tr>
                    </thead>
                    <tbody id="tab">
						<% for(RecommendVo vo : recommendVoList){ %>
							<tr>
								<td><%= vo.getRecommendMvNo() %></td>
								<td><%= vo.getTitle() %></td>
								<td><%= vo.getWriterNick() %></td>
								<td><%= vo.getEnrollDate() %></td>
							</tr>
						<% } %>
                    </tbody>
                </table>
                <div id="paging">
                    <% if(pvo.getStartPage() != 1){ %>
                   		<a href="/cinema/serviceCenter/recommendList?pno=<%= pvo.getStartPage()-1 %>">이전</a>
                   	<% } %>
                   	
                   	<% for(int i = pvo.getStartPage() ; i <= pvo.getEndPage(); i++){ %>
						<% if( i == pvo.getCurrentPage() ){ %>
							<span><%= i %></span>
						<% } else { %>
							<a href="/cinema/serviceCenter/recommendList?pno=<%= i %>"><%= i %></a>
						<% } %>
					<% } %>
					
					<% if( pvo.getEndPage() != pvo.getMaxPage() ){ %>
						<a href="/cinema/serviceCenter/recommendList?pno=<%= pvo.getEndPage()+1 %>">다음</a>	
					<% } %>
                </div>
            </div>
            
        </div>
    </main>

</body>
</html>