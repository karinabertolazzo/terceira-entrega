package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ClientDAO;
import model.Cliente;


@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = Logger.getLogger(ClientDAO.class.getName());
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idCli = Integer.parseInt(request.getParameter("idCliente"));
		
		try {
		
		ClientDAO cDAO = new ClientDAO();
		Cliente client = cDAO.findClient(idCli);
		
		request.setAttribute("client", client);
		//LOGGER.info("Cliente recuperado: " + client.toString());
		
		RequestDispatcher rd = request.getRequestDispatcher("atualizar.jsp");
		rd.forward(request, response);
		
		} catch (SQLException e) {
			e.printStackTrace(); 
		
	}

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Cliente cliente = new Cliente();
			
			cliente.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
			cliente.setNomeCliente(request.getParameter("nomeCliente"));
			cliente.setCpfCliente(request.getParameter("cpfCliente"));
			cliente.setTelefoneCliente(request.getParameter("telefoneCliente"));
			cliente.setEnderecoCliente(request.getParameter("enderecoCliente"));
			cliente.setEmailCliente(request.getParameter("emailCliente"));
			cliente.setSenhaCliente(request.getParameter("senhaCliente"));
			
			
			ClientDAO cDAO = new ClientDAO();
			cDAO.updateClient(cliente);
			LOGGER.info("Cliente recuperado: " + cliente.toString());
			
			response.sendRedirect("ReadController");
		} catch (Exception e) {
	}

	}
	
}
