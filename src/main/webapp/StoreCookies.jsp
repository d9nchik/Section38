<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 10.08.2020
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Store cookies</title>
</head>
<body>
<% int TWO_DAYS = 2 * 24 * 60 * 60;
    final Cookie color = new Cookie("color", "red");
    color.setMaxAge(TWO_DAYS);
    response.addCookie(color);
    final Cookie radius = new Cookie("radius", "5.5");
    radius.setMaxAge(TWO_DAYS);
    response.addCookie(radius);
    final Cookie count = new Cookie("count", "2");
    count.setMaxAge(TWO_DAYS);
    response.addCookie(count); %>
<h1>Cookie has been installed</h1>
</body>
</html>
