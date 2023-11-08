package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDAO;


@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("idCliente"));
		
	
		
		try {
			
		ClientDAO cDAO = new ClientDAO();
		cDAO.deleteClient(id);
		
		response.sendRedirect("ReadController");
				
	}catch (SQLException e) {
		e.printStackTrace();		
	}


}
}