<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 09.08.2020
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="timeBeanId" scope="application" class="templates.TimeBean"/>
<jsp:setProperty name="timeBeanId" property="*"/>
<html>
<head>
    <title>Display Time</title>
</head>
<body>
<h1>Current time</h1>
<p><%=timeBeanId.currentTimeString()%>
</p>
</body>
</html>
