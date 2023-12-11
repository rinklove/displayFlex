<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Arrays" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/movie/list.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/movie/list.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="condition-search-container">
    <div class="first-div">
        <span class="title"><strong>조건검색</strong></span>
    </div>
    <form action="${pageContext.request.contextPath}/movie/list/search?pno=1" method="get">
        <table>
            <thead></thead>
            <tbody>
                <tr>
                    <td><span class="fs-6 fw-bold mx-2 mt-3 d-flex align-content-center">장르</span></td>
                    <td>
                        <c:forEach var="genreElement" items="${genreList}" >
<%-- 	                        <c:choose>
								<c:when test="<%selectGenre.indexOf(${genreElement.genreCateNo}) != -1 && selectGenre != null %>">
			                        <input type="checkbox" class="btn-check" name="genres" id="${genreElement.cateName}" value="${genreElement.genreCateNo}" autocomplete="off" checked="checked">
									<label class="btn btn-outline-danger rounded-pill m-1" for="${genreElement.cateName}">${genreElement.cateName}</label>							
								</c:when>
								<c:otherwise> --%>
			                        <input type="checkbox" class="btn-check" name="genres" id="${genreElement.cateName}" value="${genreElement.genreCateNo}" autocomplete="off">
									<label class="btn btn-outline-danger rounded-pill m-1" for="${genreElement.cateName}">${genreElement.cateName}</label>							
<%-- 								</c:otherwise>
	                        </c:choose> --%>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td><span class="fs-6 fw-bold mx-2 mt-3 d-flex align-content-center">관람 등급</span></td>
                    <td>
                    	<input type="radio" class="btn-check" name="grade" id="grade0" value="" autocomplete="off">
                        <label class="btn btn-outline-dark m-1 mt-3" for="grade0">관람등급 상관없음</label>
	                    <c:forEach var="gradeElement" items="${screenGradeList }">
	                    <c:choose>
	                    <c:when test="${selectGrade eq  gradeElement.screenGradeNo}">
	                    	<input type="radio" class="btn-check" name="grade" id="grade${gradeElement.screenGradeNo }" value="${gradeElement.screenGradeNo }" autocomplete="off" checked="checked">
	                        <label class="btn btn-outline-dark m-1 mt-3" for="grade${gradeElement.screenGradeNo }">${gradeElement.name }</label>
	                    </c:when>
	                    <c:otherwise>
	                        <input type="radio" class="btn-check" name="grade" id="grade${gradeElement.screenGradeNo }" value="${gradeElement.screenGradeNo }" autocomplete="off">
	                        <label class="btn btn-outline-dark m-1 mt-3" for="grade${gradeElement.screenGradeNo }">${gradeElement.name }</label>	                    
	                    </c:otherwise>
	                    </c:choose>
	                    </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="d-flex justify-content-end"><input class="btn btn-success w-25 mt-2" type="submit" value="검색하기"></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>
<!-- 페이징 처리 필요 - 한 페이지당 5개씩-->
<div class="result-container">
	<div class="df jc-sb mx-20">
        <span class="title"><strong>검색 결과</strong></span>
        <span class="title"><a href="${pageContext.request.contextPath }/admin/movie/add">영화 등록하기</a></span>
        <c:if test="${loginMember eq 'Y' }">
	        <span class="title"><a href="${pageContext.request.contextPath }/admin/movie/add" class="text-decoration-none text-black">영화 등록하기</a></span>
        </c:if>
    </div>
	<hr>
    <table>
        <thead></thead>
        <tbody>
            <!-- 포스터, 제목, 개봉일, 장르, 관람 등급, 상영 시간 -->
            <c:forEach var="element" items="${movieList }">
            <tr>
                <td>
                    <div class="element">
                        <div class="poster">
                            <img src="${element.movieImage }" alt="${element.movieName }">
                        </div>
                        <div class="simple-info">
                        	<p class="d-none">${element.movieNo}</p>
                            <h3 class="mt-2 mb-2">${element.movieName }</h3>
                            <p>개봉일: ${element.releaseDate }</p>
                            <p>장르: ${element.genre }</p>
                            <p>개요: ${element.screenGradeName }, ${element.runningTime }분</p>
                        </div>
                    </div>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="page-area text-center">
        <c:if test="${pageVo.startPage gt 1 }">
            <a class="m-1 text-decoration-none text-black" href="${pageContext.request.contextPath}/movie/list/search?${queryString }&pno=${pageVo.startPage-1}" >이전</a>	            
        </c:if>
        <c:forEach var="i"  begin="${pageVo.startPage }" end="${pageVo.endPage }">
        <c:choose>
        <c:when test="${pageVo.currentPage eq i}">
            <span class="bg-success p-2 m-1 text-white">${i }</span>      	
        </c:when>
        <c:otherwise>
            <a class="m-1 text-decoration-none text-black" href="${pageContext.request.contextPath}/movie/list/search?${queryString }&pno=${i}" >${i }</a>            
        </c:otherwise>
        </c:choose>
        </c:forEach>
        <c:if test="${pageVo.endPage ne pageVo.maxPage }">
            <a class="m-1 text-decoration-none text-black" href="${pageContext.request.contextPath}/movie/list/search?${queryString }&pno=${pageVo.endPage+1}" >다음</a>	
        </c:if>
    </div>
</div>
</body>
</html>	