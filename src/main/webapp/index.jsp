<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.time.LocalTime" %>

<%
    String name = "Manzar";
    String timeParam = request.getParameter("time");
    String greeting;

    if ("morning".equalsIgnoreCase(timeParam)) {
        greeting = "Good morning";
    } else if ("afternoon".equalsIgnoreCase(timeParam)) {
        greeting = "Good afternoon";
    } else {
        LocalTime now = LocalTime.now();
        greeting = now.isBefore(LocalTime.NOON) ? "Good morning" : "Good afternoon";
    }
%>

<html>
<body>
    <h1><%= greeting %>, <%= name %>, Welcome to COMP367</h1>
</body>
</html>