<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calendar</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            text-align: center;
        }

        .calendar {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 5px;
            max-width: 500px;
            margin: 0 auto;
        }

        .day {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        .day.weekend {
            background-color: #f2f2f2;
        }

        .event {
            background-color: #4CAF50;
            color: white;
            padding: 5px;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <h1>Simple Calendar</h1>
    <div class="calendar">
        <div class="day">Sun</div>
        <div class="day">Mon</div>
        <div class="day">Tue</div>
        <div class="day">Wed</div>
        <div class="day">Thu</div>
        <div class="day">Fri</div>
        <div class="day">Sat</div>
        <c:forEach var="day" items="${calendar}">
            <div class="day ${day.weekend ? 'weekend' : ''}">
                ${day.dayOfMonth}
                <c:if test="${not empty day.events}">
                    <c:forEach var="event" items="${day.events}">
                        <div class="event">${event.title}</div>
                    </c:forEach>
                </c:if>
            </div>
        </c:forEach>
    </div>
</body>
</html>
