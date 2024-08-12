<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Order</title>
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
        max-width: 500px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    label {
        font-size: 16px;
        color: #555;
    }

    input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
    }

    button {
        background-color: #dc3545;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color: #c82333;
    }

    button:active {
        background-color: #bd2130;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Delete Order</h1>

    <form action="deleteOrder" method="post">
        <label for="id">Order ID:</label>
        <input type="number" id="id" name="id" min="1" required>
        <button type="submit">Delete Order</button>
    </form>
</div>

</body>
</html>
