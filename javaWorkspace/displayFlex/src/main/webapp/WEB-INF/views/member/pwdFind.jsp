<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/find/pwdFind.css">

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
              <td>아이디</td>
              <td><input type="text" placeholder="아이디"></td>
            </tr>
            <tr>
              <td>이름</td>
              <td><input type="text" placeholder="이름"></td>
            </tr>
            <tr>
              <td>휴대폰번호</td>
              <td><input type="phone" placeholder="-포함 13자리"><button style="width: 100px; height: 35px;">인증요청</button></td>
             </tr>
            <tr>
              <td>인증번호</td>
              <td><input type="number" placeholder="6자리"><button style="width: 100px; height: 35px;">인증완료</button></td>
            </tr>
        </table>
      </div>
      <div class="container-sixth">※ 휴대폰 번호가 변경되었다면 고객센터로 문의 바랍니다.</div>
      <div class="container-seventh"><button type="submit">비밀번호 찾기</button></div>
    </div>
    <footer></footer>
      
  
</body>
</html>

</body>
</html>