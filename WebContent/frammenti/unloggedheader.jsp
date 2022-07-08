<!DOCTYPE html>
<html>
<head>
    <!--IMPORTO IL FILE CSS DEDICATO ALL'HEADER-->
    <link rel="stylesheet" href="css/header.css">
</head>

<body>

	<!-- CONTAINER DELLA BARRA DI NAVIGAZIONE -->
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
            <form action="UserLogServlet" method="post" class="usershow" autocomplete="off">
                <label for="username">Username</label><input type="text" name="user" id="username" placeholder="John Wick" autofocus required><br>
                <label for="password">Password</label><input type="password" name="pwd" id="password" minlength="4" maxlength="16" placeholder="********" required>
                <a href="">Ho dimenticato la password</a><br>
                <input type="submit" value="Login"><br>
                <a href="register.jsp">Non hai un account?<br>Clicca qui per crearne uno</a>
            </form>
        </div>
    </nav><br><br><br><br><br>
    
    <script src="js/userdiv.js"></script>
</body>
</html>