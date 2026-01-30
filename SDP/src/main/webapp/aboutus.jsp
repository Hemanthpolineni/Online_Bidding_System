<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="./css/aboutus.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'><link rel="stylesheet" href="./css/style.css">
    <style>
    *{
  margin: 0;
  padding: 0;
  font-family: "Open Sans",sans-serif;
  box-sizing: border-box;
}

body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #f1f1f1;
}

.about-section{
  background: url(./images/book.jpg) no-repeat left;
  background-size: 68%;
  background-color: #fdfdfd;
  overflow: hidden;
  padding: 100px 0;
}

.inner-container{
  width: 55%;
  float: right;
  background-color: #fdfdfd;
  padding: 150px;
}

.inner-container h1{
  margin-bottom: 30px;
  font-size: 30px;
  font-weight: 900;
}

.text{
  font-size: 13px;
  color: #545454;
  line-height: 30px;
  text-align: justify;
  margin-bottom: 40px;
}

.skills{
  display: flex;
  justify-content: space-between;
  font-weight: 700;
  font-size: 13px;
}

@media screen and (max-width:1200px){
  .inner-container{
      padding: 80px;
  }
}

@media screen and (max-width:1000px){
  .about-section{
      background-size: 100%;
      padding: 100px 40px;
  }
  .inner-container{
      width: 100%;
  }
}

@media screen and (max-width:600px){
  .about-section{
      padding: 0;
  }
  .inner-container{
      padding: 60px;
  }
}

/*
    Auther: Abdelrhman Said
*/

@import url("https://fonts.googleapis.com/css2?family=Poppins&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

*:focus,
*:active {
  outline: none !important;
  -webkit-tap-highlight-color: transparent;
}

html,
body {
  display: grid;
  height: 100%;
  width: 100%;
  font-family: "Poppins", sans-serif;
  place-items: center;
  background: linear-gradient(315deg, #ffffff, #d7e1ec);
}

.wrapper {
  display: inline-flex;
  list-style: none;
}

.wrapper .icon {
  position: relative;
  background: #ffffff;
  border-radius: 50%;
  padding: 15px;
  margin: 10px;
  width: 50px;
  height: 50px;
  font-size: 18px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .tooltip {
  position: absolute;
  top: 0;
  font-size: 14px;
  background: #ffffff;
  color: #ffffff;
  padding: 5px 8px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .tooltip::before {
  position: absolute;
  content: "";
  height: 8px;
  width: 8px;
  background: #ffffff;
  bottom: -3px;
  left: 50%;
  transform: translate(-50%) rotate(45deg);
  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.wrapper .icon:hover .tooltip {
  top: -45px;
  opacity: 1;
  visibility: visible;
  pointer-events: auto;
}

.wrapper .icon:hover span,
.wrapper .icon:hover .tooltip {
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
}

.wrapper .facebook:hover,
.wrapper .facebook:hover .tooltip,
.wrapper .facebook:hover .tooltip::before {
  background: #1877F2;
  color: #ffffff;
}

.wrapper .twitter:hover,
.wrapper .twitter:hover .tooltip,
.wrapper .twitter:hover .tooltip::before {
  background: #1DA1F2;
  color: #ffffff;
}

.wrapper .instagram:hover,
.wrapper .instagram:hover .tooltip,
.wrapper .instagram:hover .tooltip::before {
  background: #E4405F;
  color: #ffffff;
}

.wrapper .github:hover,
.wrapper .github:hover .tooltip,
.wrapper .github:hover .tooltip::before {
  background: #333333;
  color: #ffffff;
}

.wrapper .youtube:hover,
.wrapper .youtube:hover .tooltip,
.wrapper .youtube:hover .tooltip::before {
  background: #292e4f;
  color: #ffffff;
}
    </style>
</head>
<body>
    <div class="about-section">
        <div class="inner-container">
            <h1>About Us</h1>
            <p class="text">
                An ONLINE BOOK STORE is a web-based application where customers may browse, search for, buy, and occasionally even read books online. A growing number of people are using these services because they are convenient, contain a large range of books, and can accommodate different reading styles.
            </p>
                <ul class="wrapper">
                  <li class="icon facebook">
                    <span class="tooltip">Facebook</span>
                    <span><i class="fab fa-facebook-f"></i></span>
                  </li>
                  <li class="icon twitter">
                    <span class="tooltip">Linkedin</span>
                    <span><i class="fab fa-discord"></i></span>
                  </li>
                  <li class="icon instagram">
                    <span class="tooltip">Instagram</span>
                    <span><i class="fab fa-instagram"></i></span>
                  </li>
                  <li class="icon github">
                    <span class="tooltip">Github</span>
                    <span><i class="fab fa-github"></i></span>
                  </li>
                  <li class="icon youtube">
                    <span class="tooltip">Discord</span>
                    <span><i class="fab fa-discord"></i></span>
                  </li>
                </ul>
            </div>  
        </div>
        
    </div>
</body>
</html>