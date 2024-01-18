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

@WebServlet("/savetransaction")
public class TransactionController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String truckno = req.getParameter("truckno");
		String discription =req.getParameter("discription");
		String looding = req.getParameter("looding");
		//String deleveryDate = req.getParameter("deleveryDate");
		String length = req.getParameter("length");
		String width = req.getParameter("width");
		String height = req.getParameter("height");
		int amount = Integer.parseInt(req.getParameter("amount"));
		int price = Integer.parseInt(req.getParameter("price"));
		int totalamount = Integer.parseInt(req.getParameter("totalamount"));
		int totaldelevery = Integer.parseInt(req.getParameter("totaldelevery"));
		int advance = Integer.parseInt(req.getParameter("advance"));
		String remark = req.getParameter("remark");
		
		Transaction transaction = new Transaction();
		transaction.setId(id);
		transaction.setName(name);
		transaction.setTruckno(truckno);
		transaction.setDiscription(discription);
		transaction.setLooding(looding);
		//transaction.setDeleveryDate(deleveryDate);
		transaction.setLength(length);
		transaction.setWidth(width);
		transaction.setHeight(height);
		transaction.setAmount(amount);
		transaction.setTotalamount(totalamount);
		transaction.setTotaldelevery(totaldelevery);
		transaction.setAdvance(advance);
		transaction.setRemark(remark);
		
		TransactionCRUD transactionCRUD = new TransactionCRUD();
		try {
			int count=transactionCRUD.saveTransaction(transaction);
			if(count!=0) {
				System.out.println("save all deta");
				List<Transaction> transactions=transactionCRUD.displayAllTransaction();
				req.setAttribute("List", transactions);
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("transaction2.jsp");
				requestDispatcher.forward(req, resp);
			}
			else {
				System.out.println("fail to save");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
