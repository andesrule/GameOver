<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.util.*,com.model.javabeans.*"%>
<%UserBean user4 = (UserBean) request.getSession().getAttribute("current_user");%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <!--IMPORTO IL FONT MONTSERRAT DA GOOGLE FONT-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700;900&display=swap" rel="stylesheet">
    
        <!--IMPORTO LA LIBRERIA ANIMATE.CSS CHE SI OCCUPA DELLE ANIMAZIONI DELLA PAGINA WEB-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
        <!--IMOPORTO LA LIBRERIA FONT-AWESOME CHE SI OCCUPERA' DI ALCUNE ICONE DELLA PAGINA WEB-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <!--IMPORTO IL FILE CSS DEFDICATO AL RESET DELLO STILE DI DEAFULT DELLA PAGINA WEB-->
        <link rel="stylesheet" href="css/default.css">
    
        <!--IMPORTO IL FILE CSS DEDICATO ALL'HEADER DELLA HOMEPAGE)-->
        <link rel="stylesheet" href="css/header.css">
    
        <!--IMPOSTO L'ICONA CHE APPARIRA' AFFIANCO AL TITOLO DEL SITO WEB-->
        <link rel="icon" type="image/x-icon" href="img/faviconTitle.ico">

        <link rel="stylesheet" href="css/payment.css">

        <link rel="stylesheet" href="css/cart.css">
    
        <title>Game Over</title>
    </head>
<body>
    <div class="container">
        <div class="main">
            <%if(user4 == null) {%>
				<!-- INCLUDO FRAMMENTO HEADER HOMEPAGE GUEST USER -->
				<%@ include file = "../frammenti/unloggedheadernosearch.jsp"%><%} else{%> <%@ include file="../frammenti/loggedheadernosearch.jsp" %> <%} %>
            <div class="containercart">
                <div class="cartcontainer">
                    <div class="product">
                        <div class="imgcontainer">
                            <img src="img/game12.jpg" alt="game12">
                        </div>
                        <div class="nameactcontainer">
                            <div class="nameproduct">
                                <h1>Chaos Gate</h1>
                            </div>
                            <div class="price">
                                <h2>19.25&euro;</h2><br>
                                <em><span>Quantità: </span></em><br>
                                <form action="">
                                    <input type="number" name="quantity" min="1" max="10" value="1">
                                </form>
                            </div>
                            <div class="actioncart">
                                <a href="">Rimuovi dal carrello</a>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="imgcontainer">
                            <img src="img/game12.jpg" alt="game12">
                        </div>
                        <div class="nameactcontainer">
                            <div class="nameproduct">
                                <h1>Chaos Gate</h1>
                            </div>
                            <div class="price">
                                <h2>19.25&euro;</h2><br>
                                <em><span>Quantità: </span></em><br>
                                <form action="">
                                    <input type="number" name="quantity" min="1" max="10" value="1">
                                </form>
                            </div>
                            <div class="actioncart">
                                <a href="">Rimuovi dal carrello</a>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="imgcontainer">
                            <img src="img/game12.jpg" alt="game12">
                        </div>
                        <div class="nameactcontainer">
                            <div class="nameproduct">
                                <h1>Chaos Gate</h1>
                            </div>
                            <div class="price">
                                <h2>19.25&euro;</h2><br>
                                <em><span>Quantità: </span></em><br>
                                <form action="">
                                    <input type="number" name="quantity" min="1" max="10" value="1">
                                </form>
                            </div>
                            <div class="actioncart">
                                <a href="">Rimuovi dal carrello</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="checkoutcontainer">
                    <div class="orderinfo">
                        <h2>Riepilogo ordine</h2><br>
                        <p>Indirizzo di spedizione: <span>INDIRIZZO</span></p><br>
                        <p>Metodo di pagamento utilizzato: <br><br>
                            <div class="creditcontainer">
                                <div class="creditcard">
                                    <div class="chipcontainer">
                                        <img src="img/chip.png" alt="chip">
                                    </div>
                                    <div class="banklogo">
                                        <img src="img/banklogo.png" alt="banklogo">
                                    </div>
                                    <div class="numbercard" style="margin-top: 40px;">
                                        <p>3423 3241 5423 6542</p>
                                    </div>
                                    <div class="expiresdate">
                                        <p>VALID<br>THRU<span>09/23</span></p>
                                    </div>
                                    <div class="nomecontainer" style="margin-top: 30px;">
                                        <div class="name">
                                            <p>nome cognome</p>
                                        </div>
                                    </div>
                                    <div class="cvv" style="margin-top: 15px;">
                                        <p>CVV: <span>897</span></p>
                                    </div>
                                </div>
                            </div>
                            
                        <br><br>
                        <p>Articoli: <br><span>NOMEARTICOLO</span>, <br></p><br>

                        <p id="totalprice">TOTALE: <span>900</span>&euro;</p>
                        <a href=""><button>ACQUISTA</button></a>
                    </div>
                </div>
            </div>
                
            
        </div>
    </div>

    
    <script src="js/userdiv.js"></script>
</body>
</html>