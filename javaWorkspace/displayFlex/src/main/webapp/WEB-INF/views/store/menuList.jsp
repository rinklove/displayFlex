<%@page import="displayFlex.store.vo.StoreVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script defer src="/cinema/resources/js/store/menuList.js"></script>
<%
	StoreVo vo = (StoreVo)request.getAttribute("vo");
%>

<c:forEach items="${vo}" var="vo">
	<div>
		<a href="/cinema/store/product">
		<img src="${vo.image}" alt="product" width="200" height="200">
		<br>
		<span id="first"><b>${vo.title}</b></span>
		</a>
		<br>
		<span id="second">${vo.productElement}</span>
		<br>
		<br>
		<span id="third"><b>${vo.price}</b></span>
	</div>
</c:forEach>