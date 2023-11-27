<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/screening-info/list.css">
<script src="https://kit.fontawesome.com/0701fa6919.js" crossorigin="anonymous"></script>
<script defer src="${pageContext.request.contextPath}/resources/js/screening-info/list.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- 검색 영역 + 리스트 영역 -->
<div class="search-container">
    <span>상영 정보 검색</span>
    <hr>
    <form action="${pageContext.request.contextPath }/admin/screen-info/list">
        <input type="text" name="title" id="title" placeholder="영화 검색">
        <select name="theater" id="">
            <option value="">상영관 선택</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select>
        <input type="date"
        name="screening-time" 
        data-placeholder="상영 일자 선택">
    </form>
</div>
<div class="info-list-container">
	<span class="title">상영 정보 리스트</span>
	<hr>
    <table>
        <thead>
            <tr>
                <th>영화 이름</th>
                <th>상영관</th>
                <th>상영일자</th>
                <th>상영시간</th>
                <th>삭제하기</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>벼랑 위의 포뇨</td>
                <td>2</td>
                <td>2023년 12월 13일</td>
                <td>17:50 ~ 19:30</td>
                <td><div><a href="${pageContext.request.contextPath}/admin/screen-info/delete">X</a></div></td>
            </tr>
              <tr>
                <td>벼랑 위의 포뇨</td>
                <td>2</td>
                <td>2023년 12월 13일</td>
                <td>17:50 ~ 19:30</td>
                <td><div><a href="${pageContext.request.contextPath}/admin/screen-info/delete">X</a></div></td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>