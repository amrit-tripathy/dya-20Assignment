<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Order</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        max-width: 500px;
        margin: 0 auto;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }

    input[type="number"],
    input[type="date"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 4px;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<h1>Update Order</h1>
<form action="updateOrder" method="post">
    <label for="id">Order ID:</label>
    <input type="number" id="id" name="id" min="1" required>
    <br><br>
    
    <label for="order_date">Order Date:</label>
    <input type="date" id="order_date" name="order_date" required>
    <br><br>
    
    <label for="total_amount">Total Amount:</label>
    <input type="number" id="total_amount" name="total_amount" min="0" step="0.01" required>
    <br><br>
    
    <input type="submit" value="Update Order">
</form>
</body>
</html>
