<%@page import="java.util.Map"%>
<%@page import="displayFlex.event.dto.EventDto"%>
<%@page import="java.util.List"%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/cinema/resources/css/event/ongoingevent.css">
 <%
    	List<EventDto> eventDtoList = (List<EventDto>) request.getAttribute("eventDtoList");
    	Map<String, String> searchMap = (Map<String, String>)request.getAttribute("searchMap");
    %>


<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>진행중 이벤트</title>
    <style>
        a{text-decoration: none; color: black;}
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
    </style>
    
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div class="bw"> 
        <hr id="jul1">      
        <div><div id="event_title"> &nbsp;&nbsp;진행중 이벤트  
            <div id="event_title2"><a href="/cinema/event/event" class="event" style="text-decoration: underline;">진행중 이벤트</a> | <a href="/cinema/event/pastevent" class="past">지난 이벤트</a></div>
        </div>
        <%-- <c:if test="${loginMember.adminYn eq 'Y'}"> --%> 
				<div><div id="enroll" style="float: left;"><button onclick="location.href='/cinema/admin/event/adminevent'">등록</button></div>
				<div id="delete"><button>삭제</button></div>
				<%-- </c:if> --%>
                </div>
        </div>
        <hr id="jul2">
        <div id="main_top">
            <div id="main_title">
                <div style="color: white; font-size:xx-large"><a href="/cinema/event/event" style="color: white; text-decoration: underline;">전체</a></div>
                <div style="color: white; font-size:xx-large"><a href="/cinema/event/eventAffDis" style="color: white; text-decoration: none;">제휴/할인</a></div>
                <div style="color: white; font-size:xx-large"><a href="/cinema/event/eventPreMee" style="color: white; text-decoration: none;">시사회/간담회</a></div>
                <div style="color: white; font-size:xx-large"><a href="/cinema/event/eventStaGre" style="color: white; text-decoration: none;">무대인사</a></div>
            </div>
        </div>
        <div id="main_content">

            <div class="content-section">
               <DIV> <h2> <% 
                if(eventDtoList!= null){
                for(EventDto dto : eventDtoList){ %>
                    <div><%=dto.getEventTitle() %></div>
                   
                    <% }} %></h2>
                </DIV>
            </div>
        
            <div class="content-section">
               
                <h2>게시글사진</h2>
                <p>게시글내용</p>
            </div>
            <div class="content-section">
                <h2>게시글사진</h2>
                <p>게시글내용</p>
            </div>
        
            <div class="content-section">
                <h2>게시글사진</h2>
                <p>게시글내용</p>
            </div>
        
        


        </div>
    </div>
    
</body>
</html>
