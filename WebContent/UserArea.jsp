<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
  	<% Collection<?> metodi = (Collection<?>) request.getAttribute("metodiUser");
  	UserBean user = (UserBean) request.getSession().getAttribute("current_user");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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