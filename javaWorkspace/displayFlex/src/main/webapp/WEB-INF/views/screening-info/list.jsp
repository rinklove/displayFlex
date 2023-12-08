<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/0701fa6919.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/screening-info/list.css?ver=1">
<script defer src="${pageContext.request.contextPath}/resources/js/screening-info/list.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.3/dist/flatpickr.min.css">
  <script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.3/dist/flatpickr.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.3/dist/l10n/ko.js"></script>



</head>
<body>
<%
	String x = (String) session.getAttribute("alertMsg");
	session.removeAttribute("alertMsg");
%>
 <c:set var="msg"  value="<%= x %>" />
 <c:if test="${not empty msg}">
	 <script>
	        alert('<%= x %> ');
	</script>
 </c:if>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- 검색 영역 + 리스트 영역 -->
<div class="search-container">
    <span class="fs-5 fw-bold">상영 정보 검색</span>
    <hr>
    <form action="${pageContext.request.contextPath }/admin/screen-info/list" class="row g-2 mx-2">
        <div class="col-4 m-auto">
            <input type="text" class="form-control w-100 h-2-5em" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="영화 검색" name="title">
        </div>
        <div class="col-2 m-auto">
          <select class="form-select  d-inline-block h-2-5em" aria-label="Small select example">
              <option selected>상영관 선택</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
          </select>
        </div>
        <div class="col-2 m-auto">
            <input type="text" class="form-control w-100 h-2-5em" id="dateInput" name="screening-date" placeholder="상영일자 선택">
        </div>
        <div class="col-1 m-auto">
            <input type="text" class="w-100 h-2-5em" id="startTime" name="timeInput" placeholder="시작 시간">
        </div>
        <div class="col-1 m-auto">
        ~
        </div>
        <div class="col-1 m-auto">
            <input type="text" class=" w-100 h-2-5em" id="endTime" name="timeInput" placeholder="종료 시간">
        </div>
        <div class="col-1 m-auto">
            <input type="submit"  value="검색" class="btn btn-success w-100 h-2-5em">
        </div>
    </form>
</div>
<div class="info-list-container">
	<span class="fs-5 fw-bold">상영 정보 리스트</span>
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
        <tfoot>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><button class="btn btn-dark bg-1a text-white w-6em" onclick="location.href='${pageContext.request.contextPath}/admin/screen-info/add'">등록</button></td>
            </tr>
        </tfoot>
    </table>
    <div class="page-area text-center">
        <c:if test="${pageVo.startPage gt 1 }">
            <a href="${pageContext.request.contextPath}/admin/screen-info/list?pno=${pageVo.startPage-1}" }>이전</a>	            
        </c:if>
        <c:forEach var="i"  begin="${pageVo.startPage }" end="${pageVo.endPage }">
        <c:choose>
        <c:when test="${pageVo.currentPage eq i}">
            <span class="bg-success">${i }</span>                        	
        </c:when>
        <c:otherwise>
            <a href="${pageContext.request.contextPath}/admin/screen-info/list?pno=${i}" }>${i }</a>            
        </c:otherwise>
        </c:choose>
        </c:forEach>
        <c:if test="${pageVo.endPage ne pageVo.maxPage }">
            <a href="${pageContext.request.contextPath}/admin/screen-info/list?pno=${pageVo.endPage+1}" }>다음</a>	
        </c:if>
        <span class="bg-success text-white p-2 m-1">1</span>
        <a href="#" class="text-decoration-none text-black m-1">2</a>
        <a href="#" class="text-decoration-none text-black m-1">3</a>
        <a href="#" class="text-decoration-none text-black m-1">4</a>
        <a href="#" class="text-decoration-none text-black m-1">5</a>
    </div>
        
</div>
</body>
</html>