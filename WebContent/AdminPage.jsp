<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
    
    <% 	Collection<?> articoli = (Collection<?>) request.getAttribute("articoli");
    	
		Collection<?> ordini = (Collection<?>) request.getAttribute("ordini");
		Collection<?> ordini2 = (Collection<?>) request.getAttribute("ordiniPerData");
		Collection<?> ordini3 = (Collection<?>) request.getAttribute("ordiniPerCliente");
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
		<th>Modifica</th>
		
	</tr>
		<% if(articoli != null && articoli.size()!=0){
		
		Iterator<?> it =articoli.iterator();
		while(it.hasNext()){
		ProductBean bean = (ProductBean)it.next();	
		
		%>
	

	<tr class="giochi">
		<td><%=bean.getId() %></td>
		<td><img src="./img/<%= bean.getImg().substring(bean.getImg().lastIndexOf("img")+4)%>"></td>
		<td><%=bean.getNome() %></td>
		<td><%=bean.getPrezzo() %></td>
		<td><%=bean.getIva() %></td>
		<td><%=bean.getDescr() %></td>
		<td><%=bean.getQuanTot() %></td>
		<td><%=bean.getDisp() %></td>
		<td><a href="AdminServlet2?action=modifica">Modifica</a> <!-- Da implementare -->
	</tr>
	
<%}} %>

</table>

<h3>Visualizza Ordini Complessivi</h3>
<table border="1">
	<tr>
		<th>Id Ordine</th>
		<th>Id Pagamento</th>
		<th>Id Utente</th>
		<th>Importo Totale</th>
		<th>Stato ordine</th>
		<th>Data Ordine</th>
		<th>Data Spedizione</th>
		
	</tr>

		<% if(ordini != null && ordini.size()!=0){
		
		Iterator<?> it =ordini.iterator();
		while(it.hasNext()){
		OrderBean bean1 = (OrderBean)it.next();	
		
		%>
	
	
	<tr class="giochi2">
		<td><%=bean1.getIdOrdine() %></td>
		<td><%=bean1.getIdPagamento() %></td>
		<td><%=bean1.getIdUtente() %></td>
		<td><%=bean1.getImportoTotale() %></td>
		<td><%=bean1.getStatoOrdine() %></td>
		<td><%=bean1.getDataAcquisto()%></td>
		<td><%=bean1.getDataSpedizione()%></td>
		
		</tr>
	
<%}}
		%>

</table>

<h3>Inserimento Articoli</h3>

<form method="post" id="my_form" action="AdminServlet2" enctype="multipart/form-data">
<input type="hidden" name="action" value="insert">
<table>
    <tr>
        <td>
      		<input type="text" name="Id" form="my_form" placeholder="ID gioco"/>
            <input type="text" name="Titolo_Gioco" form="my_form" placeholder="Titolo Gioco"/>
            <input type="text" name="Prezzo" form="my_form" placeholder="Prezzo"/>
            <input type="text" name="IVA" form="my_form" placeholder="IVA"/>
            <input type="text" name="descrizione" form="my_form" placeholder="Descrizione"/>
            <input type="number" name="Quantita" form="my_form" placeholder="Quantità Totale"/>
            <input type="text" name="Disponibilita" form="my_form" placeholder="Disponibilità (SI/NO)"/><br>
            
            <input type="radio" value="Xbox" name="platform"/>
             <label for="Xbox">Xbox</label><br>
            <input type="radio" value="Pc" name="platform"/>
             <label for="Pc">Pc</label><br>
            <input type="radio" value="Nintendo Switch" name="platform"/>
             <label for="Nintendo">Nintendo</label><br>
            <input type="radio" value="Ps5" name="platform"/>
             <label for="Ps5">Ps5</label><br>
             
            <input type="file" name="image"/>
            <input type="submit" value="Aggiungi Gioco" form="my_form"/>
            <input type="reset" value="Annulla" /><br><br>
        </td>
    </tr>
</table>
</form>

<form method="GET" id=my_form2 action="AdminServlet2">
<input type="hidden" name="action" value="searchByDate">
<input type="date" name="DataInizio" form="my_form2">
<input type="date" name="DataFine" form="my_form2">
<input type="submit" value="Cerca" form="my_form2">
</form>
<form method="get" id=my_form3 action="AdminServlet2">
<input type="text" name="Cliente" placeholder="Cliente" form="my_form3">
<input type="hidden" name="action" value="searchByUser">
<input type="submit" value="Cerca" form="my_form3">
</form>
	<table border="1">
	<tr>
		<th>Id Ordine</th>
		<th>Id Pagamento</th>
		<th>Id Utente</th>
		<th>Importo Totale</th>
		<th>Stato ordine</th>
		<th>Data Ordine</th>
		<th>Data Spedizione</th>
		
	</tr>

		<% if(ordini2 != null && ordini2.size()!=0){
		
		Iterator<?> it =ordini2.iterator();
		while(it.hasNext()){
		OrderBean bean1 = (OrderBean)it.next();	
		
		%>
	
	
	<tr class="giochi3">
		<td><%=bean1.getIdOrdine() %></td>
		<td><%=bean1.getIdPagamento() %></td>
		<td><%=bean1.getIdUtente() %></td>
		<td><%=bean1.getImportoTotale() %></td>
		<td><%=bean1.getStatoOrdine() %></td>
		<td><%=bean1.getDataAcquisto()%></td>
		<td><%=bean1.getDataSpedizione()%></td>
		
		</tr>
	
<%}} else if(ordini3 != null && ordini3.size()!=0){
	
	Iterator<?> it =ordini3.iterator();
	while(it.hasNext()){
	OrderBean bean1 = (OrderBean)it.next();	
		%>
			
	<tr class="giochi3">
		<td><%=bean1.getIdOrdine() %></td>
		<td><%=bean1.getIdPagamento() %></td>
		<td><%=bean1.getIdUtente() %></td>
		<td><%=bean1.getImportoTotale() %></td>
		<td><%=bean1.getStatoOrdine() %></td>
		<td><%=bean1.getDataAcquisto()%></td>
		<td><%=bean1.getDataSpedizione()%></td>
		
		</tr>
	
<%}}%>

</table>
</body>
</html>