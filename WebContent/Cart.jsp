<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.HashMap, java.util.Map, com.model.javabeans.*, com.model.dao.*"%>
    
    <%
	Cart cart = (Cart) request.getSession().getAttribute("cart");
    ProductDAO model = new ProductDAO();
    
    UserBean utente = (UserBean) request.getSession().getAttribute("current_user");
      
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrello</title>
</head>
<body>
<h1>Carrello</h1>

	<!-- Inserimento identificativo del carrello -->
<% if(utente!=null){%>
	<h3>BENVENUTO NEL TUO CARRELLO: <%=utente.getUsername()%></h3>
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
							</small> <br> <a
								href="CartServlet?action=deletefromcart&id=<%=bean.getId()%>">Rimuovi</a>
						</div>
					</div>
				</td>
				
				<td>
					<input class="priceProduct" type="hidden" name="price" value="<%=bean.getPrezzo()%>">
					<input class="idProduct" type="hidden" name="id" value="<%=bean.getId()%>">
					<input class="quantity" type="number" name="quantity" min="1" max="<%=bean.getQuanTot()%>" value="<%=quantita%>">
					
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
					href="#actionbuy" id="buy-button" <%} else {%> id="buy-button-disable" <%}%>>Checkout</a>
				</div>
			</div>
		<%}else{ %>
			<p>Se non ha effettuato l'accesso Loggati qui <a href="LoginPage.jsp">LOGIN</a></p>
			<p>O Registrati qui <a href="Signup.jsp">SIGNUP</a></p>
			<%} %>
			</div>
	</div>
	
</body>
</html>