<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util. * ,com.model.javabeans.* " %>
<% ProductBean bean = (ProductBean) request.getAttribute("descrizione"); %>
<%UserBean user = (UserBean) request.getSession().getAttribute("current_user"); %>
<!DOCTYPE html>
<html>
<head>
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
    
    <!-- IMPORTO IL FILE CSS RISERVATO ALLA GRIGLIA DEI GIOCHI -->
    <link rel="stylesheet" href="css/grid.css">

    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    
    <!-- CSS only bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    
    <title>Game Over</title>
</head>

<body>

	<div id="container">
		<div id="main">
			<%if(user == null) {%>
			<!-- INCLUDO FRAMMENTO HEADER HOMEPAGE GUEST USER -->
			<%@include file = "../frammenti/unloggedheader.jsp"%><%} else{%> <%@ include file="../frammenti/loggedheader.jsp" %><%}%>
			<div class="game-title" style="margin: 200px 100px">
				<img class="copertina" src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4) %>" width=510px><br><br>
				
				<div class="game-price">
					<p style="font-size: 30px"><mark><%= bean.getNome() %></mark></p>
					<p>Prezzo: <%= bean.getPrezzo() %> Euro</p>		
					<p>Descrizione: <br> <%= bean.getDescr() %></p>
				
					<a href="CartServlet?action=addcart&id=<%=bean.getId()%>" id="put-in-cart">Aggiungi Al Carrello</a>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../frammenti/footer.jsp" %>
</body>
</html>