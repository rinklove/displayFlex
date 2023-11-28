<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/member/login.css">

</head>
<body>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

    <nav></nav>
    <div id="wrap">
        <form action="/cinema/views/home">
            <div id="loginArea">
                <div><label for="loginPage"><input type="text" id="loginPage" placeholder="로그인 페이지"></label></div>
                <br>
                <div><input type="text" name="memberId" id="memberId" placeholder="아이디"></div>
                <br>
                <div><input type="password" name="memberPwd" id="memberPwd" placeholder="비밀번호"></div>
                <br>
                <div class="check-box">
                    <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">아이디 저장</label></div>
                  <br>
                  <div><input type="submit" value="로그인" id="logincheck"></div>
            </div>
    </div>

</body>
</html>