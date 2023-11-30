<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/cinema/resources/css/event/pastevent.css">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <div class="bw"> 
        <hr id="jul1">
        <div id="event_title"> &nbsp;&nbsp;&nbsp;&nbsp; 지난 이벤트
            <div id="event_title2">진행중 이벤트 | 지난 이벤트</div>
        </div>
        <hr id="jul2">
        <div id="main_top">
            <div id="main_title">
                <div style="color: white; font-size:xx-large">전체</div>
                <div style="color: white; font-size:xx-large">제휴/할인</div>
                <div style="color: white; font-size:xx-large">시사회/간담회</div>
                <div style="color: white; font-size:xx-large">무대인사</div>
            </div>
        </div>
        <div id="main_content">
            <div class="content_area">
                <a href="/cinema/event/pasteventdetail"><h1>이벤트 게시글1</h1>
                <div>
                    <div class="content_title"><a href="/cinema/event/pasteventdetail">클릭하면 간다.</a></div>
                    
                </div>
                </a>
            </div>

            <div class="content_area">
                <h1>이벤트 게시글 사진2</h1>
                <div>
                    <div class="content_title">이벤트 게시글 제목2</div>
                    
                </div>
            </div>

            <div class="content_area">
                <h1>이벤트 게시글 사진3</h1>
                <div>
                    <div class="content_title">이벤트 게시글 제목3</div>
                    
                </div>
            </div>

            <div class="content_area">
                <h1>이벤트 게시글 사진4</h1>
                <div>
                    <div class="content_title">이벤트 게시글 제목4</div>
                    
                </div>

            </div>
        </div>
    </div>
    
</body>
</html>