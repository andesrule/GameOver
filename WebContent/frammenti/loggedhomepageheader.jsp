<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
<%
UserBean user1 = (UserBean) request.getSession().getAttribute("current_user");%>
<!DOCTYPE html>
<html>
<head>
    <!--IMPORTO IL FILE CSS DEDICATO ALL'HEADER DELLA HOMEPAGE)-->
    <link rel="stylesheet" href="css/header.css">
</head>

<body>
    
    <!--DEFINISCO IL CONTENITORE DELLA BARRA DI NAVIGAZIONE DEL SITO-->
    <nav>

        <!--DEFINISCO LA LISTA CHE CONTIENE  I COLLEGAMENTI ALLE VARIE SEZIONI DEL SITO WEB-->
        <ul class="nav-list">

            <!--DEFINISCO IL LOGO DEL SITO-->
            <li class="nav-item logo"><a href="index.jsp"><img src="img/logo.png" alt="logo"></a></li>

            <!--DEFINISCO LE ICONE CHE SARANNO UTILIZZATE PER DIRIGERE L'UTENTE ALLE VARIE SEZIONI DEL SITO (PC, PLAYSTATION, XBOX, NINTENDO, WISHLIST, AREA UTENTE, CARRELLO)-->
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Pc"><img class="navico platform" src="img/pcico.png" alt="pcico"></a></li>
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Ps"><img src="img/playstationico.png" alt="playstationico" class="navico platform"></a></li>
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Xbox"><img src="img/xboxico.png" alt="xboxico" class="navico platform"></a></li>
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Nint"><img src="img/nintendoico.png" alt="nintendoico" class="navico platform"></a></li>
            <li class="nav-item">
                <img class="navico" id="userbtn1" src="img/user.svg" alt="userico" onclick="showdiv()">
                <img src="img/user.svg" alt="userico" class="navico" id="userbtn2" onclick="hidediv()">
            </li>
            <li class="nav-item"><a href="cart.jsp"><img class="navico" src="img/cart.svg" alt="cartico"></a></li>
        </ul>

        <div class="usermini" id="usermini" onmouseleave="hidediv()">
            <p>Ciao, <span><%= user1.getUsername()%></span><br>
            <a href="personalarea.jsp"><img src="img/gamepad.png" alt="person"></a><br>
            <a href="personalarea.jsp">Vai alla tua area riservata</a><br><br>
            <span>oppure</span><br><br>
            <a href="LogoutServlet"><button>Esci</button></a></p>
        </div>
    </nav><br><br><br><br><br>

    <!--DEFINISCO IL CONTENITORE DEDICATO ALLO SLIDESHOW-->
    <div class="slider">

        <!--DEFINISCO I VARI CONTENITORI RISERVATI ALLE IMMAGINI DELLO SLIDE SHOW-->
        <div class="myslide">
            <img src="img/slide1.jpg" alt="slide1" style="width: 100%; height: 100%;">
        </div>
        
        <div class="myslide">
            <img src="img/slide2.jpg" alt="slide2" style="width: 100%; height: 100%;">
        </div>
        
        <div class="myslide">
            <img src="img/slide3.jpg" alt="slide3" style="width: 100%; height: 100%;">
        </div>
        
        <div class="myslide">
            <img src="img/slide4.jpg" alt="slide4" style="width: 100%; height: 100%;">
        </div>
        
        <div class="myslide">
            <img src="img/slide5.jpg" alt="slide5" style="width: 100%; height: 100%;">
        </div>

        <!--DEFINISCO IL CONTENITORE DEDICATO AI PALLINI CHE SONO IN GRADO DI INDIRIZZARE L'UTENTE ALLA SLIDE DESIDERATA, CON UN CLCIK-->
        <div class="dotsbox">

            <!--DEFINISCO I VARI PALLINI DELLA DOTSBOX-->
            <span class="dot" onclick="currentSlide(1)"><img src="img/dot.png" alt="dot"></span>
            <span class="dot" onclick="currentSlide(2)"><img src="img/dot.png" alt="dot"></span>
            <span class="dot" onclick="currentSlide(3)"><img src="img/dot.png" alt="dot"></span>
            <span class="dot" onclick="currentSlide(4)"><img src="img/dot.png" alt="dot"></span>
            <span class="dot" onclick="currentSlide(5)"><img src="img/dot.png" alt="dot"></span>
        </div>
    </div>
    
    <script src="js/slideanimation.js"></script>
    <script src="js/userdiv.js"></script>
</body>
</html>