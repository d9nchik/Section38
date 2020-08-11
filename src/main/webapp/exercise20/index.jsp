<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 11.08.2020
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="guessNumber" class="exercise20.GuessNumber" scope="session"/>
<html>
<head>
    <title>Guess Number</title>
</head>
<body>
<h1>Guess numbers</h1>

<% if (request.getParameterMap().size() == 1) {%>
<p>Computer say: "<%=guessNumber.guessNumber(Integer.parseInt(request.getParameter("guess")))%>"</p>
<%}%>
<form method="post">

    <label>
        Your number
        <input name="guess" type="number" min="0" max="1000" required>
    </label><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
