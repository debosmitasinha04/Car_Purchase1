<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Booking Result</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: url('images/car-background.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            text-align: center;
            padding-top: 100px;
        }
        .result-box {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 40px;
            border-radius: 10px;
            display: inline-block;
        }
        h1 {
            font-size: 32px;
            margin-bottom: 20px;
        }
        .message {
            font-size: 20px;
            color: #00ffcc;
        }
        a {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #00ffcc;
            color: #000;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #00ccaa;
        }
    </style>
</head>
<body>
    <div class="result-box">
        <h1>Car Booking Status</h1>
        <a href="Payment.jsp">Payment</a>
    </div>
</body>
</html>
