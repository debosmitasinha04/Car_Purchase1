<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Website</title>
        <style>
            *{margin:0;padding:0;font-family: sans-serif;box-sizing:border-box;}
 body{ background: rgba(0,0,0,0.4) url("https://wallpapers.com/images/hd/amg-gtr-bright-yellow-viz1ngkdw6m5ok3q.jpg")center center fixed; background-blend-mode: darken; background-size: cover; background-position: center; }
.main{ padding:0.8%;
} nav{ padding:24px 0; display: flex; align-items: center; flex-wrap: wrap;
} .logo h2{ width: 150px; font-size: 60px; cursor: pointer; color: rgb(3, 14, 75); }
.nav-links{ display: flex; flex:1; align-items:center; justify-content:flex-end; }
.dropdown { position: relative; display: inline-block; }
.dropdown-content { display: none; position: absolute; background-color: #a76b6b; min-width: 160px; box-shadow: 0px 8px 16px rgba(0,0,0,0.2); z-index: 1; } 
.dropdown-content a { color: black; padding: 10px 16px; text-decoration: none; display: block; }
.dropdown-content a:hover { background-color: #f1f1f1; }
.dropdown:hover 
.dropdown-content { display: block; }
.dropdown a { text-decoration: none; color: #0077cc; font-weight: bold; }
.nav-links a{ margin-right: 36px; text-decoration: none; color: antiquewhite; transition: 3s; }
.nav-links a:hover{ padding:11px; background-color: brown; } .nav-links .button{ background: rgb(212, 25, 87); color: black; padding: 10px 28px; border-radius: 5px; } 
.content{ margin-top: 150px; margin-left: 150px; color: antiquewhite; }
.content h1{ font-size: 60px; color:rgb(188, 238, 238) }
.search{ background: rgb(233, 212, 212); width: fit-content; margin: 20px 0; padding: 20px 20px; display: flex; align-items: center; }
.search input{ background: transparent; width: 500px; border: 0; outline: none;}
 button{ padding: 10px 28px; margin-left: 18%; background-color: rgb(223, 3, 3); cursor: pointer;}
 .form{ width: 400px; height: 400px; position:absolute; top: 18%; left: 68%; background: rgb(245, 193, 193); } 
.form::placeholder{ color: antiquewhite; } 
.box input{ width: 75%; margin: 10px; margin-top: 18px; margin-left: 21px; padding: 13px 18px; background: transparent; border-bottom: 1px solid rgb(244, 75, 75); } 
.link{ width: 75%; text-align: center; border-radius: 7px; cursor: pointer;}
.link a{ text-decoration: none; color: rgb(169, 160, 150); } .link1{ text-decoration: none; margin-top: 15px; text-align: center; } 
.link1 a{ text-decoration: none; color: coral; font-size: 15px; } 
.link2{ width: 50%; margin: 23%; text-align: center; margin-top: 40px; background-color: rgb(236, 71, 71); padding: 10px; border-radius: 7px; }
</style>




</head>
<body>
    <div class="main">
        <nav>
            <div class="nav-links">
                <div class="dropdown">
                    <a href="explore.jsp">Explore Car</a>
                </div>
                <div>
                    <a href="our_services.html">Our Services</a>
                    <a href="contact.jsp">Contact</a>
                    <a class="button" href="about.html">About</a>
            </div>
        </div>
    </nav>
    <div class="content">
        <h1>Buy the Best <br>Best Quality</h1>
        
        <div class="search">
            <input type="text" id="carInput" placeholder="Search Any Car">
        </div>
        <button onclick="searchCar()">Search</button>
        <script>
            function searchCar() {
      // Get the input value and make it lowercase for consistency
      let carName = document.getElementById("carInput").value.toLowerCase();

      // Define car name to page mapping
      let carPages = {
        "bmw": "BMW.html",
        "audi": "Audi.html",
        "tesla": "tesla.jsp",
        "Toyota": "Toyota.html",
        "Mercedes": "Mercedes.html",
        "Maruti_Suzuki": "Maruti_Suzuki.html",
        "Mahindra": "Mahindra.html",
        "Honda": "Honda.html",
        "Hyundai": "Hyundai.html",
        "Ford_Puma": "Ford_Puma.html",

      };

      // Check if the car exists in our list
      if (carPages[carName]) {
        window.location.href = carPages[carName]; // Redirect to the car page
      } else {
        alert("Sorry, no page found for this car!");
      }
    }

  </script>
    </div>
            <form action="login" method="post" class="form">
        <div class="box">
            <input type="email" name="email" placeholder="Enter Your Email">
            <input type="password" name="password" placeholder="Password">
        </div>
        <div class="link">
            <button type="submit">Log In</button>
        </div>
        <div class="link1">
            <a href="forgotpassword.jsp">Forgotten password</a>
        </div>
        <div class="link2">
            <a href="signup.jsp">Create New Account</a>
        </div>

    </form>
    </div>
</body>
</html>
<!--<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Car Website</title>
  <style>
      
body {
    margin: 0;
  padding: 0;
  font-family: sans-serif;
  box-sizing: border-box;
  background:rgba(0,0,0,0.4)url("https://www.bmw.co.id/content/dam/bmw/common/all-models/m-series/series-overview/bmw-m-series-seo-overview-ms-04.jpg") center center fixed;
  background-blend-mode: darken;
  background-size: cover;
  background-position: center;
  color: antiquewhite;
}

/* Navigation */
.navbar {
  padding: 24px 40px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.logo h3 {
  font-size: 30px;
  color: cyan;
  cursor: pointer;
}

.nav-links {
  display: flex;
  align-items: center;
  gap: 36px;
}

.nav-links a {
  text-decoration: none;
  color: antiquewhite;
  transition: 0.3s;
}

.nav-links a:hover {
  padding: 8px;
  background-color: brown;
  border-radius: 5px;
}

.nav-button {
  background: rgb(212, 25, 87);
  color: black;
  padding: 10px 28px;
  border-radius: 5px;
  text-decoration: none;
}

/* Main Content */
.main-content {
  padding: 40px;
}

.hero {
  margin-top: 100px;
  margin-left: 100px;
}

.hero h1 {
  font-size: 60px;
  color: rgb(223, 223, 3);
}

/* Search Bar */
.search-bar {
  background: rgba(166, 164, 164, 0.4);
  width: fit-content;
  margin: 20px 0;
  padding: 20px;
  display: flex;
  align-items: center;
  gap: 10px;
}

.search-bar input {
  background: rgb(243, 215, 5);
  width: 500px;
  border: none;
  outline: none;
  padding: 10px;
  color: black;
}

.search-bar button {
  padding: 10px 28px;
  background-color: rgb(223, 223, 3);
  color: black;
  cursor: pointer;
  border: none;
  font-weight: bold;
}

/* Login Section */
.login-section {
  position: fixed;
  top: 50%;
  right: 10%;
  transform: translateY(-50%);
  background-color: rgba(30, 30, 30, 0.85);
  padding: 25px;
  border-radius: 10px 0 0 10px;
  width: 320px;
  box-shadow: -4px 0 10px rgba(0, 0, 0, 0.5);
  text-align: center;
}

.login-box input {
  width: 100%;
  margin: 12px 0;
  padding: 12px;
  border: none;
  border-bottom: 1px solid rgb(244, 75, 75);
  background: transparent;
  color: white;
  text-align: center;
}

.login-box input::placeholder {
  color: rgb(223, 223, 3);
}

.login-btn {
  background-color: black;
  color: yellow;
  padding: 12px;
  width: 100%;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  cursor: pointer;
  margin-top: 10px;
}

.forgot-link {
  display: block;
  margin-top: 12px;
  color: red;
  text-decoration: none;
  font-size: 14px;
}

.create-btn {
  background-color: rgb(223, 223, 3);
  color: black;
  padding: 12px;
  width: 100%;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  cursor: pointer;
  margin-top: 12px;
}
.dropdown {
      position: relative;
      display: inline-block;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown-content a {
      color: black;
      padding: 10px 16px;
      text-decoration: none;
      display: block;
    }
    .dropdown-content a:hover {
      background-color: #f1f1f1;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown a {
      text-decoration: none;
      color: #0077cc;
      font-weight: bold;
    }
      
      
      
  </style>
  
</head>
<body>
  <header>
    <nav class="navbar">
      <div class="logo">
        <h3>YānaKart</h3>
      <p class="tagline">Where car shopping meets innovation</p>
      </div>
      <div class="nav-links">
        <div class="dropdown">
        <a href="Explore.html">Explore Car</a>
       
        </div>
              <a href="services.html">Our Services</a>
              <a href="#">Contact</a>
              <a class="nav-button" href="about.html">About</a>
        </div>
    </nav>
  </header>
  
  <main class="main-content">
    <section class="hero">
      <h1>Buy the best<br />best quality</h1>
      <div class="search-bar">
        <input type="text" placeholder="Search any car" />
        <button type="submit">Search</button>
      </div>
    </section>

    <section class="login-section">
        <form action="loginServlet" method="post" class="form">
      <div class="login-box">
        <input type="email" name="email" placeholder="Enter your email" />
        <input type="password" name="password" placeholder="Password" />
        
        <button class="login-btn">Login</button>
        <a class="forgot-link" href="#">Forgotten password?</a>
        <button class="create-btn">Create new Account</button>
      </div>
        </form>
    </section>
  </main>
</body>
</html>-->

