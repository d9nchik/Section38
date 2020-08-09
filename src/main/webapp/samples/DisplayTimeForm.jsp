<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 09.08.2020
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="timeBeanId" class="templates.TimeBean" scope="application"/>
<html>
<head>
    <title>Display Time Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
<h1>Choose locale and time zone</h1>
<form method="post" action="DisplayTime.jsp ">
    <label>
        Locale
        <select size="1" name="localeIndex">
            <% for (int i = 0; i < timeBeanId.getAllLocale().length; i++) {%>
            <option value="<%= i %>">
                <%= timeBeanId.getAllLocale()[i] %>
            </option>
            <%}%>
        </select>
    </label><br>

    <label>
        Time Zone
        <select size="1" name="timeZoneIndex">
            <% for (int i = 0; i < timeBeanId.getZones().length; i++) {%>
            <option value="<%= i %>">
                <%= timeBeanId.getZones()[i] %>
            </option>
            <%}%>
        </select>
    </label><br/>

    <input type="submit" name="Submit"
           value="Get Time"/>
    <input type="reset" value="Reset"/>
</form>
</body>
</html>
