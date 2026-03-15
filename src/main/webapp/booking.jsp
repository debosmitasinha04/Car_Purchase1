<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>car Booking</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .booking-card {
      background: #fff;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 6px 15px rgba(0,0,0,0.1);
      width: 400px;
    }
    h2 {
      text-align: center;
      color: #004aad;
      margin-bottom: 20px;
    }
    label {
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
    }
    input, select {
      width: 100%;
      padding: 12px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
    }
    input:focus, select:focus {
      border-color: #004aad;
      outline: none;
      box-shadow: 0 0 5px rgba(0,74,173,0.3);
    }
    .btn {
      display: block;
      width: 100%;
      padding: 14px;
      background: #004aad;
      color: #fff;
      text-align: center;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s ease;
    }
    .btn:hover {
      background: #002b6b;
    }
    .footer {
      text-align: center;
      margin-top: 15px;
      font-size: 13px;
      color: #6c757d;
    }
  </style>
</head>
<body>
  <div class="booking-card">
    <h2>🚗 Book Your Car</h2>
    <form action="BookCarServlet" method="post">
      <label>Full Name</label>
      <input type="text" name="name" required>

      <label>Email</label>
      <input type="email" name="email" required>

      <label>Phone</label>
      <input type="text" name="phone" required pattern="[0-9]{10}" placeholder="10-digit number">

      <label>Choose Variant</label>
      <select name="variant" required>
        <option value="">--Select Variant--</option>
        <option value="Petrol">1.5L Petrol</option>
        <option value="Hybrid">1.5L Strong Hybrid</option>
        <option value="CNG">S-CNG</option>
      </select>

      <!-- Book Now Button -->
      <button type="submit" class="btn">Next</button>
    </form>
   
  </div>
</body>
</html>