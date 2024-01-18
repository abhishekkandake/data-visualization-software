package data_visualization_software_abis_3rd_week_project_transaction.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data_visualization_software_abis_3rd_week_project_transaction.dao.TransactionCRUD;
import data_visualization_software_abis_3rd_week_project_transaction.dto.Transaction;

@WebServlet("/deletetransaction")
public class DeleteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		TransactionCRUD transactionCRUD = new TransactionCRUD();
		try {
			int count=transactionCRUD.deleteController(id);
			if(count!=0) {
				System.out.println("deta is deleted");
				List<Transaction> transactions=transactionCRUD.displayAllTransaction();
				req.setAttribute("List", transactions);
				
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("transaction2.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
