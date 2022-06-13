<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.javabeans.*, java.util.*"%>
    
<%	UserBean user = (UserBean) request.getSession().getAttribute("current_user");
	Collection<?> articoli = (Collection<?>)request.getSession().getAttribute("prodotti");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>

<body>
<% if(user!=null && user.getAdmin()==1){%>
	<h3>BENVENUTO ADMIN: <%=user.getUsername()%></h3>
	<a href="AdminServlet2?action=mostra">ACCEDI ALLA GESTIONE PRODOTTI E ORDINI</a> <% 
} else if(user!=null && user.getAdmin()==0){%>
	<h3>BENVENUTO : <%=user.getUsername()%></h3><% 
}
%>

<h3>PIATTAFORME:</h3>
<div>

	 <ul id="Piattaforme" >
	 	<li><a href="SortPlatformServlet?action=Pc">PC</a></li>
	 	<li><a href="SortPlatformServlet?action=Ps">PS5</a></li>
	 	<li><a href="SortPlatformServlet?action=Nint">NINTENDO</a></li>
	 	<li><a href="SortPlatformServlet?action=Xbox">XBOX</a></li>
	</ul>
</div>

<h4>USER AREA</h4>
<div>
	<ul id=UserArea>
		<% if(user==null){	%>
			<li><a href="LoginPage.jsp">LOGIN</a></li>
			<li><a href="Signup.jsp">SIGNUP</a></li><%
			
		}%>
		<% if(user!=null){	%>
			<li><a href="LogoutServlet">LOGOUT</a></li>
			<li><a href="UserAreaServlet?action=datiUtente&idUtente=<%=user.getIdUtente()%>">AREA UTENTE</a></li><%	
		}%>
	 	<li><a href="Cart.jsp">CARRELLO</a></li>
	 	
	</ul>
</div>

<h4>CATALOGO ARTICOLI</h4>

<table border="1">
	<tr>
		
		<th>Immagine</th>
		<th>Titolo Gioco</th>
		<th>Prezzo</th>
		
	</tr>

<% if(articoli != null && articoli.size()!=0){
		Iterator<?> it =articoli.iterator();
		while(it.hasNext()){
		ProductBean bean = (ProductBean)it.next();	
		%>
	

	<tr class="giochi">
		
		<td><div class="cart-info">
				<a href="ProductsServlet?action=dettagli&id=<%=bean.getId()%>"><img src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4)%>"></a>
				</div></td>
		<td><%=bean.getNome() %></td>
		<td><%=bean.getPrezzo() %>&euro;</td>
		<td><a href="CartServlet?action=addCart&id=<%=bean.getId()%>">Aggiungi al Carrello</a></td>
		<%if(user!=null && user.getAdmin()==1){%>
		<td><a href="AdminServlet2?action=removeFromDB&IdBean=<%=bean.getId()%>">Rimuovi dal Database</a></td><% 
		}
		%> 
		</tr>
		
		<%}} %>
		</table> 
</body>
</html>