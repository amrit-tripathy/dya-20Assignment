<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
            margin: 0;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .form-container {
            text-align: center;
            margin: 20px;
        }

        form {
            display: inline-block;
            margin: 10px;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        button:active {
            background-color: #004085;
        }
    </style>
</head>
<body>
    <h2>Welcome to My App!</h2>
    <div class="form-container">
        <form action="login">
            <button type="submit">Login</button>
        </form>
        <form action="signup">
            <button type="submit">Sign Up</button>
        </form>
    </div>
</body>
</html>
