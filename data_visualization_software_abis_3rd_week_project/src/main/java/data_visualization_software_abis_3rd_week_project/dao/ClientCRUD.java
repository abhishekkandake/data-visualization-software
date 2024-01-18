package data_visualization_software_abis_3rd_week_project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.Query;

import data_visualization_software_abis_3rd_week_project.dto.Client;

public class ClientCRUD {
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/clientdb","root","root");
		return connection;
	}
	public int saveClient(Client client) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into client values(?,?,?,?,?,?)");
		preparedStatement.setInt(1, client.getId());
		preparedStatement.setString(2, client.getName());
		preparedStatement.setLong(3, client.getPhone());
		preparedStatement.setString(4, client.getAddress());
		preparedStatement.setString(5, client.getEmail());
		preparedStatement.setString(6, client.getPassword());
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is inserted");
		}
		else {
			System.out.println("fail to insert");
		}
		return count;
	}
	public List<Client> displayAll() throws ClassNotFoundException, SQLException{
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from client");
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Client> clients = new ArrayList<Client>();
		
		while(resultSet.next()) {
			
			Client client = new Client();
			
			client.setId(resultSet.getInt(1));
			client.setName(resultSet.getString(2));
			client.setPhone(resultSet.getLong(3));
			client.setAddress(resultSet.getString(4));
			client.setEmail(resultSet.getString(5));
			client.setPassword(resultSet.getString(6));
			
			clients.add(client);
		}
		if(clients!=null) {
			System.out.println("deta is inserted");
		}
		else {
			System.out.println("fail to inserted");
		}
		return clients;
	}
	public int deleteClient(int id) throws ClassNotFoundException, SQLException {
		Connection  connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("delete from client where id = ?");
		preparedStatement.setInt(1, id);
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is deleted");
		}
		else {
			System.out.println("fail to deleted");
		}
		return count;
	}
	public List<Client> printClient(int id) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from client where id =?");
		preparedStatement.setInt(1, id);
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Client> clients = new ArrayList<Client>();
		while(resultSet.next()) {
			Client client2 = new Client();
			client2.setId(resultSet.getInt(1));
			client2.setName(resultSet.getString(2));
			client2.setPhone(resultSet.getLong(3));
			client2.setAddress(resultSet.getString(4));
			client2.setEmail(resultSet.getString(5));
			client2.setPassword(resultSet.getString(6));
			
			clients.add(client2);
		}
		return clients;
	}
	public List<Client> searchClient(int id) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from client where id = ?");
		preparedStatement.setInt(1, id);
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Client> clients = new ArrayList<Client>();
		while(resultSet.next()) {
			Client client2 = new Client();
			client2.setId(resultSet.getInt(1));
			client2.setName(resultSet.getString(2));
			client2.setPhone(resultSet.getLong(3));
			client2.setAddress(resultSet.getString(4));
			client2.setEmail(resultSet.getString(5));
			client2.setPassword(resultSet.getString(6));
			
			clients.add(client2);
		}
		return clients;
	}
}
