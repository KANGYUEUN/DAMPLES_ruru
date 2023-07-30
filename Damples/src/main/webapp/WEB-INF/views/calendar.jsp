<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css?">
<link rel="stylesheet" href="${rootPath}/static/css/nav.css?">
<link rel="stylesheet" href="${rootPath}/static/css/calendar.css">
</head>
<body>
	<header>
		<p>담양 HOT PLACE!</p>
		<h1>DAMPLES</h1>
		<%@ include file="/WEB-INF/views/tour/nav.jsp"%>
	</header>
	<div class="container calendar" >
	
	<div id="calendarContainer">
		<h2>Calendar</h2>
		<button onclick="prevMonth()">Previous Month</button>
		<span id="currentMonthYear">${year}년 ${month}월</span>
		<button onclick="nextMonth()">Next Month</button>

		<br> <br>

		<table>
			<tbody class="calendarhead">
				<tr>
					<th>일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</tbody>

			<tbody id="calendarBody">
			</tbody>
		</table>
		<!-- 담양군 문화재단 배너 -->
		<div id="banner">
			<a href="https://www.damyangcf.or.kr/user/sub404010">
				<p>담양군 문화재단 : 문화달력 >> click
			</a>
		</div>
	</div>
	</div>
	<script>
		// JS 파일에서 rootPath 정보를 
		// 사용할수 있도록 전역(global) 변수로 선언
		var rootPath = "${rootPath}"
		var currentYear = "${year}";
		var currentMonth = "${month}";
		var allMonthEvents = JSON.parse(`${allMonthEventsJson}`)
	</script>
	<script src="${rootPath}/static/js/calendar.js"></script>
</body>
</html>

