<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
  	<% Collection<?> metodi = (Collection<?>) request.getAttribute("metodiUser");
  	UserBean user = (UserBean) request.getSession().getAttribute("current_user");%>
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

	
	<!-- Area Utente -->


<%@ include file = "../frammenti/header.jsp"%>


<h3>AREA UTENTE</h3>

<h4>METODI DI PAGAMENTO COLLEGATI ALL´ACCOUNT:</h4>

<table border="1">
	<tr>
		<th>Numero Carta</th>
		<th>CVV</th>
		<th>Data Scadenza</th>
		
		
	</tr>

		<% if(metodi != null && metodi.size()!=0){
		
		Iterator<?> it =metodi.iterator();
		while(it.hasNext()){
		PaymentBean bean1 = (PaymentBean)it.next();	
		
		%>
	
	
	<tr class="giochi2">
		<td><%=bean1.getNcarta() %></td>
		<td><%=bean1.getCvv()%></td>
		<td><%=bean1.getDataScad() %></td>
		</tr>
<%}}
		%>

</table>

<h3>AGGIUNGI NUOVO METODO DI PAGAMENTO:</h3>
<form method="get" action="UserAreaServlet">
<input type="hidden" name="action" value="insertPayment">
<input type="hidden" name="idutente" value="<%=user.getIdUtente()%>">
<input type="text" placeholder="Numero Carta" name="numeroCarta">
<input type="number" placeholder="CVV" name="cvv">
<input type="date" placeholder="Data Scadenza" name="dataScadenza">
<input type="submit" value="Aggiungi">
</form>

</body>
</html>