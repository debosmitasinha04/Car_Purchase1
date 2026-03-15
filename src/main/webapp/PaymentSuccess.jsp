<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Payment Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.15);
            text-align: center;
            width: 400px;
        }

        h2 {
            color: #2e8b57;
            margin-bottom: 15px;
        }

        p {
            font-size: 16px;
            margin: 5px 0;
            color: #555;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: white;
            background: #4CAF50;
            padding: 10px 18px;
            border-radius: 8px;
            transition: 0.3s;
        }

        a:hover {
            background: #388e3c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Payment Successful!</h2>
       
        <a href="explore.jsp">← Back to Home</a>
    </div>
</body>
</html>
