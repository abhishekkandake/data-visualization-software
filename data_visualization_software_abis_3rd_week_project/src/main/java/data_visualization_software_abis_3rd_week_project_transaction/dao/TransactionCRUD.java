package data_visualization_software_abis_3rd_week_project_transaction.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import data_visualization_software_abis_3rd_week_project_transaction.dto.Transaction;

public class TransactionCRUD {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/transaction","root","root");
		return connection;
	}
	public int saveTransaction(Transaction transaction) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into transaction values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		preparedStatement.setInt(1, transaction.getId());
		preparedStatement.setString(2, transaction.getName());
		preparedStatement.setString(3, transaction.getTruckno());
		preparedStatement.setString(4, transaction.getDiscription());
		preparedStatement.setString(5, transaction.getLooding());
		//preparedStatement.setString(6, transaction.getDeleveryDate());
		preparedStatement.setString(6, transaction.getLength());
		preparedStatement.setString(7, transaction.getWidth());
		preparedStatement.setString(8, transaction.getHeight());
		preparedStatement.setInt(9, transaction.getAmount());
		preparedStatement.setInt(10, transaction.getPrice());
		preparedStatement.setInt(11, transaction.getTotalamount());
		preparedStatement.setInt(12, transaction.getTotaldelevery());
		preparedStatement.setInt(13, transaction.getAdvance());
		preparedStatement.setString(14, transaction.getRemark());
		
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is saved");
		}
		else {
			System.out.println("fail to save deta");
		}
		return  count;
	}
	public List<Transaction> displayAllTransaction() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from transaction");
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Transaction> transactions = new ArrayList<Transaction>();
		while(resultSet.next()) {
			Transaction transaction = new Transaction();
			transaction.setId(resultSet.getInt(1));
			transaction.setName(resultSet.getString(2));
			transaction.setTruckno(resultSet.getString(3));
			transaction.setDiscription(resultSet.getString(4));
			transaction.setLooding(resultSet.getString(5));
			transaction.setLength(resultSet.getString(6));
			transaction.setWidth(resultSet.getString(7));
			transaction.setHeight(resultSet.getString(8));
			transaction.setAmount(resultSet.getInt(9));
			transaction.setPrice(resultSet.getInt(10));
			transaction.setTotalamount(resultSet.getInt(11));
			transaction.setTotaldelevery(resultSet.getInt(12));
			transaction.setAdvance(resultSet.getInt(13));
			transaction.setRemark(resultSet.getString(14));
			
			transactions.add(transaction);
		}
		return transactions;
	}
	public int deleteController(int id) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("delete from transaction where id = ?");
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
	public int updateTransaction(int id,Transaction transaction) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("update transaction set name = ?,truckno = ?,discription = ?,looding = ?,length =?,width=?,height=?,amount=?,price=?,totalamount=?,totaldelevery=?,advance=?,remark=? where id = ?");
		preparedStatement.setString(1, transaction.getName());
		preparedStatement.setString(2, transaction.getTruckno());
		preparedStatement.setString(3, transaction.getDiscription());
		preparedStatement.setString(4, transaction.getLooding());
		//preparedStatement.setString(6, transaction.getDeleveryDate());
		preparedStatement.setString(5, transaction.getLength());
		preparedStatement.setString(6, transaction.getWidth());
		preparedStatement.setString(7, transaction.getHeight());
		preparedStatement.setInt(8, transaction.getAmount());
		preparedStatement.setInt(9, transaction.getPrice());
		preparedStatement.setInt(10, transaction.getTotalamount());
		preparedStatement.setInt(11, transaction.getTotaldelevery());
		preparedStatement.setInt(12, transaction.getAdvance());
		preparedStatement.setString(13, transaction.getRemark());
		preparedStatement.setInt(14, id);
		
		int count=preparedStatement.executeUpdate();
		return count;
	}
}
