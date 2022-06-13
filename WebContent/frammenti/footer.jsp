<footer>
        
        <div class="logo"><a href="index.jsp"><img src="img/logo.png" alt="logo"></a></div>
        <div class="left">
            <ul>
                <li class="link"><a href=""><b>Su di noi</b></a></li>
                <li class="link"><span id="socialenter" href=""  onmouseover="document.getElementById('social').style.display='flex'; document.getElementById('socialenter').style.display='none';"><b>I nostri social</b></span></li>
            </ul>
            <div class="social" id="social" onmouseleave="document.getElementById('social').style.display='none'; document.getElementById('socialenter').style.display='block';">
                <ul class="socialpage">
                    <li><a href=""><img src="img/ig.png" alt="igico" class="socialico"></a></li>
                    <li><a href=""><img src="img/fb.png" alt="fbico" class="socialico"></a></li>
                    <li><a href=""><img src="img/tw.png" alt="twico" class="socialico"></a></li>
                </ul>
            </div>
        </div>    

        <div class="right">
            <!--DEFINISCO LA SEZIONE DEDICATA ALLA BARRA DI RICERCA-->
            <div class="searchsection">

                <!--DEFINISCO IL FORM, CON AUTOCOMPLETAMENTO DISATTIVATO-->
                <form action="" id="searchform" autocomplete="off">
                    <input type="text" name="searchbar" id="searchbar" placeholder="Scrivi qui per cercare..." class="searchbar">
                    <button type="submit" class="lensbutton"><i class="fa fa-search"></i></button>
                </form>
            </div>
            <p>Leggi la nostra informativa sulla <a class="link" href="https://www.privacypolicies.com/live/5dda9b97-d8b3-4092-9f24-5fbc23c2842c" target="_blank"><b>PRIVACY</b></a></p>
            <p>Hai bisogno di aiuto? Puoi contattarci scrivendoci <a href="mailto:indirizzo@email.com?subject=Oggetto%20del%20messaggio"><b>QUI</b></a></p>
        </div>
    </footer>