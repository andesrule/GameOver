	<!--DEFINISCO IL CONTENITORE DELLA BARRA DI NAVIGAZIONE DEL SITO-->
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
    </nav><br><br><br><br>

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
    

    <!--DEFINISCO IL CONTENITORE DEDICATO AL SELETTORE DELLA PIATTAFORMA CHE SARA' INVISIBILE QUANDO IL SITO E' APERTO SU UN PC, MA SARA' VISIBILE QUANDO IL SITO SARA' IN VERSIONE MOBILE-->
    <div class="platformselector">

        <!--DEFINISCO IL FORM DEDICATO ALLA SELEZIONE DELLA PIATTAFORMA DEI GIOCHI (WINDOWS, PLAYSTATION, XBOX NINTENDO)-->
        <form action="" id="platformselector">
            <select name="platformenu" id="platformenu" class="platformenu">
                <option value="windows">WINDOWS</option>
                <option value="playstation">PLAYSTATION</option>
                <option value="xbox">XBOX</option>
                <option value="nintendo">NINTENDO</option>
            </select>
            <input type="submit" value="" class="submit">
        </form>
    </div>

    <!--DEFINISCO LA SEZIONE DEDICATA ALLA BARRA DI RICERCA-->
    <div class="searchsection">

        <!--DEFINISCO IL FORM, CON AUTOCOMPLETAMENTO DISATTIVATO-->
        <form action="" id="searchform" autocomplete="off">
            <input type="text" name="searchbar" id="searchbar" placeholder="Scrivi qui per cercare..." class="searchbar">
            <button type="submit" class="lensbutton"><i class="fa fa-search"></i></button>
        </form>
    </div>
    
    <script src="js/slideanimation.js"></script>