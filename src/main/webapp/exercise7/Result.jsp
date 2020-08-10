<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 10.08.2020
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="passwordChangerID" class="exercise7.PasswordChanger" scope="application"/>
<jsp:setProperty name="passwordChangerID" property="*"/>

<!DOCTYPE html>
<html>
<head>
    <title>Password changed</title>
</head>
<body>
<% if (passwordChangerID.isPasswordRetypedCorrectly() && passwordChangerID.userExist() && passwordChangerID.update()) {%>
<h1>Password successfully changed!</h1>
<% } else {%>
<jsp:forward page="index.html"/>
<%}%>
</body>
</html>

