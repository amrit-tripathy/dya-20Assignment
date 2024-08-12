<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        background-color: #fff;
    }

    thead {
        background-color: #007bff;
        color: #fff;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e9ecef;
    }

    h1 {
        text-align: center;
        color: #333;
    }
</style>
</head>
<body>
<h1>Order List</h1>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Date</th>
            <th>Total Amount</th>
            <th>Customer ID</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="order" items="${ordList}">
            <tr>
                <td><c:out value="${order.id}" /></td>
                <td><c:out value="${order.orderDate}" /></td>
                <td><c:out value="${order.totalAmount}" /></td>
                <td><c:out value="${order.customerId}" /></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
