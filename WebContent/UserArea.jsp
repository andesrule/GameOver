<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
  	<% Collection<?> metodi = (Collection<?>) request.getAttribute("metodiUser");%>
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


</body>
</html>