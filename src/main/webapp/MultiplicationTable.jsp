<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 10.08.2020
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Factorial</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<table>
    <tr>
        <th></th>
        <% for (int k = 1; k < 10; k++) {%>
        <th><%=k%>
        </th>
        <%}%>
    </tr>
    <% for (int i = 1; i < 10; i++) {%>
    <tr>
        <td><%=i%>
        </td>
        <% for (int j = 1; j < 10; j++) {%>
        <td><%=i * j%>
        </td>
        <%}%>
    </tr>
    <%}%>
</table>
</body>
</html>
