<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
    
    <% 	Collection<?> articoli = (Collection<?>) request.getAttribute("articoli");
    	
		Collection<?> ordini = (Collection<?>) request.getAttribute("ordini");
		Collection<?> ordini2 = (Collection<?>) request.getAttribute("ordiniPerData");
		Collection<?> ordini3 = (Collection<?>) request.getAttribute("ordiniPerCliente");
		%>
		
<!DOCTYPE html>
<html>
<head><head>
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

	
	<!-- Elenco Giochi pagina Admin -->


<%@ include file = "../frammenti/header.jsp"%>


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