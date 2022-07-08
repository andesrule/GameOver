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
    <link rel="stylesheet" href="css/loginpage.css">

    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    
    <!--IMPORTO FILE E LIBRERIE JS, AJAX E JQUERY  -->
    <script src="https://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/validation.js"></script>
    
    <title>Game Over</title>
</head>
<body>
	<div id="container">
		<div id="main">
			<div class="logo2">
				<a href="index.jsp"><img src="img/logo.png"></a>
			</div>
    
    		<div class="registercontainer">
        		<h1>Accedi</h1><br>
        		<form method="post" class="loginform" autocomplete="off" id="form">
        			<p id="errorUser"></p>
        			<label for="Username">Username</label><br>
        			<input type="text" name="user" id="username" placeholder="sonicboom123" maxlength="12"  required><br>
        			<p id="errorPass"></p>
        			<label for="password">Password</label><br>
        			<input type="password" name="pwd" id="password" placeholder="********" minlength="4" required><br>
        			<input type="submit" value="Login" id="submit">
        		</form>
        	
        		<a href="">Hai dimenticato la password?<br>Clicca qui per impostarne  una nuova</a><br>
     			<a href="register.jsp">Non hai un account?<br>Clicca qui per crearne uno</a>
    		</div>
		</div>
	</div>
</body>
</html>