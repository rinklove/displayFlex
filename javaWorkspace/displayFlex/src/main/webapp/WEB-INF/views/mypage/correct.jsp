<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cinema/resources/css/mypage/correct.css">

</head>
<body>

  <%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="container">
<h1>회원정보 수정</h1>
<h3>회원님의 소중한 정보를 안전하게 관리하세요</h3>
<form id="signupForm">
    <table>
        <tbody>
            <tr>
                <td><label for="userid">아이디</label></td>
                <td>user**</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="password">비밀번호</label></td>
                <td><input type="password" id="password" name="password" required></td>
                <td><input type="submit" value="변경하기"></td>
                <td class="refer">비밀번호 변경 시 1개월간 변경 불가합니다.</td>
            </tr>
            <tr>
                <td><label for="nickname">닉네임</label></td>
                <td>nick**</td>
                <td><input type="submit" value="변경하기"></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="email">이메일주소</label></td>
                <td>dldncjfdla@naver.com</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="bornDate">생년월일</label></td>
                <td>****년 **월 **일</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><label for="phone">핸드폰번호</label></td>
                <td class="hi">010-****-****<br><div colspan="2" class="last">휴대전화번호는 본인 인증된 정보로 자동 적용 됩니다. </div><br><div class="last">휴대전화번호로 예매, 쿠폰, 이벤트 등 제공받으실 수 있습니다.</div></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
    </table>
    <br><br>
    <button type="button" onclick="/cinema/mypage/main">정보수정</button>
</form>
</div>
<footer></footer>
</body>
</html>