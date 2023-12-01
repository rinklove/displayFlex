<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div id="ticketing1">
                <div id="movie">
                    <div class="menuName">
                        <span class="text">영화</span>
                    </div>
                    <ul id="movieList">
                        <% for(int i = 0; i < 100; i++){%>
                        <li class="ticketingMovie">
                            <button type="button" id="movieSelect" onclick="changeMovieInfo('<%=i%>');">
                                <img src="../resources/image/ticketing/ratedAll.png" alt="전체이용가">
                                <span class="text" id="movieName<%=i%>">영화제목<%=i%></span>
                            </button>
                        </li>
                        <% } %>
                    </ul>
                </div>
                <div class="arrow">
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
                                <span class="text" id="movieDate<%=i%>">날짜<%= i %></span>
                            </button>
                
                        </li>               
                        <% } %>
                    </ul>
                </div>
                <div class="arrow">
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
                        <div>상영관1</div>
                        <div class="theater1_time">
                            <div><a href="#">시간1</a></div>
                            <div><a href="#">시간2</a></div>
                            <div><a href="#">시간3</a></div>
                        </div>
                        <div class="theater1_time">
                            <div><a href="#">시간4</a></div>
                            <div><a href="#">시간5</a></div>
                            <div><a href="#">시간6</a></div>
                        </div>
                    </div>
                    <div id="theater2">
                        <div>상영관2</div>
                        <div class="theater2_time">
                            <div><a href="#">시간1</a></div>
                            <div><a href="#">시간2</a></div>
                            <div><a href="#">시간3</a></div>
                        </div>
                        <div class="theater2_time">
                            <div><a href="#">시간4</a></div>
                            <div><a href="#">시간5</a></div>
                            <div><a href="#">시간6</a></div>
                        </div>
                    </div>
                    <div id="theater3">
                        <div>상영관3</div>
                        <div class="theater3_time">
                            <div><a href="#">시간1</a></div>
                            <div><a href="#">시간2</a></div>
                            <div><a href="#">시간3</a></div>
                        </div>
                        <div class="theater3_time">
                            <div><a href="#">시간4</a></div>
                            <div><a href="#">시간5</a></div>
                            <div><a href="#">시간6</a></div>
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
                            <div class="seat_A" id="seat01"><a href="#">1</a></div>
                            <div class="seat_A" id="seat02"><a href="#">2</a></div>
                            <div></div>
                            <div class="seat_A" id="seat03"><a href="#">3</a></div>
                            <div class="seat_A" id="seat04"><a href="#">4</a></div>
                            <div class="seat_A" id="seat05"><a href="#">5</a></div>
                            <div class="seat_A" id="seat06"><a href="#">6</a></div>
                            <div class="seat_A" id="seat07"><a href="#">7</a></div>
                            <div class="seat_A" id="seat08"><a href="#">8</a></div>
                            <div></div>
                            <div class="seat_A" id="seat09"><a href="#">9</a></div>
                            <div class="seat_A" id="seat10"><a href="#">10</a></div>
                        </div>
                        <div class="seat" id="seat_B">
                            <div class="seatRow" id="B">B</div>
                            <div class="seat_B" id="seat01"><a href="#">1</a></div>
                            <div class="seat_B" id="seat02"><a href="#">2</a></div>
                            <div></div>
                            <div class="seat_B" id="seat03"><a href="#">3</a></div>
                            <div class="seat_B" id="seat04"><a href="#">4</a></div>
                            <div class="seat_B" id="seat05"><a href="#">5</a></div>
                            <div class="seat_B" id="seat06"><a href="#">6</a></div>
                            <div class="seat_B" id="seat07"><a href="#">7</a></div>
                            <div class="seat_B" id="seat08"><a href="#">8</a></div>
                            <div></div>
                            <div class="seat_B" id="seat09"><a href="#">9</a></div>
                            <div class="seat_B" id="seat10"><a href="#">10</a></div>
                        </div>
                        <div class="seat" id="seat_C">
                            <div class="seatRow" id="C">C</div>
                            <div class="seat_C" id="seat01"><a href="#">1</a></div>
                            <div class="seat_C" id="seat02"><a href="#">2</a></div>
                            <div></div>
                            <div class="seat_C" id="seat03"><a href="#">3</a></div>
                            <div class="seat_C" id="seat04"><a href="#">4</a></div>
                            <div class="seat_C" id="seat05"><a href="#">5</a></div>
                            <div class="seat_C" id="seat06"><a href="#">6</a></div>
                            <div class="seat_C" id="seat07"><a href="#">7</a></div>
                            <div class="seat_C" id="seat08"><a href="#">8</a></div>
                            <div></div>
                            <div class="seat_C" id="seat09"><a href="#">9</a></div>
                            <div class="seat_C" id="seat10"><a href="#">10</a></div>
                        </div>
                        <div class="seat" id="seat_D">
                            <div class="seatRow" id="D">D</div>
                            <div class="seat_D" id="seat01"><a href="#">1</a></div>
                            <div class="seat_D" id="seat02"><a href="#">2</a></div>
                            <div></div>
                            <div class="seat_D" id="seat03"><a href="#">3</a></div>
                            <div class="seat_D" id="seat04"><a href="#">4</a></div>
                            <div class="seat_D" id="seat05"><a href="#">5</a></div>
                            <div class="seat_D" id="seat06"><a href="#">6</a></div>
                            <div class="seat_D" id="seat07"><a href="#">7</a></div>
                            <div class="seat_D" id="seat08"><a href="#">8</a></div>
                            <div></div>
                            <div class="seat_D" id="seat09"><a href="#">9</a></div>
                            <div class="seat_D" id="seat10"><a href="#">10</a></div>
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
			<img src="http://file.koreafilm.or.kr/thm/02/00/01/14/tn_DPF000702.jpg" alt="벼랑 위의 포뇨" id="posterImg">
		</div>
        <div id="ticket-movieName">
            <span id="movieInfo"></span>
        </div>
        <div id="ticket-movieInfo">
            <table>
                <tbody>
                    <tr>
                        <td>일시</td>
                        <td><span id="dateInfo"></span><span></span></td>
                    </tr>
                    <tr>
                        <td>상영관</td>
                        <td>2관</td>
                    </tr>
                    <tr>
                        <td>인원</td>
                        <td>2명</td>
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
                        <td>C1, C2</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-payInfo">
            <table>
                <tbody>
                    <tr>
                        <td>총금액</td>
                        <td>24000원</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div id="ticket-payButton">
            <button type="button" onclick="window.location.href='/cinema/ticket/payment'">
                <i class="bi bi-check-circle-fill"></i>
                <span>결제 완료</span>
            </button>
        </div>
    </div>

    <footer>
        푸터영역

    </footer>
</body>
</html>