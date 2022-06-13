<nav>

        <!--DEFINISCO LA LISTA CHE CONTIENE  I COLLEGAMENTI ALLE VARIE SEZIONI DEL SITO WEB-->
        <ul class="nav-list">

            <!--DEFINISCO IL LOGO DEL SITO-->
            <li class="nav-item logo"><a href="index.jsp"><img src="img/logo.png" alt="logo"></a></li>

    		  <!--DEFINISCO LE ICONE CHE SARANNO UTILIZZATE PER DIRIGERE L'UTENTE ALLE VARIE SEZIONI DEL SITO (PC, PLAYSTATION, XBOX, NINTENDO, WISHLIST, AREA UTENTE, CARRELLO)-->
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Pc"><img class="navico" src="img/pcico.png" alt="pcico"></a></li>
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Ps"><img src="img/playstationico.png" alt="playstationico" class="navico"></a></li>
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Xbox"><img src="img/xboxico.png" alt="xboxico" class="navico"></a></li>
            <li class="nav-item platform"><a href="SortPlatformServlet?action=Nint"><img src="img/nintendoico.png" alt="nintendoico" class="navico"></a></li>
            <li class="nav-item"><a href="LoginPage.jsp"><img class="navico" src="img/user.svg" alt="userico"></a></li>
            <li class="nav-item"><a href="Cart.jsp"><img class="navico" src="img/cart.svg" alt="cartico"></a></li>
        </ul>
    </nav><br><br><br><br><br>

    <!--DEFINISCO LA SEZIONE DEDICATA ALLA BARRA DI RICERCA-->
    <div class="searchsection">

        <!--DEFINISCO IL FORM, CON AUTOCOMPLETAMENTO DISATTIVATO-->
        <form action="" id="searchform" autocomplete="off">
            <input type="text" name="searchbar" id="searchbar" placeholder="Scrivi qui per cercare..." class="searchbar">
            <button type="submit" class="lensbutton"><i class="fa fa-search"></i></button>
        </form>
    </div>