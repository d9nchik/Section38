<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 11.08.2020
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Addition Quiz</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
<form>
    <% ArrayList<Integer> list = new ArrayList<>();
        session.setAttribute("answers", list);
        Random random = new Random();
        for (int i = 0; i < 10; i++) {
            int a = random.nextInt(25) + 1;
            int b = random.nextInt(25) + 1;
            list.add(a + b); %>
    <label>
        <%=a%> + <%=b%> =
        <input type="number" min="0" max="50" required>
    </label><br>
    <% } %>
    <input type="submit" value="Submit"> Click the browser's refresh to get a new quiz
</form>
</body>
</html>
