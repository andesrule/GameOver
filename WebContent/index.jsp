<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.javabeans.*, java.util.*"%>
    
<%	UserBean user = (UserBean) request.getSession().getAttribute("current_user");
	String utente_check= (String)request.getAttribute("utente_non_trovato");
	String utente_signup_check= (String)request.getAttribute("utente_signup_check");
	String utente_logout= (String)request.getAttribute("utente_logout");
	Collection<?> articoli = (Collection<?>)request.getSession().getAttribute("prodotti");
	String login_check = "true";
 %>
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

<%@ include file = "../frammenti/homepageHeader.jsp"%>


<% if(user!=null && user.getAdmin()==1){%>
	<h3 style="text-align:center; margin-top:15px">BENVENUTO ADMIN: <%=user.getUsername()%></h3>
	<a href="AdminServlet2?action=mostra">ACCEDI ALLA GESTIONE PRODOTTI E ORDINI</a> <% 
} else if(user!=null && user.getAdmin()==0){%>
	<h3 style="text-align:center">BENVENUTO : <%=user.getUsername()%></h3><% 
}
%>

		<% if(user!=null){	%>
			<br><a href="LogoutServlet">LOGOUT</a>
			<br><a href="UserAreaServlet?action=datiUtente&idUtente=<%=user.getIdUtente()%>">AREA UTENTE</a>
			<% }%>
	 	
	 	
	

  <div class="gamesgrid" >
       	
	<% if(articoli != null && articoli.size()!=0){
		
		Iterator<?> it =articoli.iterator();
		while(it.hasNext()){
		ProductBean bean = (ProductBean)it.next();	
		
		%>
		
         
	 <div class="game">
		<a href="ProductsServlet?action=dettagli&id=<%= bean.getId() %> "><img class="cover" src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4) %>" ></a>
		
		<div class="game-title">
			<div class="game-price">
				<p><span><%= bean.getNome() %></span>        <span class="price"><%= bean.getPrezzo() %>&euro;</span></p><br>
		 		
		 		<!--  va bene ma implementa con js-->  
				<%if(user!=null && user.getAdmin()==1){%>
					<a style="color:red" href="AdminServlet2?action=removeFromDB&IdBean=<%=bean.getId()%>">Rimuovi dal Database</a>
					<% } %> 
					
				
		 	</div>
		 </div>
		 </div>
		
<%}} %>
</div> 
	
	<%@ include file = "../frammenti/footer.jsp" %>	
		
</body>
</html>