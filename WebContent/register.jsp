<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!--IMPORTO IL FONT MONTSERRAT DA GOOGLE FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!--IMPORTO LA LIBRERIA ANIMATE.CSS CHE SI OCCUPA DELLE ANIMAZIONI DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <!--IMOPORTO LA LIBRERIA FONT-AWESOME CHE SI OCCUPERA' DI ALCUNE ICONE DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/reg.css">

	<script src="https://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/registerValidation.js"></script>
	
    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    <title>Game Over</title>
</head>
<body>
    <div id="container">
        <div id="main">
            <div class="regcontainer">
                <div class="middle">
                    <div class="title">
						<a href="index.jsp"><img src="img/logo.png" alt="logo"></a>
                        <h1>Registrazione</h1>
                    </div><br>

                    <div class="formcontainer">
                        <form id="form">
               		        <label for="nome">Nome</label><br>
               		        <input type="text" name="nome" id="name" placeholder="Sonic" required><br>
							<p id="errorname"></p>

               		        <label for="cognome">Cognome</label><br>
               		        <input type="text" name="cognome" id="surname" placeholder="The Hedgehog" required><br>
							<p id="errorsurame"></p>
               		        
               		        <label for="user">Username</label><br>
               		        <input type="text" name="user" id="username" placeholder="sonicboom123" required><br>
                	        <p id="errorusername"></p>
							
                	        <label for="pwd">Password</label><br>
                	        <input type="password" name="pwd" id="password" placeholder="********" minlength="8" required><br>
               		        <p id="errorpassword"></p>

							<label for="email">Email</label><br>
               		        <input type="email" name="email" id="email" placeholder="sonic123@mail.com" required><br>
               		        
							<label for="telefono">Telefono</label><br>
               		        <input type="tel" name="telefono" id="telefono" placeholder="3332221134" required><br>
               		        
							<label for="via">Via</label><br>
               		        <input type="text" name="via" id="via" placeholder="Via Carlo Antici" required><br>
               		        <p id="errorvia"></p>

							<label for="civico">N. civico</label><br>
               		        <input type="text" name="civico" id="civico" placeholder="23" required><br>
               		        <p id="errorcivivo"></p>

							<label for="citta">Citt�</label><br>
               		        <input type="text" name="citta" id="citta" placeholder="Ercolano" required><br>
               		        <p id="errorcitta"></p>
							
							<label for="provincia">Provincia</label><br>
               		        <input type="text" name="provincia" id="provincia" placeholder="Napoli" required><br>
               		        <p id="errorprovincia"></p>

							<label for="cap">CAP</label><br>
               		        <input type="text" name="cap" id="cap" placeholder="80056" required><br>
               		        <p id="errorcap"></p>

							<label for="ncarta">Numero carta</label><br>
							<input type="text" name="ncarta" id="ncarta" placeholder="8423 5241 6524 7726" minlength="16" maxlength="16" required>
							<p id="errorncarta"></p>

							<label for="mesescadenza">Scadenza carta</label><br>
							<input type="text" name="mesescadenza" id="scadenza" placeholder="MM" class="scadenza" required>
							<input type="text" name="annoscadenza" id="scadenza" placeholder="AA" class="scadenza" minlength="2" maxlength="2" required><br>
							<p id="errormese"></p>
							<p id="erroranno"></p>

							<input type="submit" id="submit" value="Registrati">
                        </form>

						<a href="log.html" style="cursor: pointer;">Hai gi� un account? Clicca qui per effettuare il login</a><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>