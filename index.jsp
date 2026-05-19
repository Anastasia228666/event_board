<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Event Board</title></head>
<body>
<h2>Список заходів</h2>
<table border="1">
    <tr>
        <th>Назва</th>
        <th>Дата</th>
        <th>Вільних місць</th>
    </tr>
    <c:forEach var="event" items="${events}">
        <tr>
            <td>${event.title}</td>
            <td>${event.eventDate}</td>
            <td>${event.freeSeats} / ${event.maxSeats}</td>
        </tr>
    </c:forEach>
</table>

<h3>Створити новий захід</h3>
<form action="events" method="post">
    Назва: <input type="text" name="title" required><br>
    Дата: <input type="datetime-local" name="date" required><br>
    Місць: <input type="number" name="seats" required><br>
    <button type="submit">Додати</button>
</form>
</body>
</html>
