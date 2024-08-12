<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        max-width: 400px;
        margin: 0 auto;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
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

    .error {
        color: red;
        font-size: 14px;
        margin-top: -10px;
        margin-bottom: 10px;
    }
</style>
</head>
<body>
<h1>Login</h1>
<form action="loginverify" method="post" onsubmit="return validateForm()">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <br><br>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <br><br>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br><br>
    
    <input type="submit" value="Login">
</form>
<script>
function validateForm() {
    let email = document.getElementById('email').value;
    
    
    let emailPattern = /^[A-Za-z]+@[A-Za-z]+\.[A-Za-z]{2,}$/;
   

    if (!emailPattern.test(email)) {
        alert("Please enter a valid email address in the format 'name@domain.com'.");
        return false;
    }

   
    
    return true;
}
</script>
</body>
</html>
