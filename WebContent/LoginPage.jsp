<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	String utente_non_trovato = (String) request.getAttribute("utente_non_trovato");
%>
<!DOCTYPE html>
<html>
<head><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--IMPORTO IL FONT MONTSERRAT DA GOOGLE FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!--IMPORTO LA LIBRERIA ANIMATE.CSS CHE SI OCCUPA DELLE ANIMAZIONI DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <!--IMOPORTO LA LIBRERIA FONT-AWESOME CHE SI OCCUPERA' DI ALCUNE ICONE DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!--IMPORTO IL FILE CSS DEFDICATO AL RESET DELLO STILE DI DEAFULT DELLA PAGINA WEB-->
    <link rel="stylesheet" href="css/default.css">

    <!--IMPORTO IL FILE CSS DEDICATO ALL'HEADER DEL SITO (DELLA HOMEPAGE)-->
    <link rel="stylesheet" href="css/homepageHeader.css">
    
    <!-- IMPORTO IL FILE CSS RISERVATO ALLA GRIGLIA DEI GIOCHI -->
    <link rel="stylesheet" href="css/grid.css">
    
    <!--IMPORTO IL FILE CSS DEDICATO AL FOOTER-->
    <link rel="stylesheet" href="css/footer.css">

    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    <title>Game Over</title>
</head>
<body>

<div>

<!-- Pagina di Login -->

<%@ include file="../frammenti/header.jsp" %>
	
	<form action="UserLogServlet" method="post">
	<input type="text" placeholder="username" name="user">
	<input type="password" placeholder="password" name="pwd">
	<input type="submit" value="login" >
	</form>
	
	<%
					if(utente_non_trovato != null && utente_non_trovato.equals("true")){
				%>
				
				<div class="alert-danger" role="alert">
				  UTENTE INESISTENTE, RIPROVA O <a href="Signup.jsp">REGISTRATI</a>
				</div><br>
				<%
					}
				%>	 <!-- post e´ piu´ sicuro di get, non conserva informazioni, utile per pw-->
		
</div>
</body>
</html>