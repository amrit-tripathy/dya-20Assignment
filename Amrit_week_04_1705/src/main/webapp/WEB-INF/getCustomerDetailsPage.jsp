<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
    }
    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin-top:80px;
    }
    .detail {
        font-size: 18px;
        line-height: 1.6;
        margin-bottom: 10px;
    }
    .label {
        font-weight: bold;
        color: #333;
    }
    .value {
        color: #555;
    }
</style>
</head>
<body>
<div class="container">
    <p class="detail"><span class="label">Your ID:</span> <span class="value">${custid}</span></p>
    <p class="detail"><span class="label">Name:</span> <span class="value">${name}</span></p>
    <p class="detail"><span class="label">Email:</span> <span class="value">${email}</span></p>
    <p class="detail"><span class="label">Password:</span> <span class="value">${password}</span></p>
</div>
</body>
</html>
