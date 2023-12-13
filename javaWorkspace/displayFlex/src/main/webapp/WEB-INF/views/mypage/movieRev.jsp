<%@page import="displayFlex.mypage.vo.PageVo"%>
<%@page import="displayFlex.mypage.MoviePaymentVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        
 <%
    	List<MoviePaymentVo> moviePaymentVoList = (List<MoviePaymentVo>) request.getAttribute("moviePaymentVoList");
    	PageVo pvo = (PageVo)request.getAttribute("pvo");
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/mypage/movieRev.css">

</head>
<body>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

	<div class="container">
		<div class="main">
			<div class="main-first">□ 결제/예매내역 목록</div>
			<div class="main-second">이우철님의 지난 3개월동안 예매한 영화티켓 내역입니다.</div>
			<div class="main-third">
				<div class="main-third-t1">조회기간 선택</div>
				<div class="main-third-t2">
				     <form method="get" action="/cinema/mypage/movieRev">
				        <input type="hidden" name="pno" value="<%= pvo.getCurrentPage() %>">
				        <button type="submit" name="dateFilter" value="7days">7일</button>
				        <button type="submit" name="dateFilter" value="15days">15일</button>
				        <button type="submit" name="dateFilter" value="30days">30일</button>
				        <button type="submit" name="dateFilter" value="custom">직접설정</button>
				    </form>
				</div>
				<div class="main-third-t3">
				<div>예매일자별</div>
					<form>
				        <input type='date' name='startDate' id='startDate'/>
				        <div>~</div>
				        <input type='date' name='endDate' id='endDate'/>
				        <button type="submit" name="dateFilter" value="custom">조회</button>
				    </form>
				</div>
			</div>
			<div>
			<table border="1">
				<thead>
					<tr>
						<td>결제번호</td>
						<td>회원번호</td>
						<td>영화이름</td>
						<td>결제일시</td>
						<td>결제금액</td>
					</tr>
				 <tbody>
				 <% for(MoviePaymentVo vo : moviePaymentVoList){ %>
					<tr>
						<td><%= vo.getPaymentsNo() %></td>
						<td><%= vo.getMemberNo() %></td>
						<td><%= vo.getMovieName() %></td>
						<td><%= vo.getPaymentDate() %></td>
						<td><%= vo.getPrice() %></td>
					</tr>
				<% } %>	
				 </tbody>
				</thead>
			</table>
			</div>
			<div>
			
			<div class="page-area">
			
			<% if(pvo.getStartPage() != 1){ %>
				<a href="/cinema/mypage/movieRev?pno=<%= pvo.getStartPage()-1 %>">이전</a>
			<% } %>
			
			<% for(int i = pvo.getStartPage() ; i <= pvo.getEndPage(); i++){ %>
				
				<% if( i == pvo.getCurrentPage() ){ %>
					<span><%= i %></span>
				<% }else{ %>
					<a href="/cinema/mypage/movieRev?pno=<%= i %>"><%= i %></a>
				<% } %>
				
			<% } %>
			
			<% if( pvo.getEndPage() != pvo.getMaxPage() ){ %>
				<a href="/cinema/mypage/movieRev?pno=<%= pvo.getEndPage()+1 %>">다음</a>	
			<% } %>
		
		</div>
			
			</div>
		</div>
	</div>	

</body>
</html>

<script>

  document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);;
  
  const trArr = document.querySelectorAll("table > tbody > tr");
	for(let i = 0 ; i < trArr.length; ++i){
		trArr[i].addEventListener('click' , (e) => {
			handleClick(e);
		});
	}

	function handleClick(event){
		const tr = event.currentTarget;
		const no = tr.children[0].innerText;
		location.href = 'http://localhost:9002/cinema/mypage/movieRev?paymentsNo=' + no + '&currentPage=<%= pvo.getCurrentPage() %>';	
	}
  
  </script>
  