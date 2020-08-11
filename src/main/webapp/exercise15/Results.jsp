<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 11.08.2020
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Results</title>
</head>
<body>
<% ArrayList<Integer> aS = (ArrayList<Integer>) session.getAttribute("a");
    ArrayList<Integer> bS = (ArrayList<Integer>) session.getAttribute("b");
    if (aS == null || aS.size() != request.getParameterMap().size()) {%>
<%
} else {
    for (int i = 0; i < aS.size(); i++) {
        int a = aS.get(i);
        int b = bS.get(i);
        int c = a - b;
        int userAnswer = Integer.parseInt(request.getParameter("" + i));%>
<p><%=a%> - <%=b%> = <%=userAnswer%>
    <% if (userAnswer == c) {%>
    Correct
    <% } else {%>
    Wrong
    <%}%>
</p>
<%}%>
<%}%>
</body>
</html>
