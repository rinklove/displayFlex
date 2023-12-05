<%@page import="displayFlex.ticketing.vo.SelectMovieVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	List<SelectMovieVo> movieList = (List<SelectMovieVo>)request.getAttribute("movieList");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/css/ticketing/ticketSelect.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script defer type="text/javascript" src="../resources/js/ticketing/ticketSelect.js"></script>
    <title>예매페이지</title>
    
</head>
<body>

<!--     <header> -->
<!--         <nav>     -->
            <%@ include file="/WEB-INF/views/common/header.jsp" %>
<!--         </nav> -->
<!--     </header> -->
    <main>
        <section id="section1">
            <div id="ticketing1-back">
                <div id="ticketing1">
                    <div id="movie">
                
                    <div class="menuName">
                        <span class="text">영화</span>
                    </div>
                    <ul id="movieList">
                        <% for(int i = 0; i < movieList.size(); i++){
                        	String movieName = movieList.get(i).getMovieName();
                        	int movieNo = Integer.parseInt(movieList.get(i).getMovieNo());
                        	String movieImage = movieList.get(i).getMovieImage();
                        	String screenGradeNo = movieList.get(i).getScreenGradeNo();
                        	String ratedImgSrc = "../resources/image/ticketing/ratedAll.png";
                        	switch(screenGradeNo){
                        	case "2" : ratedImgSrc = "../resources/image/ticketing/rated12.png"; break;
                        	case "3" : ratedImgSrc = "../resources/image/ticketing/rated15.png"; break;
                        	case "4" : ratedImgSrc = "../resources/image/ticketing/rated19.png"; break;
                        	case "5" : ratedImgSrc = "../resources/image/ticketing/rated19.png"; break;
                        	}
                        %>
                        <li class="ticketingMovie">
                            <button type="button" id="movieSelect" onclick="changeMovieInfo('<%=i+1%>');">
                        		<img src="<%=ratedImgSrc%>" alt="이용가">
                       			<span class="text" id="movieNo<%=movieNo%>" value="<%=movieNo%>"><%=movieName%></span>
                            </button>
                        </li>
                        <% } %>
                    </ul>
                </div>
                <div id="arrow1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                        <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                    </svg>
                </div>
                <div id="date">
                    <div class="menuName">
                        <span class="text">날짜</span>
                    </div>
                    <ul id="dateList">
                        <% for(int i = 0; i < 100; i++){ %>
                        <li class="ticketingDate">
                            <button type="button" onclick="changeDateInfo('<%=i%>')">
                                <span class="text" id="movieDate<%=i%>">2023-12-<%= i %></span>
                            </button>
                
                        </li>               
                        <% } %>
                    </ul>
                </div>
                <div id="arrow2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708z"/>
                        <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708z"/>
                    </svg>
                </div>
                <div id="time">
                    <div class="menuName">
                        <span>상영관</span>
                    </div>
                    <div id="theater1">
                        <div>1관</div>
                        <div class="theater1_time">
                            <div><button class="selectTime">시간1</button></div>
                            <div><button class="selectTime">시간2</button></div>
                            <div><button class="selectTime">시간3</button></div>
                        </div>
                        <div class="theater1_time">
                            <div><button class="selectTime">시간4</button></div>
                            <div><button class="selectTime">시간5</button></div>
                            <div><button class="selectTime">시간6</button></div>
                        </div>
                    </div>
                    <div id="theater2">
                        <div>2관</div>
                        <div class="theater2_time">
                            <div><button class="selectTime">시간1</button></div>
                            <div><button class="selectTime">시간2</button></div>
                            <div><button class="selectTime">시간3</button></div>
                        </div>
                        <div class="theater2_time">
                            <div><button class="selectTime">시간4</button></div>
                            <div><button class="selectTime">시간5</button></div>
                            <div><button class="selectTime">시간6</button></div>
                        </div>
                    </div>
                    <div id="theater3">
                        <div>3관</div>
                        <div class="theater3_time">
                            <div><button class="selectTime">시간4</button></div>
                            <div><button class="selectTime">시간5</button></div>
                            <div><button class="selectTime">시간6</button></div>
                        </div>
                        <div class="theater3_time">
                            <div><button class="selectTime">시간4</button></div>
                            <div><button class="selectTime">시간5</button></div>
                            <div><button class="selectTime">시간6</button></div>
                        </div>
                    </div>
                </div>   
            </div>  
            </div>
        </section>
        <section id="section2">
            <div id="ticketing2">
                <div id="ticketing2_screen"><span>SCREEN</span></div>
                <div id="ticketing2_seat">
                    <div id="seat_area">
                        <div class="seat" id="seat_A">
                            <div class="seatRow" id="A">A</div>
                            <div class="seat_A" id="seat01"><button>1</button></div>
                            <div class="seat_A" id="seat02"><button>2</button></div>
                            <div></div>
                            <div class="seat_A" id="seat03"><button>3</button></div>
                            <div class="seat_A" id="seat04"><button>4</button></div>
                            <div class="seat_A" id="seat05"><button>5</button></div>
                            <div class="seat_A" id="seat06"><button>6</button></div>
                            <div class="seat_A" id="seat07"><button>7</button></div>
                            <div class="seat_A" id="seat08"><button>8</button></div>
                            <div></div>
                            <div class="seat_A" id="seat09"><button>9</button></div>
                            <div class="seat_A" id="seat10"><button>10</button></div>
                        </div>
                        <div class="seat" id="seat_B">
                            <div class="seatRow" id="B">B</div>
                            <div class="seat_B" id="seat01"><button>1</button></div>
                            <div class="seat_B" id="seat02"><button>2</button></div>
                            <div></div>
                            <div class="seat_B" id="seat03"><button>3</button></div>
                            <div class="seat_B" id="seat04"><button>4</button></div>
                            <div class="seat_B" id="seat05"><button>5</button></div>
                            <div class="seat_B" id="seat06"><button>6</button></div>
                            <div class="seat_B" id="seat07"><button>7</button></div>
                            <div class="seat_B" id="seat08"><button>8</button></div>
                            <div></div>
                            <div class="seat_B" id="seat09"><button>9</button></div>
                            <div class="seat_B" id="seat10"><button>10</button></div>
                        </div>
                        <div class="seat" id="seat_C">
                            <div class="seatRow" id="C">C</div>
                            <div class="seat_C" id="seat01"><button>1</button></div>
                            <div class="seat_C" id="seat02"><button>2</button></div>
                            <div></div>
                            <div class="seat_C" id="seat03"><button>3</button></div>
                            <div class="seat_C" id="seat04"><button>4</button></div>
                            <div class="seat_C" id="seat05"><button>5</button></div>
                            <div class="seat_C" id="seat06"><button>6</button></div>
                            <div class="seat_C" id="seat07"><button>7</button></div>
                            <div class="seat_C" id="seat08"><button>8</button></div>
                            <div></div>
                            <div class="seat_C" id="seat09"><button>9</button></div>
                            <div class="seat_C" id="seat10"><button>10</button></div>
                        </div>
                        <div class="seat" id="seat_D">
                            <div class="seatRow" id="D">D</div>
                            <div class="seat_D" id="seat01"><button>1</button></div>
                            <div class="seat_D" id="seat02"><button>2</button></div>
                            <div></div>
                            <div class="seat_D" id="seat03"><button>3</button></div>
                            <div class="seat_D" id="seat04"><button>4</button></div>
                            <div class="seat_D" id="seat05"><button>5</button></div>
                            <div class="seat_D" id="seat06"><button>6</button></div>
                            <div class="seat_D" id="seat07"><button>7</button></div>
                            <div class="seat_D" id="seat08"><button>8</button></div>
                            <div></div>
                            <div class="seat_D" id="seat09"><button>9</button></div>
                            <div class="seat_D" id="seat10"><button>10</button></div>
                        </div>
                    </div>
                    <div id="seat_description">
                    	<img src="../resources/image/ticketing/description.png" alt="선택설명" id="descriptionImg">
                    </div>
                    
                </div>
            </div>
        </section>
    </main>

    <aside></aside>
    
    <div id="selectInfo">
        <div id="ticket-posterImg">
			<img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="포스터" id="posterImg">
		</div>
        <div id="ticket-movieName">
            <span id="movieInfo">영화를 선택해주세요</span>
        </div>
        <div id="ticket-movieInfo">
            <table>
                <tbody>
                    <tr>
                        <td>일시</td>
                        <td><span id="dateInfo"></span><span id="timeInfo"></span></td>
                    </tr>
                    <tr>
                        <td>상영관</td>
                        <td><span id="theaterInfo"></span></td>
                    </tr>
                    <tr>
                        <td>인원</td>
                        <td id="reservedInfo"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-seatInfo">
            <table>
                <tbody>
                    <tr>
                        <td>좌석명</td>
                        <td>일반석</td>
                    </tr>
                    <tr>
                        <td>좌석번호</td>
                        <td id="seatInfo"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-payInfo">
            <table>
                <tbody>
                    <tr>
                        <td>총금액</td>
                        <td id="payInfo">0</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-payButton">
            <form action="/cinema/ticket/payment" method="get">
                <button type="submit">
                    <i class="bi bi-check-circle-fill"></i>
                    <span>선택 완료</span>
                </button>
            </form>
        </div>
    </div>

    <footer>
        푸터영역

    </footer>

</body>
</html>