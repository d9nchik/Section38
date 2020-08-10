<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 10.08.2020
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Show Cookies</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Value</th>
    </tr>
    <% Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) { %>
    <tr>
        <td><%=cookie.getName()%>
        </td>
        <td><%=cookie.getValue()%>
        </td>
    </tr>
    <% } %>
</table>

</body>
</html>
