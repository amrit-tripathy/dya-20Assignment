<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    .container {
        max-width: 600px;
        margin: 0 auto;
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    form {
        margin: 20px 0;
        text-align: center;
    }

    button {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin: 5px;
    }

    button:hover {
        background-color: #0056b3;
    }

    button:active {
        background-color: #004085;
    }

    p {
        text-align: center;
        font-size: 18px;
        color: #333;
        font-weight: bold;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Admin Dashboard</h1>

    <form action="getallCustomers">
        <button type="submit">Get all Customers</button>
    </form>

    <form action="getallOrders">
        <button type="submit">Get All Orders</button>
    </form>

    <form action="calTotalRevenue">
        <button type="submit">Total Revenue</button>
    </form>

    <p>${total}</p>

    <form action="gobacktologin">
        <button type="submit">Go Back</button>
    </form>
</div>

</body>
</html>
