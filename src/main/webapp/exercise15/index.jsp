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
    <title>Subtraction Quiz</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
<form method="post" action="Results.jsp">
    <% ArrayList<Integer> aS = new ArrayList<>();
        ArrayList<Integer> bS = new ArrayList<>();

        session.setAttribute("a", aS);
        session.setAttribute("b", bS);

        Random random = new Random();
        for (int i = 0; i < 10; i++) {
            int a = random.nextInt(25) + 1;
            int b = random.nextInt(25) + 1;
            if (a < b) {
                int temp = a;
                a = b;
                b = temp;
            }
            aS.add(a);
            bS.add(b);
    %>
    <label>
        <%=a%> - <%=b%> =
        <input name="<%=i%>" type="number" min="0" max="50" required>
    </label><br>
    <% } %>
    <input type="submit" value="Submit"> Click the browser's refresh to get a new quiz
</form>
</body>
</html>
