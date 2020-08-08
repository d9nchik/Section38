<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 08.08.2020
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="templates.Loan" %>
<html>
<head>
    <title>Compute Loan using Loan class</title>
</head>
<body>
<% double loanAmount = Double.parseDouble(
        request.getParameter( "loanAmount" ));
    double annualInterestRate = Double.parseDouble(
            request.getParameter( "annualInterestRate" ));
    int numberOfYears = Integer.parseInt(
            request.getParameter( "numberOfYears" ));
    Loan loan =
            new Loan(annualInterestRate, numberOfYears, loanAmount);
%>
<table>
    <tr>
        <td>Loan Amount:</td>
        <td><%= loanAmount %>
        </td>
    </tr>
    <tr>
        <td>Annual Interest Rate:</td>
        <td><%= annualInterestRate %>
        </td>
    </tr>
    <tr>
        <td>Number of Years:</td>
        <td><%= numberOfYears %>
        </td>
    </tr>
    <tr>
        <td>Monthly Payment:</td>
        <td><%= loan.getMonthlyPayment() %>
        </td>
    </tr>
    <tr>
        <td>Total Payment:</td>
        <td><%= loan.getTotalPayment() %>
        </td>
    </tr>
</table>
</body>
</html>
