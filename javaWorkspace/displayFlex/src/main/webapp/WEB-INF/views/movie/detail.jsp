<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/movie/detail.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- 관리자일 경우 버튼 or a 링크 보여주기 -->
    <div class="add-form bg-w">
        <div class="title-container df jc-sb">
            <div class="title"><strong>영화 정보</strong></div>
            <div class="admin-container">
                 <c:if test="${loginMember.adminYn eq 'Y'}">
                    <button class="bg-abc95f admin-btn" onclick="location.href='${pageContext.request.contextPath}/'">수정</button>
                    <button class="bg-b73232 admin-btn" onclick="location.href='${pageContext.request.contextPath}/'">삭제</button>
                  </c:if>
            </div>
        </div>
        <hr class="jh-hr">
        <table border="1">
            <thead></thead>
            <tbody>
                <tr>
                    <td class="normal_text">제목</td>
                    <td>
                        <span>${movie.title}</span>
                    </td>
                    <td class="normal_text">감독</td>
                    <td><span>${movie.director}</span></td>
                    <td rowspan="4">
                    	<img src="${movie.poster}" alt="${movie.title}">
                    	<img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="${movie.title}">
                    </td>
                </tr>
                <tr>
                    <td class="normal_text">장르</td>
                    <td><span>${movie.genre}</span></td>
                    <td class="normal_text">개봉일</td>
                    <td><span>${movie.releaseDate}</span></td>
                </tr>
                <tr>
                    <td class="normal_text">관람 등급</td>
                    <td>
                        <span>${movie.screeningName}</span>
                    </td>
                    <td class="normal_text">상영 시간</td>
                    <td><span>${movie.runningTime}분</span></td>
                </tr>
                <tr>
                    <td class="normal_text">출연</td>
                    <td colspan="3"><span>${movie.actor}</span></td>
                </tr>
                <tr>
                    <td class="normal_text">별점</td>
                    <td>${movie.rate}</td>
                    <td></td>
                    <td></td>
                    <td id="reserve-td">
                    	<c:if test="${movie.isScreening eq 'Y'  && loginMember.adminYn eq 'N'}">
                    		<button class="bg-abc95f"  onclick="location.href='${pageContext.request.contextPath}/'">예매하기→</button>
                    	</c:if>
                    </td>
                </tr>

                <tr>
                    <td class="normal_text"><span class="title"><strong>줄거리</strong></span></td>
                </tr>
                <tr>
                    <td colspan="5"><div class="story">${movie.story}</div></td>
                </tr>
                <tr>
                    <td class="normal_text"><span class="title"><strong>스틸컷</strong></span></td>
                </tr>
                <tr>
                    <td colspan="5">
                        <div class="df js-sa">
                        <c:forEach var="element" items="${movie.still }">
                            <div>
                                <img src="${element.still}" alt="${movie.title} 스틸이미지" width="300">
                            </div>                        
                        </c:forEach>
         					<div>
                                <img src="http://file.koreafilm.or.kr/thm/01/copy/00/24/08/tn_DSFT013926.jpg" alt="${movie.title} 스틸이미지"  width="300">
                            </div>    
         					<div>
                                <img src="http://file.koreafilm.or.kr/thm/01/copy/00/24/08/tn_DSFT013926.jpg" alt="${movie.title} 스틸이미지" width="300">
                            </div>    
         					<div>
                                <img src="http://file.koreafilm.or.kr/thm/01/copy/00/24/08/tn_DSFT013926.jpg" alt="${movie.title} 스틸이미지" width="300">
                            </div>    
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="review-container bg-w" >
    <div class="title"><strong>영화 정보</strong></div>
    <hr class="jh-hr">
 	<div class="title-container">
        <form id="rating-form" action="${pageContext.request.contextPath}/movie/detail" method="post" onsubmit="return checkContent()">
            <div>
            	<div class="rating-container">
				    <div class="stars" id="stars">
				        <input type="radio" id="star10" name="rating" value="1">
				        <label for="star10" class="star">&#9733;</label>
				        
				        <input type="radio" id="star9.5" name="rating" value="2">
				        <label for="star9.5" class="star">&#9733;</label>
				        
				        <input type="radio" id="star9" name="rating" value="3">
				        <label for="star9" class="star">&#9733;</label>
				        
				        <input type="radio" id="star8.5" name="rating" value="4">
				        <label for="star8.5" class="star">&#9733;</label>
				        
				        <input type="radio" id="star8" name="rating" value="5">
				        <label for="star8" class="star">&#9733;</label>
				        
				        <input type="radio" id="star7.5" name="rating" value="6">
				        <label for="star7.5" class="star">&#9733;</label>
				        
				        <input type="radio" id="star7" name="rating" value="7">
				        <label for="star7" class="star">&#9733;</label>
				        
				        <input type="radio" id="star6.5" name="rating" value="8">
				        <label for="star6.5" class="star">&#9733;</label>
				        
				        <input type="radio" id="star6" name="rating" value="9">
				        <label for="star6" class="star">&#9733;</label>
				        
				        <input type="radio" id="star5.5" name="rating" value="10">
				        <label for="star5.5" class="star">&#9733;</label>
				    </div>
				    <p id="rating-value">별점: 0</p>
				</div>
                <textarea name="review-content" id="review-content" cols="60" rows="5"></textarea>
               	<input class="review-submit" type="submit" value="작성하기">
            </div>
        </form>
     </div>
     <hr class="jh-hr">
     <div class="content-container">
     	<div class="review">
     		
     	</div>
     </div>
    </div>
    <script defer type="text/javascript" src="${pageContext.request.contextPath }/resources/js/movie/detail.js"></script>
</body>
</html>