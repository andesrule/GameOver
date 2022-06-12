<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util. * ,com.model.javabeans.* " %>
<% ProductBean bean = (ProductBean) request.getAttribute("descrizione"); %>
<!DOCTYPE html>
<html>
<head>
	
	  

<meta charset="ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/grid.css">
  <link rel="stylesheet" type="text/css" href="css/header.css">
<title>Insert title here</title>
</head>
<body>
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