
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> Contact Us</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
      *{
          margin:0;
          padding:0;
          box-sizing: border-box;
          font-family: sans-serif;
         
      }
      .contact{
          position: relative;
          min-height: 100vh;
          padding: 50px 100px;
          display: flex;
          justify-content: center;
          align-items: center;
          flex-direction: column;
          
      }
      .contact .content{
          max-width: 800px;
          text-align: center;
      }
      .contact .content h2{
          font-size: 36px;
          font-weight: 500;
          color: palevioletred;
          
      }
      .contact .content p{
          font-weight: 300;
          color: purple;
         
      }
      .container{
          width: 100%;
          display:flex;
          justify-content: center;
          align-items: center;
          margin-top: 30px;
      }
      .container .contactInfo{
          width:50%;
          display: flex;
          flex-direction: column;
      }
      .container .contactInfo .box{
          position:relative;
          padding:20px 0;
          display: flex;
          
      }
      .container .contactInfo .box .icon{
          min-width: 60px;
          height: 60px;
          background: palegoldenrod;
          display: flex;
          justify-content: center;
          align-items: center;
          border-radius:50%;
          font-size: 22px;
          
      }
      .container .contactInfo .box .text{
          display: flex;
          margin-left: 20px;
          font-size:16px;
          color:palevioletred;
          flex-direction: column;
          font-weight: 300;
          
      }
      .container .contactInfo .box .text h3{
          font-weight: 500;
          color:palevioletred;
      }
      .contactForm{
          width: 30%;
          padding:40px;
          background: palevioletred;
          
      }
      .contactForm h2{
          font-size:30px;
          color:pink;
          font-weight: 500;
      }
      .contactForm .inputBox{
          position: relative;
          width: 100%;
          margin-top: 10px;
          
      }
      .contactForm .inputBox input,
      .contactForm .inputBox textarea
      {
          width: 100%;
          padding: 5px 0;
          font-size:16px;
          margin:10px 0;
          border:none;
          border-bottom: 2px solid black;
          outline:none;
          resize:none;
          transition: 0.3s;

      }
      .contactForm .inputBox span{
          position: absolute;
          left: 0;
          width: 100%;
          padding: 5px 0;
          font-size:16px;
          margin:10px 0;
          pointer-events: none;
          transition: 0.6s;
          color:brown;
      }
      .inputBox textarea:focus + span
{
  opacity: 0;
  visibility: hidden;
}

       .contactForm .inputBox input:focus ~span,
       .contactForm .inputBox input:valid ~span,
       .contactForm .inputBox input:focus ~span,
       .contactForm .inputBox input:valid~span
       {
           color:blueviolet;
           font-size:12px;
           transform: translateY(-20px);
       }
       .contactForm .inputBox input[type="submit"]{
           width: 100px;
           background: paleturquoise;
           color:navy;
           border:none;
           cursor: pointer;
           padding: 10px;
           font-size: 18px;
           
       }
       @media(max-width:991px){
           .contact{
               padding: 50px;
           }
           .container{
               flex-direction: column;
           }
           .container .contactInfo{
               margin-bottom: 40px;
           }
           .container .contactInfo{
               width: 100%;
           }
       }
  </style>
</head>
<body>
    <section class="Contact">
        <div class="content">
            <h2>Contact Us</h2>
            
        </div>
        <div class="container">
            <div class="contactInfo">
                <div class="box">
                    <div class="icon"><i class="fa-solid fa-address-book"></i></div>
                    <div class="text">
                        <h3>Address</h3>
                        <p>Asansol,West Bengal India</p>
                        
                    </div>
                </div>
                    <div class="box">
                        <div class="icon"><i class="fa-solid fa-phone"></i></div>
                            <div class="text">
                                 <h3>Phone</h3>
                                 <p>108-889-2653</p>
                            </div>
                        </div>
                <div class="box">
                        <div class="icon"><i class="fa-solid fa-envelope"></i></div>
                            <div class="text">
                                 <h3>Email</h3>
                                 <p>roytithi88@gmail.com</p>
                            </div>
                        </div>
                    </div>
           
            <div class="contactForm">
                <form action="ContactServlet" method="post">
                    <h2>Send Message</h2>
                    <div class="inputBox">
                        <input type="text" name=" " required="required">
                        <span>Full Name</span>
                    </div>
                    <div class="inputBox">
                         <input type="text" name=" " required="required">
                        <span>Email</span>
                    </div>
                    <div class="inputBox">
                        <textarea required="required"></textarea>
                        <span>Type Your Message....</span>
                    </div>
                    <div class="inputBox">
                        <input type="submit" name=" " value="send">
                    </div>
               
            </div>
           
        
    </section>
</body>