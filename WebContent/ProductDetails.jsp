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

 

	<link rel="stylesheet" href="css/default.css">
    <!--IMOPORTO LA LIBRERIA FONT-AWESOME CHE SI OCCUPERA' DI ALCUNE ICONE DELLA PAGINA WEB-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    
    <!-- DA FIXARE -->
	

    <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
    <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">
    
    <!-- CSS only bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    
    <title>Game Over</title>
</head>

<body style="color:white;">

	<div id="containerDetails">
		<div id="main" >
			<%if(user == null) {%>
			<!-- INCLUDO FRAMMENTO HEADER HOMEPAGE GUEST USER -->
			
			<%@include file = "../frammenti/unloggedheader.jsp"%><%} else{%> <%@ include file="../frammenti/loggedheader.jsp" %><%}%>
			<%@ include file="../frammenti/searchbar.jsp" %><br>
			<section id="hero" style="background-image: url(${pageContext.request.contextPath}/img/back<%=bean.getId() %>.jpg);" >
			<img src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4) %>" class="img-thumbnail" alt="Responsive image">
				
					<h4 style="font-size: 30px;"><mark style="background-color:rgb(255, 84, 0)"><%= bean.getNome() %></mark></h4>
					
					<div class="game-details">
					<h4 style="font-size:30px"><%= bean.getPrezzo() %> &euro;</h4>		
					
					<a class="btn btn-primary" href="CartServlet?action=addcart&id=<%=bean.getId()%>" id="put-in-cart" 
					style="background-color:rgb(255, 84, 0); border-style:none; height:37px; width:210px;margin-top:10px;">Aggiungi al carrello</a>
					<%if(user!=null && user.getAdmin()==1){%>
					<a class="btn btn-primary" href="#" 
					style="background-color:red; border-style:none; height:37px; width:210px; margin-top:10px">Modifica Prodotto</a><%}%>
					</div>
					</section>
					
					<div class="game-description-details">
					<h3 style="font-weight:bold">Riguardo al gioco:</h3>
					<h2 style="font-size:16px"><%= bean.getDescr() %></h2>
					</div>
				</div>
			</div>
		
	
	
	<%@ include file="../frammenti/footer.jsp" %>
</body>
</html>