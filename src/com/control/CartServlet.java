package com.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.dao.ProductDAO;
import com.model.javabeans.ProductModel;

import com.model.javabeans.Cart;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	static ProductModel model;
	
	static boolean isDataSource = true;

	static {
		if(isDataSource) {
			model = new ProductDAO();
		}
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = (String) request.getParameter("action");
		 Cart cart = (Cart)request.getSession().getAttribute("cart");
			if(cart == null) {
				cart = new Cart();
				request.getSession().setAttribute("cart", cart);
			}
			try {
				
			
			if(action!=null && action.equalsIgnoreCase("addCart")) {
				int id = Integer.parseInt(request.getParameter("id"));
				
				// aggiungi al carrello
				if(model.doRetrieveByKey(id).getDisp().equalsIgnoreCase("SI"))// && model.prendiPerId(id).getQuant()<quantita)
				cart.addProduct(id);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
				dispatcher.forward(request, response);
				}
			else if (action.equalsIgnoreCase("deletefromcart")) {
				int id = Integer.parseInt(request.getParameter("id"));
				// eliminiamo dal carrello
				cart.deleteAllProduct(id);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
				dispatcher.forward(request, response);
			}
			else if (action.equalsIgnoreCase("newQuant") && action!=null) {
				int quantita = Integer.parseInt(request.getParameter("quantita"));
				int id = Integer.parseInt(request.getParameter("id"));
				cart.setQuantity(id,quantita);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Cart.jsp");
				dispatcher.forward(request, response);
			}
			}catch (SQLException e) {
				System.out.println("Error:" + e.getMessage());
			}

			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
