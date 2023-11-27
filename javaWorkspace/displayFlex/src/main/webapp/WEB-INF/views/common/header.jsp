<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/cinema/resources/css/header.css"> 
<script src="/cinema/resources/js/home.js"></script>
<script src="https://kit.fontawesome.com/08e9cd3338.js" crossorigin="anonymous"></script>

<header-area>
    <div>
       <img src="/cinema/resources/image/background/topbar.png" alt="topbar">
    </div>
    <div class="topMenu">
        <div>
            <a href="/cinema/home">
                <img src="/cinema/resources/image/background/newtroLogo.png" alt="logo">
            </a>
        </div>
        <div></div>
        <div class="search">
            <div>
                <button onclick="/cinema/home"><i class="fa-solid fa-magnifying-glass"></i></button>
                <input type="search" id="search" placeholder="검색어를 입력하세요.">
            </div>
        </div>
        <div class="icon">
            <button><i class="fa-solid fa-ticket"></i></button>
            <button><i class="fa-regular fa-user"></i></button>
            <button onclick="toggleMenu()"><i class="fa-solid fa-bars"></i></button>
        </div>
    </div>
    <div class="sideMenu">
        <ul>
            <li><button onclick="toggleMenuEnd()"><i class="fa-solid fa-bars"></i></button>마이페이지</li>
            <li>영화검색</li>
            <li>영화예매</li>
            <li>이벤트</li>
            <li>스토어</li>
            <li>공지사항</li>
            <li>고객센터</li>
            <li>우대사항</li>
        </ul>
    </div>
</header-area>

    
    
    
    
    
    
    