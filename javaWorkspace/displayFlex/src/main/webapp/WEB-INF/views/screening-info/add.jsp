<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/screening-info/add.css?ver=1">
<script defer src="${pageContext.request.contextPath}/resources/js/screening-info/add.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.3/dist/flatpickr.min.css">
  <script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.3/dist/flatpickr.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.3/dist/l10n/ko.js"></script>



</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- 검색 영역 + 리스트 영역 -->
<div class="form-container m-auto p-4">
    <span class="fs-5 fw-bold ml-248x pt-5 pt-60x">상영 정보 등록</span>
    <hr class="m-auto my-4 w-51e">
    <form action="${pageContext.request.contextPath }/admin/screen-info/add" class="row g-3 m-auto">
        <div class="col-9 m-auto w-75 m-1">
            <label for="title" class="form-label">등록할 영화 검색하기</label>
            <input type="text" class="form-control w-100" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" placeholder="영화 제목을 입력하새요" name="title" id="title">
            <div class="bg-white form-control d-none position-absolute z-1 result-container"></div>
        </div>
        <div class="col-3 m-auto">
            <label for="theater" class="form-label">상영관 선택</label>
            <select class="form-select d-inline-block" aria-label="상영관 선택" id="theater" name="theater">
                <option selected>상영관 선택</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
        </div>
        <div class="col-4 m-auto mt-3">
            <label for="dateInput" class="form-label">상영 일자</label>
            <input type="text" class="form-control w-100" id="dateInput" name="screening-date" placeholder="상영일자 선택">
        </div>
        <div class="col-2 m-auto mt-3">
            <label for="startTime" class="form-label">시작 시간</label>
            <input type="text" class="form-control w-100" id="startTime" name="timeInput" placeholder="시작 시간">
        </div>
        <div class="col-md-auto m-auto text-center mt-4">
		<br>
        <div class="form-control border-0">~</div>
        </div>
        <div class="col-2 m-auto mt-3">
            <label for="endTime" class="form-label">종료 시간</label>
            <input type="text" class="form-control w-100" id="endTime" name="timeInput" placeholder="종료 시간">
        </div>
        <div class="col-3 m-auto mt-4">
            <br>
            <input type="submit"  value="상영 정보 검색" class="btn btn-success w-100">
        </div>
    </form>
    <div class="d-inline-block fs-5 fw-bold list-title">등록할 상영 정보</div>
    <hr class="custom-hr">
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
                <td><button class="btn btn-dark bg-1a text-white w-6em" onclick="location.href='${pageContext.request.contextPath}/admin/screen-info/add">등록</button></td>
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