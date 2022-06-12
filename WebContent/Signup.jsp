<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
	<h3>REGISTRATI</h3>
	<form action="UserSignupServlet" method="post">
	<input type="text" placeholder="username" name="user">
	<input type="password" placeholder="password" name="pwd">
	<input type="text" placeholder="email" name="email">
	<input type="text" placeholder="telefono" name="telefono">
	<input type="text" placeholder="nome" name="nome">
	<input type="text" placeholder="cognome" name="cognome">
	<input type="text" placeholder="via" name="via">
	<input type="text" placeholder="cap" name="cap">
	<input type="text" placeholder="citta`" name="citta">
	<input type="text" placeholder="provincia" name="provincia">
	<input type="number" placeholder="n. civico" name="civico">
	<input type="submit" value="signup" >
	</form>
	</div>
</body>
</html>