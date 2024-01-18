package data_visualization_software_abis_3rd_week_project_inward.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import data_visualization_software_abis_3rd_week_project_inward.dto.Inward;

public class InwardCRUD {
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/transaction","root","root");
		return connection;
	}
	public int saveInward(Inward inward) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into inward values(?,?,?,?,?,?)");
		preparedStatement.setInt(1, inward.getId());
		preparedStatement.setString(2, inward.getName());
		preparedStatement.setInt(3, inward.getAmount());
		preparedStatement.setInt(4, inward.getTotalamount());
		preparedStatement.setInt(5, inward.getDiscount());
		preparedStatement.setString(6, inward.getDiscription());
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is saved");
		}
		else {
			System.out.println("fail to save");
		}
		return count;
	}
	public  List<Inward>  displayAllInward() throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select * from inward");
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Inward>inwards = new ArrayList<Inward>();
		while(resultSet.next()) {
			Inward inward = new Inward();
			inward.setId(resultSet.getInt(1));
			inward.setName(resultSet.getString(2));
			inward.setAmount(resultSet.getInt(3));
			inward.setTotalamount(resultSet.getInt(4));
			inward.setDiscount(resultSet.getInt(5));
			inward.setDiscription(resultSet.getString(6));
			
			inwards.add(inward);
		}
		return inwards;
	}
	public int deleteInward(int id) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("delete from inward where id =?");
		preparedStatement.setInt(1, id);
		int count=preparedStatement.executeUpdate();
		return count;
	}
	public List<Inward> searchInward(int id,int id2) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM inward WHERE amount BETWEEN id=? AND id2=?;");
		preparedStatement.setInt(1, id);
		preparedStatement.setInt(2, id2);
		ResultSet resultSet=preparedStatement.executeQuery();
		List<Inward> inwards = new ArrayList<Inward>();
		while(resultSet.next()) {
			Inward inward = new Inward();
			inward.setId(resultSet.getInt(1));
			inward.setName(resultSet.getString(2));
			inward.setAmount(resultSet.getInt(3));
			inward.setTotalamount(resultSet.getInt(4));
			inward.setDiscount(resultSet.getInt(5));
			inward.setDiscription(resultSet.getString(6));
			
			inwards.add(inward);
		}
		return inwards;
	}
	public String countTelicom() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'techm'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String count= " ";
		while (resultSet.next()) {
			count = count  + resultSet.getString(1);
		}
		System.out.println(count);
		return count;
	}
	public String countTCS() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'tcs'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String sum = " ";
		while(resultSet.next()) {
			sum = sum+resultSet.getString(1);
		}
		System.out.println(sum);
		return sum;
	}
	public String countMahendra() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'mahendra'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String sum = " ";
		while(resultSet.next()) {
			sum = sum+resultSet.getString(1);
		}
		return sum;
	}
	public String countBajaj() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'bajaj'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String sum = " ";
		while(resultSet.next()) {
			sum = sum+resultSet.getString(1);
		}
		return sum;
	}
	public String countABis() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'ABis'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String sum = " ";
		while(resultSet.next()) {
			sum = sum+resultSet.getString(1);
		}
		return sum;
	}
	public String countInfosys() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'infosys'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String sum = " ";
		while(resultSet.next()) {
			sum = sum+resultSet.getString(1);
		}
		return sum;
	}
	public String countWipro() throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("select sum(amount) from inward where name = 'wipro'");
		ResultSet resultSet=preparedStatement.executeQuery();
		String sum = " ";
		while(resultSet.next()) {
			sum = sum+resultSet.getString(1);
		}
		System.out.println("wipro = "+sum);
		return sum;
	}
}