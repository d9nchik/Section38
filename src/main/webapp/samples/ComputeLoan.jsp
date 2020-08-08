<%--
  Created by IntelliJ IDEA.
  User: d9nich
  Date: 08.08.2020
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ComputeLoan</title>
</head>
<body>
<% double loanAmount = Double.parseDouble(
        request.getParameter("loanAmount"));
    double annualInterestRate = Double.parseDouble(
            request.getParameter("annualInterestRate"));
    double numberOfYears = Integer.parseInt(
            request.getParameter("numberOfYears"));
    double monthlyInterestRate = annualInterestRate / 1200;
    double monthlyPayment = loanAmount * monthlyInterestRate /
            (1 - 1 / Math.pow(1 + monthlyInterestRate, numberOfYears * 12));
    double totalPayment = monthlyPayment * numberOfYears * 12; %>
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
        <td><%= monthlyPayment %>
        </td>
    </tr>
    <tr>
        <td>Total Payment:</td>
        <td><%= totalPayment %>
        </td>
    </tr>
</table>
</body>
</html>
