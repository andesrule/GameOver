<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
<%UserBean user2 = (UserBean) request.getSession().getAttribute("current_user");%>
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
    
    
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@300;400;700&display=swap" rel="stylesheet">

    <!--IMPORTO LA LIBRERIA ANIMATE.CSS CHE SI OCCUPA DELLE ANIMAZIONI DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <!--IMOPORTO LA LIBRERIA FONT-AWESOME CHE SI OCCUPERA' DI ALCUNE ICONE DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/userarea.css">
    
    <link rel="stylesheet" href="css/payment.css">
    
    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    <title>Game Over</title>
</head>
<body>
	<div id="container">
		<div id="main">
			<%@ include file="../frammenti/loggedheader.jsp" %>
			
			<div class="usercontainer">
        		<div class="userimg">
            		<img src="img/gamepad (1).png" alt="avatar">
            		<p>Ciao, <span style="font-weight: bold;"><%=user2.getUsername() %></span></p>
            		<a href="LogoutServlet"><button>Esci</button></a>
       	 		</div>

        		<div class="userinfo">
            		<h1>Dati utente</h1><br>
            		<p> Nome: <span style="margin-right: 50px;"><%=user2.getNome() %> <%=user2.getCognome()%></span> Username: <span><%=user2.getUsername() %></span><br><br>
            		<h1>Contatti</h1><br>
            		<p>e-mail: <span style="margin-right: 50px;"><%=user2.getEmail() %></span> Telefono: <span><%=user2.getTelefono() %></span></p><br>
            		<p>Indirizzo: <span><%=user2.getVia() %>, <%=user2.getnCivico() %>, <%=user2.getCitta() %>, <%=user2.getProvincia() %>, <%=user2.getCap() %></span></p><br><br>
            		<h1>Metodo di pagamento</h1><br>
            		<div class="creditcard">
        <div class="chipcontainer">
            <img src="img/chip.png" alt="chip">
        </div>
        <div class="banklogo">
            <img src="img/banklogo.png" alt="banklogo">
        </div>
        <div class="numbercard">
            <p>3423 3241 5423 6542</p>
        </div>
        <div class="expiresdate">
            <p>VALID<br>THRU<span id="noconflict">09/24</span></p>
        </div>
        <div class="nomecontainer">
            <div class="name">
                <p>nome cognome</p>
            </div>
        </div>
        <div class="cvv">
            <p>CVV: <span id="noconflict">897</span></p>
        </div>
    </div>
        		</div>
    		</div>
		</div>
	</div>
</body>
</html>