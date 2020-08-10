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
        <th>Number</th>
        <th>Factorial</th>
    </tr>
    <% int factorial = 1;
        for (int i = 0; i < 10; i++) {%>
    <tr>
        <td><%=i%>
        </td>
        <td><%=factorial%>
        </td>
    </tr>
    <%
            factorial *= (i + 1);
        }
    %>
</table>
</body>
</html>
