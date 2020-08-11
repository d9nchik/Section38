<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 11.08.2020
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="questions" class="exercise13.Questions" scope="application"/>
<!DOCTYPE html>
<html>
<head>
    <title>Vote</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<form method="post" action="Result.jsp">
    <% String[] string = questions.getQuestion();
        for (int i = 0; i < string.length; i++) {%>
    <label>
        <%=string[i]%>
        <input type="radio" name="<%=i%>" value="true" required>YES
        <input type="radio" name="<%=i%>" value="false">NO
    </label><br>
    <%}%>
    <input type="submit" value="Send">
    <input type="reset" value="Reset">
</form>
</body>
</html>
