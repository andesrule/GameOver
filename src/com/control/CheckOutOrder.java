package com.control;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.GregorianCalendar;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.dao.OrderDAO;
import com.model.dao.ProductDAO;
import com.model.javabeans.Cart;
import com.model.javabeans.OrderBean;
import com.model.javabeans.OrderModel;

/**
 * Servlet implementation class CheckOutOrder
 */
@WebServlet("/CheckOutOrder")
public class CheckOutOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	static OrderModel model;
	 static boolean isDataSource = true;
		
		static {
			if(isDataSource) {
				model = new OrderDAO();
			}
		}
	

    public CheckOutOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   	
			// prendo i parametri da inserire nella tabella di ordine
			int idUtente = Integer.parseInt(request.getParameter("idUtente"));
			int idPagamento = Integer.parseInt(request.getParameter("idPagamento"));
			int quantityTot = Integer.parseInt(request.getParameter("quantityTot"));
			double prezzoTot = Double.parseDouble(request.getParameter("prezzoTot"));
			
			
			System.out.println(idUtente + " " + idPagamento + " "+ quantityTot + " " + prezzoTot);
			// mi calcolo la data giornaliera + la data del giorno dopo alla data corrente
			long miliseconds = System.currentTimeMillis();
		    Date date1 = new Date(miliseconds);	  
	        Date tomorrow = new Date(date1.getTime() + (1000 * 60 * 60 * 24));

	       // inserisco tutto nel bean e chiamo il metodo doSave()  per salvare l'ordine
	        OrderBean bean = new OrderBean();
		    bean.setIdUtente(idUtente);
		    bean.setIdPagamento(idPagamento);
		    bean.setQuantitaArticoli(quantityTot);
		    bean.setImportoTotale(prezzoTot);
		    bean.setDataAcquisto(date1);
		    bean.setDataSpedizione(tomorrow);
		    bean.setStatoOrdine("ordindato");
		  
		    try {
		    	if(prezzoTot > 0) {
				model.doSave(bean);
				Cart cart = (Cart) request.getSession().getAttribute("cart");
				cart.deleteAll();
				System.out.println("Ordine Eseguito con successo");
				}else {

				    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cart.jsp");
					dispatcher.forward(request, response);
						
				}
		    	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    
		    
		    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cart.jsp");
			dispatcher.forward(request, response);
		    
		    
		    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static int randBetween(int start, int end) {
    
		return start + (int)Math.round(Math.random() * (end - start));
	}
}