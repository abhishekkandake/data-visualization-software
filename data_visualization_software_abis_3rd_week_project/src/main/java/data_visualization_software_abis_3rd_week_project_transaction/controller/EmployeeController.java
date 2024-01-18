package data_visualization_software_abis_3rd_week_project_transaction.controller;

import java.sql.SQLException;

import data_visualization_software_abis_3rd_week_project_transaction.dao.EmployeeCRUD;
import data_visualization_software_abis_3rd_week_project_transaction.dto.Employee;

public class EmployeeController {
	public static void main(String [] args) throws ClassNotFoundException, SQLException {
		Employee employee = new Employee();
		employee.setId(1);
		employee.setName("abhi");
		
		EmployeeCRUD employeeCRUD = new EmployeeCRUD();
		employeeCRUD.saveEmployee(employee);
	}
}
