<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*, com.model.javabeans.*"
    pageEncoding="ISO-8859-1"%>
    
    <%
  Collection<?> articoli = (Collection<?>) request.getAttribute("articoliPiattaforma");

  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Visualizza Articoli</h3>

<table border="1">
	<tr>
		<th>Id</th>
		<th>Immagine</th>
		<th>Titolo Gioco</th>
		<th>Prezzo</th>
		<th>Iva</th>
		<th>Descrizione</th>
		<th>Quantità</th>
		<th>Disponibilità</th>
	</tr>

<% if(articoli != null && articoli.size()!=0){
		
		Iterator<?> it =articoli.iterator();
		while(it.hasNext()){
		ProductBean bean = (ProductBean)it.next();	
		
		%>
	

	<tr class="giochi">
		<td><%=bean.getId() %></td>
		<td><div class="cart-info">
				<img src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4)%>">
				</div>
		<td><%=bean.getNome() %></td>
		<td><%=bean.getPrezzo() %></td>
		<td><%=bean.getIva() %></td>
		<td><%=bean.getDescr() %></td>
		<td><%=bean.getQuanTot() %></td>
		<td><%=bean.getDisp() %></td>
		</tr>
		
		<%}} %>
		</table>
</body>
</html>