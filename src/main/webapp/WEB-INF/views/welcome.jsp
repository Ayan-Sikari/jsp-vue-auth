<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
        }

        .glass-card {
            width: 420px;
            padding: 30px;
            border-radius: 16px;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            color: #fff;
            text-align: center;
        }

        h1 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        h2 {
            font-size: 18px;
            margin-bottom: 20px;
            font-weight: 400;
        }

        p {
            font-size: 16px;
            margin: 10px 0;
        }

        b {
            color: #ffd369;
        }

        hr {
            border: none;
            height: 1px;
            background: rgba(255, 255, 255, 0.3);
            margin: 15px 0 20px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 22px;
            text-decoration: none;
            color: #fff;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.2);
            transition: 0.3s;
        }

        a:hover {
            background: rgba(255, 255, 255, 0.35);
        }
    </style>
</head>

<body>

<div class="glass-card">
    <h1>User Authentication System</h1>
    <hr>
    <h2>Welcome</h2>

    <p>
        Hi, your username is <b>${username}</b>
    </p>

    <p>
        Your role is <b>${role}</b>
    </p>

    <a href="/">Logout</a>
</div>

</body>
</html>
