<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 08.08.2020
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="count" scope="application" class="templates.Count"/>
<html>
<head>
    <title>TestBeanScope</title>
</head>
<body>
<h1>Testing Bean Scope in JSP (Application</h1>
<p><%count.increaseCount();%>
    You are visitor number <%= count.getCount() %><br>
    From host: <%= request.getRemoteHost() %>
    and session: <%= session.getId() %>
</p>
</body>
</html>
