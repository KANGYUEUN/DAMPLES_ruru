<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<c:set value="20230728-000" var="version" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>담양 여행의 시작 DAMPLES</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css?${version}">
<link rel="stylesheet" href="${rootPath}/static/css/nav.css?${version}">
<link rel="stylesheet"
	href="${rootPath}/static/css/mapnav.css?${version}">
<link rel="stylesheet" href="${rootPath}/static/css/map.css?${version}">
<link rel="stylesheet"
	href="${rootPath}/static/css/event.css?${version}">
<link rel="stylesheet"
	href="${rootPath}/static/css/main_tourlist.css?${version}">
<link rel="stylesheet"
	href="${rootPath}/static/css/scroll_btn.css?${version}">
	
<script>
	// JS 파일에서 rootPath 정보를 
	// 사용할수 있도록 전역(global) 변수로 선언
	var rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/main_nav.js"></script>
<script src="${rootPath}/static/js/main_map.js"></script>
<script src="${rootPath}/static/js/scroll.js"></script>
</head>

<body>
	<header>
		<p>담양 HOT PLACE!</p>
		<h1>DAMPLES</h1>
		<%@ include file="/WEB-INF/views/tour/nav.jsp"%>
	</header>
	<div class="container">
		<%@ include file="/WEB-INF/views/tour/mapnav.jsp"%>
		<%@ include file="/WEB-INF/views/tour/map.jsp"%>
		<%@ include file="/WEB-INF/views/tour/event.jsp"%>
		<%@ include file="/WEB-INF/views/tour/main_tourlist.jsp"%>
		<button class="scroll">Top</button>
	</div>
</body>
</html>

