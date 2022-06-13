package com.control;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.dao.OrderDAO;
import com.model.dao.PaymentDAO;
import com.model.javabeans.OrderModel;
import com.model.javabeans.PaymentBean;
import com.model.javabeans.PaymentModel;


/**
 * Servlet implementation class UserAreaServlet
 */
@WebServlet("/UserAreaServlet")
public class UserAreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static OrderModel model2 = new OrderDAO();
	static PaymentModel model = new PaymentDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAreaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			if(action!=null && action.equalsIgnoreCase("datiUtente")) {
				int idUser = Integer.parseInt(request.getParameter("idUtente"));
				Collection<?> metodi = (Collection<?>) model.doRetrieveByUser(idUser);
				request.setAttribute("metodiUser",metodi);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserArea.jsp");
				dispatcher.forward(request, response);
			}
			if(action!=null && action.equalsIgnoreCase("insertPayment")) {
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				int id=Integer.parseInt(request.getParameter("idutente"));
				String ncarta=request.getParameter("numeroCarta");
				int cvv=Integer.parseInt(request.getParameter("cvv"));
				String scad = request.getParameter("dataScadenza");
				java.sql.Date date =(java.sql.Date) formatter.parse(scad);
				PaymentBean bean = new PaymentBean();
				bean.setCvv(cvv);
				bean.setNcarta(ncarta);
				bean.setIdUtenteRef(id);
				bean.setDataScad(date);
				model.doSave(bean);
				
				Collection<?> metodi = (Collection<?>) model.doRetrieveByUser(id);
				request.setAttribute("metodiUser",metodi);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserArea.jsp");
				dispatcher.forward(request, response);
			}
		}catch (SQLException e) 
		{
			System.out.println("Error:" + e.getMessage());
			} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
