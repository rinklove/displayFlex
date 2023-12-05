<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/member/join.css">

</head>
<body>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="container">
    <h1>DISPLAY FLEX 회원가입</h1>
  
    <form action="/cinema/member/join" method="post" onsubmit="return validateForm();">
    <table>
        <tbody>
        	<tr>
                <td><label for="gradeNo">회원등급</label></td>
                <td><input type="text" id="gradeNo" name="gradeNo" required></td>
            </tr>
            <tr>
                <td><label for="userid">아이디</label></td>
                <td><input type="text" id="memberId" name="memberId" placeholder="영문, 숫자 조합(6~12자)" required></td>
            </tr>
            <tr>
                <td><label for="password">비밀번호</label></td>
                <td><input type="password" id="memberPwd" name="memberPwd" placeholder="영문, 숫자, 특수문자 조합(10~16자)" required></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="MemberPwd2">비밀번호 확인</label></td>
                <td><input type="password" id="memberPwd2" name="memberPwd2" placeholder="영문, 숫자, 특수문자 조합(10~16자)" required></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="nickname">닉네임</label></td>
                <td><input type="text" id="memberNick" name="memberNick" placeholder="한글, 영문, 숫자 가능(2~8자)" required></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="memberName">이름</label></td>
                <td><input type="text" id="memberName" name="memberName" required></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="registerNo">주민등록번호</label></td>
                <td><input type="text" id="registerNo" name="registerNo" required></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="memberPhoneNum">핸드폰번호</label></td>
                <td><input type="text" id="memberPhoneNum" name="memberPhoneNum"></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="memberEmail">이메일 주소</label></td>
                <td><input type="text" id="memberEmail" name="memberEmail"></td>
                <td></td>
            </tr>
        </tbody>
    </table>
    
    <div id="message">
        <p class="invalid">비밀번호는 다음 조건을 충족해야 합니다:</p>
        <ul>
            <li id="length" class="invalid">8자 이상</li>
            <li id="uppercase" class="invalid">최소한 1개의 대문자</li>
            <li id="number" class="invalid">최소한 1개의 숫자</li>
            <li id="match" class="invalid">비밀번호 일치</li>
        </ul>
    </div>
    <br>
    <input type="submit" value="회원가입">
</form>
</div>
   <footer></footer>
<script>
function validateForm() {
    var password = document.getElementById("memberPwd");
    var message = document.getElementById("message");

    // 비밀번호 길이 체크
    var length = password.value.length >= 8;
    document.getElementById("length").classList.toggle("valid", length);
    document.getElementById("length").classList.toggle("invalid", !length);

    // 대문자 포함 여부 체크
    var uppercase = /[A-Z]/.test(memberPwd.value);
    document.getElementById("uppercase").classList.toggle("valid", uppercase);
    document.getElementById("uppercase").classList.toggle("invalid", !uppercase);

    // 숫자 포함 여부 체크
    var number = /\d/.test(memberPwd.value);
    document.getElementById("number").classList.toggle("valid", number);
    document.getElementById("number").classList.toggle("invalid", !number);

    // 비밀번호 일치 여부 체크
    var match = memberPwd.value === memberPwd.value;
    document.getElementById("match").classList.toggle("valid", match);
    document.getElementById("match").classList.toggle("invalid", !match);

    // 메시지 표시 여부 결정
    message.style.display = length && uppercase && number && match ? "none" : "block";
}
</script>
</body>
</html>