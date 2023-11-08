package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import database.DatabaseConnection;
import model.Cliente;
import java.util.logging.Logger;

public class ClientDAO {
	private static final Logger LOGGER = Logger.getLogger(ClientDAO.class.getName());
	private Connection connection;
	private String sql;
	
	public ClientDAO()throws SQLException {
		connection = DatabaseConnection.createConnection();
	}

	 public void closeConnection() {
	        try {
	            if (connection != null && !connection.isClosed()) {
	                connection.close();
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	// CREATE
	public void createClient(Cliente cliente) {
		sql = "INSERT INTO cliente (nomeCliente, cpfCliente, enderecoCliente, telefoneCliente, emailCliente, senhaCliente) VALUES (?,?,?,?,?,?)";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, cliente.getNomeCliente());
			stmt.setString(2, cliente.getCpfCliente());
			stmt.setString(3, cliente.getEnderecoCliente());
			stmt.setString(4, cliente.getTelefoneCliente());
			stmt.setString(5, cliente.getEmailCliente());
			stmt.setString(6, cliente.getSenhaCliente());

			stmt.executeUpdate();
			System.out.println(
					"Cliente criado com sucesso: " + cliente.getNomeCliente() + " e CPF: " + cliente.getCpfCliente());

		}

		catch (SQLException e) {
			System.out.println("[LOG] Nao foi possivel criar o cliente. Mensagem" + e.getMessage());
		}

	}
	
	public Cliente findClient(int id) {
		Cliente client = new Cliente();
		sql = "SELECT * FROM cliente WHERE idCliente=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

		stmt.setInt(1, id);
		ResultSet r = stmt.executeQuery();

		if (r.next()) {
		 client = new Cliente();
		client.setIdCliente(r.getInt("idCliente"));
		client.setNomeCliente(r.getString("nomeCliente"));
		client.setCpfCliente(r.getString("cpfCliente"));
		client.setEnderecoCliente(r.getString("enderecoCliente"));
		client.setTelefoneCliente(r.getString("telefoneCliente"));
		client.setEmailCliente(r.getString("emailCliente"));
		client.setSenhaCliente(r.getString("emailCliente"));

		}

		} catch (Exception e) {
		e.printStackTrace();
		}
		return client;
		}

	
	public List<Cliente> findAllClients(){
		sql="SELECT * FROM cliente";
		
		List <Cliente> clients = new ArrayList<Cliente>();
		ResultSet r = null;
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			
		
			r = stmt.executeQuery();

			while (r.next()) {
			Cliente client = new Cliente();
			client.setIdCliente(r.getInt("idCliente"));
			client.setNomeCliente(r.getString("nomeCliente"));
			client.setCpfCliente(r.getString("cpfCliente"));
			client.setEnderecoCliente(r.getString("enderecoCliente"));
			client.setTelefoneCliente(r.getString("telefoneCliente"));
			client.setEmailCliente(r.getString("emailCliente"));
			client.setSenhaCliente(r.getString("senhaCliente"));
			
			clients.add(client);
			LOGGER.info("Cliente recuperado: " + client.toString());
			}

			} catch (Exception e) {
			e.printStackTrace();
			}
		
		return clients;
		
	}
	



	
	// UPDATE
	public void updateClient(Cliente cliente) {
		sql = "UPDATE cliente SET nomeCliente = ?, cpfCliente = ?, enderecoCliente = ?, telefoneCliente = ?, emailCliente = ?, senhaCliente = ? WHERE idCliente = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, cliente.getNomeCliente());
			stmt.setString(2, cliente.getCpfCliente());
			stmt.setString(3, cliente.getEnderecoCliente());
			stmt.setString(4, cliente.getTelefoneCliente());
			stmt.setString(5, cliente.getEmailCliente());
			stmt.setString(6, cliente.getSenhaCliente());
			stmt.setInt(7, cliente.getIdCliente());

			stmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	// DELETE
	public void deleteClient(int id) {
		sql = "DELETE FROM cliente WHERE idCliente = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);

			stmt.executeUpdate();
			System.out.println("Cliente deletado com sucesso!");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}
}