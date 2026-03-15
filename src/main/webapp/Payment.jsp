<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .payment-box {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            width: 350px;
        }
        .payment-box h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
 width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .pay-btn {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }
        .pay-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form action="PaymentServlet" method="post" class="payment-box">
        <h2>Payment Details</h2>
        <label>Name on Card:</label>
        <input type="text" name="cardName" required>

        <label>Card Number:</label>
        <input type="text" name="cardNumber" required>
        <label>Expiry Date:</label>
        <input type="text" name="expiry" placeholder="MM/YY" required>

        <label>CVV:</label>
        <input type="number" name="cvv" required>

        <button type="submit" class="pay-btn">Pay Now</button>
    </form>
</body>
</html>
