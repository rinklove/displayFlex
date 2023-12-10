<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Map"%>
<%@page import="displayFlex.util.page.vo.PageVo"%>
<%@page import="displayFlex.serviceCenter.notice.vo.NoticeVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	List<NoticeVo> noticeVoList = (List<NoticeVo>) request.getAttribute("noticeVoList");
    	PageVo pvo = (PageVo)request.getAttribute("pvo");
    	Map<String, String> searchMap = (Map<String, String>)request.getAttribute("searchMap");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/serviceCenter/notice/noticeList.css">
<script defer type="text/javascript" src="/cinema/resources/js/serviceCenter/notice.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    
    
    <main>
        <div id="contents">
            <div id="title_top">
                <h1>고객센터</h1>
                <c:if test="${loginMember.adminYn eq 'Y'}">
                	<button onclick="location.href='/cinema/admin/noticeAdd'">등록</button>
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
            <fieldset id="search_wrap1">
                <!-- <legend>전체 공지 검색하기</legend> -->
                <select class="ty3" title="검색조건 제목 선택" id="selectCondition1">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="titcon">제목+내용</option>
                </select>
                <input type="text" name="searchValue" placeholder="검색어를 입력해주세요." id="seachKeyword1" >
                <input type="submit" class="btn_col2" value="검색" onclick="location.href='/cinema/serviceCenter/noticeSearch?searchType=' + document.getElementById('selectCondition1').value + '&searchValue=' + document.getElementById('seachKeyword1').value;">
            </fieldset>
            <div id="acc1">
                <table id="tb_acc_wrap1" onclick="location.href='/cinema/serviceCenter/noticeDetail?noticeNo=' + noticeNo">
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
                    <% for(NoticeVo vo : noticeVoList){ %>
						<tr>
							<td><%= vo.getNoticeNo() %></td>
							<td><%= vo.getTitle() %></td>
							<td><%= vo.getEnrollDate() %></td>
						</tr>
					<% } %>
                    </tbody>
                </table>
                <div id="paging">
                    <% if(pvo.getStartPage() != 1){ %>
                   		<a href="/cinema/serviceCenter/noticeList?pno=<%= pvo.getStartPage()-1 %>">이전</a>
                   	<% } %>
                   	
                   	<% for(int i = pvo.getStartPage() ; i <= pvo.getEndPage(); i++){ %>
						<% if( i == pvo.getCurrentPage() ){ %>
							<span><%= i %></span>
						<% } else { %>
							<a href="/cinema/serviceCenter/noticeList?pno=<%= i %>"><%= i %></a>
						<% } %>
					<% } %>
					
					<% if( pvo.getEndPage() != pvo.getMaxPage() ){ %>
						<a href="/cinema/serviceCenter/noticeList?pno=<%= pvo.getEndPage()+1 %>">다음</a>	
					<% } %>
                </div>
            </div>
            
        </div>
    </main>
    
    
    <script>
	    <% if(searchMap != null){ %>
			function setSearchArea(){
				
				// 옵션태그 셋팅
				const optionTagArr = document.querySelectorAll("#search_wrap1 option");
				const searchType = "<%= searchMap.get("searchType") %>";
				for(let i = 0; i < optionTagArr.length; ++i){
					if( optionTagArr[i].value === searchType ){
						optionTagArr[i].selected = true;
						break;
					}
				}
				
				// 인풋태그 셋팅
				const searchValueTag = document.querySelector("#search_wrap1 input[name=searchValue]");
				searchValueTag.value = "<%= searchMap.get("searchValue") %>";
				
			}
			setSearchArea();
			
			function setPageArea(){
				const aTagArr = document.querySelectorAll("#paging a");
				for(let i = 0 ; i < aTagArr.length; ++i){
					aTagArr[i].href = aTagArr[i].href.replace("list" , "search"); 
					aTagArr[i].href += "&searchType=<%= searchMap.get("searchType") %>";
					aTagArr[i].href += "&searchValue=<%= searchMap.get("searchValue") %>";
				}
			}
			setPageArea();
		<% } %>

		/* // 각 공지사항의 상세조회 페이지로 이동하는 함수
		function goToNoticeDetail(noticeNo) {
			// 공지사항 상세조회 페이지 URL을 생성
			var url = "/cinema/serviceCenter/noticeDetail?noticeNo=" + noticeNo;
			// 페이지 이동
			window.location.href = url;
		} */
    </script>

</body>
</html> 