<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
	String utente_non_trovato = (String) request.getAttribute("utente_non_trovato");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
	<form action="UserLogServlet" method="post">
	<input type="text" placeholder="username" name="user">
	<input type="password" placeholder="password" name="pwd">
	<input type="submit" value="login" >
	</form>
	
	<%
					if(utente_non_trovato != null && utente_non_trovato.equals("true")){
				%>
				
				<div class="alert-danger" role="alert">
				  UTENTE INESISTENTE, RIPROVA O <a href="Signup.jsp">REGISTRATI</a>
				</div><br>
				<%
					}
				%>	 <!-- post e´ piu´ sicuro di get, non conserva informazioni, utile per pw-->
		
</div>
</body>
</html>