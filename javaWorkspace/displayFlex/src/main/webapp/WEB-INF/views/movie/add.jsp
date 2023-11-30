<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/movie/add.css?ver=1">
<script defer src="${pageContext.request.contextPath}/resources/js/movie/add.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <div class="add-form bg-w">
        <div class="title-container">
            <span class="title"><strong>영화 등록</strong></span>
            <span>- 공백으로 저장할 경우 api에서 값을 가져옵니다.</span><br>
            <span ><span class="star">*</span>표시가 붙은 부분은 필수 입력란입니다.</span>
        </div>
        <hr>
        <form action="${pageConText.request.contextPath}/admin/movie/add" method="post" onsubmit="return checkInputValue()" class="m-auto">
            <table>
                <thead></thead>
                <tbody>
                    <tr>
                        <td class="normal_text">제목<span class="star">*</span></td>
                        <td>
                            <input list="search-result" type="text" class="form-control custom-form" placeholder="영화 제목을 입력하새요" name="title" id="title" >
                        	<dataList class="list-group-flush border-dark shadow" id="search-result">
                        		<!-- <li class="list-group-item d-flex align-items-center justify-content-between flex-row">
								    <div>
								        <span>벼랑 위의 포뇨</span><span>(2008)</span>
								    </div>
								    <div>
								        <img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg"  width="60" alt="" class="search-poster">
								    </div>
								</li>
								<li class="list-group-item d-flex align-items-center justify-content-between flex-row">
								    <div>
								        <span>벼랑 위의 포뇨</span><span>(2008)</span>
								    </div>
								    <div>
								        <img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg"  width="60" alt="" class="search-poster">
								    </div>
								</li> -->
                        	</dataList>
                        </td>
                        <td class="normal_text">감독</td>
                        <td><input type="text" class="form-control custom-form" name="director" id="director"></td>
                        <td rowspan="4" id="poster-img"></td>
                    </tr>
                    <tr>
                        <td class="normal_text">장르</td>
                        <td><input type="text" class="form-control custom-form" name="genre" id="genre"></td>
                        <td class="normal_text">개봉일</td>
                        <td><input type="text" class="form-control custom-form" name="releaseDate" id="releaseDate"></td>
                    </tr>
                    <tr>
                        <td class="normal_text">관람 등급</td>
                        <td>
                            <select class="w-55 form-select custom-form" name="screenGrade" aria-label="관람 등급 선택" >
                                <option value="">선택하세요</option>
                                <option value="">전체 관람가</option>
                                <option value="">12세 이상 관람가</option>
                                <option value="">15세 이상 관람가</option>
                                <option value="">청소년 관람 불가</option>
                                <option value="">제한 상영가</option>
                            </select>
                        </td>
                        <td class="normal_text">상영 시간</td>
                        <td><input type="text" class="form-control custom-form" name="runningTime" id="runningTime" placeholder="(단위: 분)"></td>
                    </tr>
                    <tr>
                        <td class="normal_text">출연</td>
                        <td colspan="3"><input type="text" class="form-control custom-form" name="actor" id="actor" placeholder="최대 3명까지 저장 가능(','로 구분 해주세요)"></td>
                    </tr>
                    <tr>
                        <td class="normal_text">별점<span class="star">*</span></td>
                        <td><input type="number" class="w-50 form-control custom-form" name="rate" id="rate"  min="1" max="10"></td>
                    </tr>

                    <tr>
                        <td class="normal_text"><span class="title"><strong>줄거리</strong></span></td>
                    </tr>
                    <tr>
                        <td colspan="5"><textarea class="story form-control m-auto custom-form" id="story" name="story" rows="15"></textarea></td>
                    </tr>
                    <tr>
                        <td class="normal_text"><span class="title"><strong>스틸컷</strong></span></td>
                    </tr>
                    <tr>
                        <td class="still-image"  colspan="5">
                        <div class="m-auto">
							<div class="mb-3">
							  <input class="form-control custom-form" type="file" id="formFile">
							</div>
							<div class="mb-3">
							  <input class="form-control custom-form" type="file" id="formFile">
							</div>
							<div class="mb-3">
							  <input class="form-control custom-form" type="file" id="formFile">
							</div>
                        </div>
                        </td>
                    </tr>
                    <tr>
                    	<td></td>
                    	<td></td>
                    	<td></td>
                    	<td></td>
                        <td>
                            <div class="df fd-cr">
									<input type="submit" value="등록하기" class="btn btn-success">
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
           
        </form>

    </div>
	
</body>
</html>