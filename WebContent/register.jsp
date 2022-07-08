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
    
    <!--IMPORTO FILE CSS DEDICATO ALLA PAGINA DI LOGIN-->
    <link rel="stylesheet" href="css/registerpage.css">
    
    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    <title>Game Over</title>
</head>
<body>
	<div id="container">
		<div id="main">
			<div class="logo2">
				<a href="index.jsp"><img src="img/logo.png"></a>
			</div>
			
    		<!--CONTAINER REGISTRAZIONE-->
    		<div class="registercontainer">
        		<h1>Registrazione</h1><br>
            	<form action="UserSignupServlet" method="post" name="userform" class="registerform" autocomplete="off">
               		<p id="errorname"></p>
               		<label for="nome">Nome</label><br>
               		<input type="text" name="nome" id="name" placeholder="Sonic" autofocus required><br>
               		<p id="errorsurame"></p>
               		<label for="cognome">Cognome</label><br>
               		<input type="text" name="cognome" id="surname" placeholder="The Hedgehog" required><br>
               		<p id="errorusername"></p>
               		<label for="user">Username</label><br>
               		<input type="text" name="user" id="username" placeholder="sonicboom123" required><br>
                	<p id="errorpassword"></p>
                	<label for="pwd">Password</label><br>
                	<input type="password" name="pwd" id="password" placeholder="********" minlength="8" maxlength="16" required><br>
               		<label for="email">Email</label><br>
               		<input type="email" name="email" id="email" placeholder="sonic123@mail.com" required><br>
               		<label for="telefono">Telefono</label><br>
               		<input type="tel" name="telefono" id="telefono" placeholder="3332221134" required><br>
               		<label for="via">Via</label><br>
               		<input type="text" name="via" id="via" placeholder="Via Carlo Antici" required><br>
               		<label for="civico">N. civico</label><br>
               		<input type="text" name="civico" id="civico" placeholder="23" required><br>
               		<label for="citta">Città</label><br>
               		<input type="text" name="citta" id="citta" placeholder="Ercolano" required><br>
               		<label for="provincia">Provincia</label><br>
               		<input type="text" name="provincia" id="provincia" placeholder="Napoli" required><br>
               		<label for="cap">CAP</label><br>
               		<input type="text" name="cap" id="cap" placeholder="80056" required><br>
               		<input type="submit" value="Registrati">
            	</form>
            		
            	<a href="login.jsp">Hai già  un account?<br>Clicca qui per effettuare il login</a><br>
    		</div>	
		</div>
	</div>
</body>
</html>