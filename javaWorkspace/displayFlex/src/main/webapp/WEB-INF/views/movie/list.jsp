<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/movie/list.css">
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="condition-search-container">
    <div class="first-div">
        <span class="title fw-bold mt-3">조건검색</span>
    </div>
    <form action="${pageContext.request.contextPath}/movie/list" method="get">
        <table>
            <thead></thead>
            <tbody>
                <tr>
                    <td><span class="fs-6 fw-bold mx-2 mt-3 d-flex align-content-center">장르</span></td>
                    <td>
					 	<input type="checkbox" class="btn-check" name="genre" id="드라마" value="1" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"  for="드라마">드라마</label>
						
					 	<input type="checkbox" class="btn-check" name="genre"  id="애니메이션" value="2" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"  for="애니메이션">애니메이션</label>
						
					 	<input type="checkbox" class="btn-check" name="genre" id="로맨스" value="3" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"  for="로맨스">로맨스</label>
						
					 	<input type="checkbox" class="btn-check" name="genre" id="스릴러" value="4" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"  for="스릴러">스릴러</label>
						
					 	<input type="checkbox" class="btn-check" name="genre" id="호러" value="호러" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"  for="호러">호러</label>
						
					 	<input type="checkbox" class="btn-check" name="genre" id="코미디" value="코미디" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"   for="코미디">코미디</label>
						
					 	<input type="checkbox" class="btn-check" name="genre" id="판타지" value="판타지" autocomplete="off">
						<label class="btn btn-outline-danger rounded-pill m-1 mt-3"  for="판타지">판타지</label>
                        <!-- <c:forEach var="each" items="${genreList}">
	                        <input type="checkbox" class="btn-check" name="genre" id="${each.name}" value="${each.no}" autocomplete="off">
							<label class="btn btn-outline-danger rounded-pill" for="${each.name}">${each.name}</label>
                        </c:forEach> -->
                    </td>
                </tr>
                <tr>
                    <td><span class="fs-6 fw-bold mx-2 mt-3 d-flex align-content-center">관람 등급</span></td>
                    <td>
                        <input type="radio" class="btn-check" name="grade" id="all" value="1" autocomplete="off"><label class="btn btn-outline-dark m-1 mt-3" for="all">전체 이용가</label>
                        <input type="radio" class="btn-check" name="grade" id="more12" value="2" autocomplete="off"><label class="btn btn-outline-dark m-1 mt-3" for="more12">12세 이상 관람가</label>
                        <input type="radio" class="btn-check" name="grade" id="more15" value="3" autocomplete="off"><label class="btn btn-outline-dark m-1 mt-3" for="more15">15세 이상 관람가</label>
                        <input type="radio" class="btn-check" name="grade" id="more18" value="4" autocomplete="off"><label class="btn btn-outline-dark m-1 mt-3" for="more18">청소년 관람 불가</label>
                        <input type="radio" class="btn-check" name="grade" id="forbid" value="5" aut ocomplete="off"><label class="btn btn-outline-dark m-1 mt-3" for="forbid">제한 상영가</label>
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
<!-- 페이징 처리 필요 -->
<div class="result-container">
	<div class="df jc-sb mx-20">
        <span class="title"><strong>검색 결과</strong></span>
        <span class="title"><a href="${pageContext.request.contextPath }/admin/movie/add">영화 등록하기</a></span>
        <c:if test="${loginMember eq 'Y' }">
	        <span class="title"><a href="${pageContext.request.contextPath }/admin/movie/add">영화 등록하기</a></span>
        </c:if>
    </div>
	<hr>
    <table>
        <thead></thead>
        <tbody>
            <!-- 포스터, 제목, 개봉일, 장르, 관람 등급, 상영 시간 -->
            <tr>
                <td>
                    <div class="element">
                        <div class="poster">
                            <a href="#"><img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="벼랑 위의 포뇨"></a>
                        </div>
                        <div class="simple-info">
                            <h3><a href="#">벼랑 위의 포뇨</a></h3>
                            <p>개봉일: 2008.12.18</p>
                            <p>장르: 가족, 어드벤처, 애니메이션</p>
                            <p>개요: 전체 관람가, 100분</p>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="element">
                        <div class="poster">
                            <img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="벼랑 위의 포뇨">
                        </div>
                        <div class="simple-info">
                            <h3><a href="#">벼랑 위의 포뇨</a></h3>
                            <p>개봉일: 2008.12.18</p>
                            <p>장르: 가족, 어드벤처, 애니메이션</p>
                            <p>개요: 전체 관람가, 100분</p>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="element">
                        <div class="poster">
                            <img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="벼랑 위의 포뇨">
                        </div>
                        <div class="simple-info">
                            <h3><a href="#">벼랑 위의 포뇨</a></h3>
                            <p>개봉일: 2008.12.18</p>
                            <p>장르: 가족, 어드벤처, 애니메이션</p>
                            <p>개요: 전체 관람가, 100분</p>
                        </div>
                    </div>
                </td>
            </tr>
            <!-- <c:forEach var="element" items="${movieList }">
            <tr>
                <td>
                    <div class="element">
                        <div class="poster">
                            <img src="${element.poster }" alt="${element.movieName }">
                        </div>
                        <div class="simple-info">
                            <h3><a href="#">${element.movieName }</a></h3>
                            <p>개봉일: ${element.releaseDate }</p>
                            <p>장르: ${element.genre }</p>
                            <p>개요: ${element.screenGradeName }, ${element.runningTime }</p>
                        </div>
                    </div>
                </td>
            </tr>
            </c:forEach> -->    
        </tbody>
    </table>
</div>
</body>
</html>	