package com.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.javabeans.UserBean;
import com.model.dao.UserDAO;
import com.model.javabeans.UserModel;

/**
 * Servlet implementation class UserSignupServlet
 */
@WebServlet("/UserSignupServlet")
public class UserSignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static UserModel model;
	static boolean isDataSource = true;
	
	static {
		if(isDataSource) {
			model = new UserDAO();
		}
	}
    public UserSignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		String username= request.getParameter("user");
		String via = request.getParameter("via");
		String cap = request.getParameter("cap");
		String citta = request.getParameter("citta");
		String provincia = request.getParameter("provincia");
		int civico = Integer.parseInt(request.getParameter("civico"));
		
		UserBean bean = new UserBean();
		bean.setAdmin(0);
		bean.setNome(nome);
		bean.setCognome(cognome);
		bean.setTelefono(telefono);
		bean.setEmail(email);
		bean.setPassword(password);
		bean.setUsername(username);
		bean.setVia(via);
		bean.setCitta(citta);
		bean.setnCivico(civico);
		bean.setProvincia(provincia);
		bean.setCap(cap);
		
		
		try {
			request.setAttribute("utente_signup_check", "true");
			model.doSave(bean);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/LoginPage.jsp");
			
			dispatcher.forward(request, response);
		} catch (SQLException e) {
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
