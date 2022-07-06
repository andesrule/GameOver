<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.HashMap, java.util.Map, com.model.javabeans.*, com.model.dao.*"%>
    
    <%
	Cart cart = (Cart) request.getSession().getAttribute("cart");
    ProductDAO model = new ProductDAO();
    
    UserBean utente = (UserBean) request.getSession().getAttribute("current_user");
      
%>
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


<%if(user == null) {%>
	<!-- INCLUDO FRAMMENTO HEADER HOMEPAGE GUEST USER -->
	<%@ include file = "../frammenti/unloggedheader.jsp"%><%} else{%> <%@ include file="../frammenti/loggedheader.jsp" %> <%} %>


	<!-- Inserimento identificativo del carrello -->
<% if(utente!=null){%>
	<h3>BENVENUTO NEL TUO CARRELLO: <%=utente.getUsername()%></h3>
	<%}else{ %>
	<p>Se non ha effettuato l'accesso Loggati qui <a href="login.jsp">LOGIN</a></p>
	<p>O Registrati qui <a href="register.jsp">SIGNUP</a></p>
	<%} %>

	<div class="small-container cart-container">

		<table>
			<tr>
				<th>Prodotto</th>
				<th>Quantità</th>
				<th>Totale</th>
			</tr>
			
			<%
			double totaleProdotto = 0;

			if (cart != null && cart.getProducts().size() != 0) {
				HashMap<Integer, Integer> carrello = cart.getProducts();

				for (Map.Entry<Integer, Integer> entry : carrello.entrySet()) {
					ProductBean bean = model.doRetrieveByKey(entry.getKey());
					int quantita = entry.getValue();
					double tot = quantita * bean.getPrezzo();
					totaleProdotto += tot;
			%>

			<tr>
				<td>
					<div class="cart-info">
						<img src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4)%>">
						<div>
							<p><%=bean.getNome()%></p>
							<small>Prezzo: <%=bean.getPrezzo()%>
							<p>Quantita<%= quantita%></p>
							</small> <br> <a
								href="CartServlet?action=deletefromcart&id=<%=bean.getId()%>">Rimuovi</a>
						</div>
					</div>
				</td>
				
				<td>
				<form action="UpdateQuantity" method="post">
					<input class="priceProduct" type="hidden" name="price" value="<%=bean.getPrezzo()%>">
					<input class="idProduct" type="hidden" name="id" value="<%=bean.getId()%>">
					<input class="quantity" type="number" name="quantity" min="1" max="<%=bean.getQuanTot()%>" value="<%=quantita%>">
					<input type="submit" value="aggiorna">
					</form>
				</td>
				<td class="prezzo">EUR <%=tot%></td>
			</tr>

			<%
			}
			} else {
			%>
			<td colspan="6">Il carrello è vuoto</td>
			<%
			}
			%>
		</table>


		<div class="total-price">
			<table>
				<tr>
					<td>Totale</td>
					<td><%=totaleProdotto%></td>
				</tr>
			</table>
		
	<!-- Verifica dell'utente, e procedo al checkout solo quando ho effettuato almeno un acquisto -->	
		<% if(utente!=null && cart != null) {%>
			<p>Procedi con il checkout</p>
			<div class="buy">
				<div class="wrapperLink">	
				<a <%if (cart == null || cart.getProducts().size()!=0) {%>
					href="CartServlet?action=checkout&id=<%=utente.getIdUtente()%>" id="buy-button" <%} else {%> id="buy-button-disable" <%}%>>Checkout</a>
				</div>
			</div>
		<%}%>
			</div>
	</div>
	
</body>
</html>