<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util. * ,com.model.javabeans.* " %>
<% ProductBean bean = (ProductBean) request.getAttribute("descrizione"); %>
<!DOCTYPE html>
<html>
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

    <!--IMPORTO IL FILE CSS DEFDICATO AL RESET DELLO STILE DI DEAFULT DELLA PAGINA WEB-->
    <link rel="stylesheet" href="css/default.css">

    <!--IMPORTO IL FILE CSS DEDICATO ALL'HEADER GENERICO-->
    <link rel="stylesheet" href="css/header.css">
    
    <!-- IMPORTO IL FILE CSS RISERVATO ALLA GRIGLIA DEI GIOCHI -->
    <link rel="stylesheet" href="css/grid.css">
    
    <!--IMPORTO IL FILE CSS DEDICATO AL FOOTER-->
    <link rel="stylesheet" href="css/footer.css">

    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    <title>Game Over</title>
</head>
<body>

<!-- INCLUDO IL FILE RELATIVO ALL'HEADER GENERICO -->
	<%@ include file = "../frammenti/header.jsp"%>
	
<div class="game-title" style="margin: 200px 100px">
	<img class="copertina" src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4) %>" width=510px >
		<br><br>
		
			<div class="game-price">
			<p style="font-size: 30px"><mark><%= bean.getNome() %></mark></p>
				<p>Prezzo: <%= bean.getPrezzo() %> Euro</p>		
				<p>Descrizione: <br> <%= bean.getDescr() %></p>
				
				
				<input type="number" name="quantity" placeholder="Quantity"/>
				<a href="#carrello?actions=addcart&id=<%=bean.getId()%>" id="put-in-cart">Aggiungi Al Carrello</a>
					
				</div>
				</div>
</body>
</html>