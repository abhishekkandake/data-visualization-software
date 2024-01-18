package data_visualization_software_abis_3rd_week_project_transaction.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import data_visualization_software_abis_3rd_week_project_transaction.dto.Employee;

public class EmployeeCRUD {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/transaction","root","root");
		return connection;
	}
	public void saveEmployee(Employee employee) throws ClassNotFoundException, SQLException{
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement("insert into employee values(?,?)");
		preparedStatement.setInt(1, employee.getId());
		preparedStatement.setString(2, employee.getName());
		
		int count=preparedStatement.executeUpdate();
		if(count!=0) {
			System.out.println("deta is inserted");
		}
		else {
			System.out.println("fail to inserted");
		}
		
	}
}
