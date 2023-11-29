<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/find/idFind.css">

</head>
<body>
  <%@ include file="/WEB-INF/views/common/header.jsp" %>
  <div class="main">
    <div class="container">
      <div class="container-first"><img src="/cinema/resources/image/find/1.svg" alt=""></div>
      <div class="container-second">아이디/비밀번호 찾기</div>
      <div class="container-third">
        <div class="b1">아이디 찾기</div>
        <div class="b2">비밀번호 찾기</div>
      </div>
      <div class="container-fourth">간편찾기</div>
      <div class="container-fifth">
        <table>
            <tr style="border-top: 3px solid black;">
              <td>이름</td>
              <td><input type="text" placeholder="이름"></td>
            </tr>
            <tr>
              <td>생년월일</td>
              <td><input type="text" placeholder="생년월일"></td>
             </tr>
            <tr>
              <td>핸드폰번호</td>
              <td><input type="phone" placeholder="핸드폰번호"></td>
            </tr>
        </table>
      </div>
      <div class="container-sixth">※ 휴대폰 번호를 잃어버리셨다면 고객센터를 문의 바랍니다.</div>
      <div><button type="submit">아이디 찾기</button></div>
    </div>
    <footer></footer>
      
  
</body>
</html>

</body>
</html>