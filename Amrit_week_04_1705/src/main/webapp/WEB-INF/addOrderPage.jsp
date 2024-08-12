<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Order</title>
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

    .form-container {
        max-width: 500px;
        margin: 0 auto;
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
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
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
        display: block;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    input[type="submit"]:active {
        background-color: #004085;
    }
</style>
</head>
<body>
<h1>Add Order</h1>

<div class="form-container">
    <form action="addOrder" method="post">
        <label for="id">Order ID:</label>
        <input type="number" id="id" name="id" min="1" required>
        
        <label for="order_date">Order Date:</label>
        <input type="date" id="order_date" name="order_date" required>
        
        <label for="total_amount">Total Amount:</label>
        <input type="number" id="total_amount" name="total_amount" min="0" required>
        
        <input type="submit" value="Add Order">
    </form>
</div>
</body>
</html>
