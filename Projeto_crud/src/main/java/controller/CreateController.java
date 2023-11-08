package controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ClientDAO;
import model.Cliente;


@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request,HttpServletResponse response)
			throws  IOException {
		
		Cliente cliente = new Cliente ();
	
		cliente.setNomeCliente(request.getParameter("nomeCliente"));
		cliente.setCpfCliente(request.getParameter("cpfCliente"));
		cliente.setEnderecoCliente(request.getParameter("enderecoCliente"));
		cliente.setTelefoneCliente(request.getParameter("telefoneCliente"));
		cliente.setEmailCliente(request.getParameter("emailCliente"));
		cliente.setSenhaCliente(request.getParameter("senhaCliente"));
		
	try {	
		ClientDAO clienteDAO =new ClientDAO();
		clienteDAO.createClient(cliente);
		
		response.sendRedirect("ReadController");
		
	} catch (Exception e)	{
		
		e.printStackTrace();
	 
	    
	}
	
		
	}

}
