<%-- 
    Document   : explore
    Created on : 2 Sep, 2025, 12:33:20 AM
    Author     : indir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Car Explorer</title>
  <style>
      .body {
      font-family: 'Segoe UI', sans-serif;
      background: #f4f4f4;
      margin: 0;
      padding: 20px;
    }

    h1 {
      text-align: center;
      color: #333;
    }

    .car-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
      margin-top: 30px;
    }

    .car-card {
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: transform 0.3s ease;
    }

    .car-card:hover {
      transform: scale(1.03);
    }

    .car-card img {
      width: 100%;
      height: 160px;
      object-fit: cover;
    }

    .car-info {
      padding: 15px;
    }

.car-info h3 {
      margin: 0;
      font-size: 1.2em;
      color: #222;
}
.car-info p {
      margin: 8px 0 0;
      color: #666;
      font-size: 0.95em;
}
  </style>
</head>
<body>
  <h1>Explore All Cars</h1>
  <div class="car-grid">
    <div class="car-card">
      <img src="https://tse1.mm.bing.net/th/id/OIP.ketJ96vf-MykonxAY28-uQHaEK?pid=Api&P=0&h=180" alt="Tesla">
      <div class="car-info">
        <a href="tesla.jsp"><h3>Tesla Model X</h3></a>
        <p>₹ 65.2 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://s1.paultan.org/image/2017/06/Hyundai-Kona-08.jpg" alt="Hyundai-Kona-08">
      <div class="car-info">
          <a href="Hyundai.html"><h3>Hyundai-Kona-08</h3></a>
        <p>₹ 35..12 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://wallpapercave.com/wp/wp7493637.jpg" alt="Mahindra">
      <div class="car-info">
          <a href="Mahindra.html"><h3>Mahindra</h3></a>
        <p>₹ 75.7 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://media.ed.edmunds-media.com/honda/accord/2023/oem/2023_honda_accord_sedan_sport-l-hybrid_fq_oem_1_1280.jpg" alt="Honda -Raymond M Grant">
      <div class="car-info">
          <a href="Honda.html"><h3>Honda -Raymond M Grant</h3></a>
        <p>₹ 34.00 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://s1.cdn.autoevolution.com/images/news/gallery/2023-ford-puma-vivid-ruby-edition-introduced-with-prices-matching-the-sporty-puma-st_2.jpg" alt="Ford Puma">
      <div class="car-info">
          <a href="Ford_Puma.html"><h3>Ford Puma</h3></a>
        <p>₹ 58.12 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://www.topgear.com/sites/default/files/2022/12/22C0378_015.jpg" alt="Mercedes-AMG S63">
      <div class="car-info">
          <a href="Mercedes.html"><h3>Mercedes-AMG S63</h3></a>
        <p>₹ 80.88 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://www.motortrend.com/uploads/2022/11/2024-audi-q8-sportback-front-three-quarter-motion2.jpg" alt="Audi">
      <div class="car-info">
          <a href="Audi.html"><h3>Audi</h3></a>
        <p>₹ 3.9 cr</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://tse4.mm.bing.net/th/id/OIP.4MLJ9HaIseS90HR8kBR54gHaE6?pid=Api&P=0&h=180" alt="Maruti Suzuki">
      <div class="car-info">
          <a href="Maruti_Suzuki.html"><h3>Maruti Suzuki</h3></a>
        <p>₹ 40.2 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://cdn.motor1.com/images/mgl/L3xrLm/s1/2026-toyota-rav4-rendering.jpg" alt="2026-toyota-rav4-rendering">
      <div class="car-info">
          <a href="Toyota.html"><h3>Toyota Rava 4</h3></a>
        <p>₹ 55.5 Lakh</p>
      </div>
    </div>
    <div class="car-card">
      <img src="https://tse4.mm.bing.net/th/id/OIP.6jn42MBDamXqo3gG88ig3wHaEK?pid=Api&P=0&h=180" alt="BMW">
      <div class="car-info">
          <a href="BMW.html"><h3>BMW</h3></a>
        <p>₹ 78.4 Lakh</p>
      </div>
    </div>
  </div>
</body>
</html>