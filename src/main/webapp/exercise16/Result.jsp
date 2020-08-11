<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 11.08.2020
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Your BirthDate</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<p>
    <% int result =0;
    for(int i = 1; i <= 5; i++) {
      String parameter = request.getParameter(i+"");
      if (parameter!=null){
          result+=Integer.parseInt(parameter);
      }
    }%>
    Your birth date is <%=result%>
</p>
</body>
</html>
