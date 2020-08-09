<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 08.08.2020
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="factorial" class="templates.Factorial"/>
<jsp:setProperty name="factorial" property="*"/>
<!DOCTYPE html>
<html>
<head>
    <title>Factorial</title>
</head>
<body>
<h1>Compute Factorial Using</h1>
<form method="post">
    <label>Enter new value:
        <input name="number" type="number" min="0">
    </label><br>
    <input type="submit" name="Submit"
           value="Compute Factorial">
    <input type="reset" value="Reset"/><br>
</form>
<p>Factorial of
    <jsp:getProperty name="factorial" property="number"/>
    is <%=factorial.getFactorial()%>
</p>

</body>
</html>
