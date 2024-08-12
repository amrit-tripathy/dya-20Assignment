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
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }

    .container-orders, .container-customers {
        margin-bottom: 20px;
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

    /* Log Out button at the top right */
    .logout-btn {
        position: absolute;
        top: 20px;
        right: 20px;
    }

    /* Optional: Add some space between forms */
    form + form {
        margin-top: 10px;
    }
</style>
</head>
<body>

<!-- Log Out Button -->
<form action="gobacktologin" class="logout-btn">
    <button type="submit">Log Out</button>
</form>

<!-- Orders Container -->
<div class="container container-orders">
    <h1>Order Management</h1>

    <form action="addOrder" method="get">
        <button type="submit">Add Order</button>
    </form>

    <form action="getallOrdersCust" method="post">
        <button type="submit">Get All Orders</button>
    </form>

    <form action="updateOrder" method="get">
        <button type="submit">Update Order</button>
    </form>

    <form action="deleteOrder" method="get">
        <button type="submit">Delete Order</button>
    </form>

    <form action="getOrderByid" method="get">
        <button type="submit">Get Order by ID</button>
    </form>
</div>

<!-- Customers Container -->
<div class="container container-customers">
    <h1>Customer Management</h1>

    <form action="updateCustomer" method="get">
        <button type="submit">Update Your Profile</button>
    </form>

    <form action="getCustomerDetails" method="get">
        <button type="submit">Get Your Profile Details</button>
    </form>
</div>

</body>
</html>
