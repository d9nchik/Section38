<%@ page import="exercise13.AddVotes" %><%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 11.08.2020
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="questions" class="exercise13.Questions" scope="application"/>
<jsp:useBean id="addVotes" class="exercise13.AddVotes" scope="application"/>
<html>
<head>
    <title>Vote Result</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<h1>Vote Results</h1>
<% String[] strings = questions.getQuestion();
    if (strings.length != request.getParameterMap().size()) {
%>
<p>Your data is corrupted</p>
<%} else {%>
<table>
    <tr>
        <th>Question</th>
        <th>Yes Count</th>
        <th>No Count</th>
    </tr>
    <%
        for (int i = 0; i < strings.length; i++) {
            final String question = strings[i];
            AddVotes.YesNoCounts yesNoCounts = addVotes.getYesNoCounts(question);
            int yes = yesNoCounts.getYes();
            int no = yesNoCounts.getNo();
            if (Boolean.parseBoolean(request.getParameter(i + "")))
                ++yes;
            else
                ++no;
            addVotes.update(yes, no, question);
    %>
    <tr>
        <td><%=question%>
        </td>
        <td><%=yes%>
        </td>
        <td><%=no%>
        </td>
    </tr>
    <% } %>
    <% } %>
</table>
</body>
</html>
