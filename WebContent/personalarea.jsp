<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
<%
UserBean user2 = (UserBean) request.getSession().getAttribute("current_user");%>
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

    <link rel="stylesheet" href="css/userarea.css">
    <link rel="stylesheet" href="css/default.css">
</head>
<body>

<%@ include file="../frammenti/loggedheadernosearch.jsp" %>

    <div class="usercontainer">
        <div class="userimg">
            <img src="img/gamepad (1).png" alt="avatar">
            <p>Ciao, <span style="font-weight: bold;"><%=user2.getUsername() %></span></p>
            <a href="LogoutServlet"><button>Esci</button></a>
        </div>

        <div class="userinfo">
            <h1>Dati utente</h1>
            <p> Nome: <span>nome</span> <span style="margin-right: 50px;">cognome</span> Username: <span>username</span><br>
            Password: <span>password</span></p><br>
            <h1>Contatti</h1>
            <p>e-mail: <span style="margin-right: 50px;">e-mail</span> Telefono: <span>telefono</span></p><br>
            <h1>Indirizzi</h1>
            <p>Indirizzo 1: <span>via, </span><span>ncivico, </span><span>citta, </span><span>provincia, </span><span>cap</span></p><br>
            <h1>Metodi di pagamento</h1>
            <p>1: <span>metodopagamento(prime 5 cifre numero carta, tutte le altre censurate), data scadenza</span></p>
        </p>
        </div>
    </div>
    




<script src="js/userdiv.js"></script>
</body>
</html>