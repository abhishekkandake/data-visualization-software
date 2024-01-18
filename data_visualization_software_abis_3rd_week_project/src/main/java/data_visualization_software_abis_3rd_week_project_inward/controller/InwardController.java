package data_visualization_software_abis_3rd_week_project_inward.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data_visualization_software_abis_3rd_week_project_inward.dao.InwardCRUD;
import data_visualization_software_abis_3rd_week_project_inward.dto.Inward;

@WebServlet("/saveinward")
public class InwardController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id =  Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int amount = Integer.parseInt(req.getParameter("amount"));
		int totalamount = Integer.parseInt(req.getParameter("totalamount"));
		int discount = Integer.parseInt(req.getParameter("discount"));
		String discription = req.getParameter("discription");
		
		Inward inward = new Inward();
		inward.setId(id);
		inward.setName(name);
		inward.setAmount(amount);
		inward.setTotalamount(totalamount);
		inward.setDiscount(discount);
		inward.setDiscription(discription);
		
		InwardCRUD inwardCRUD = new InwardCRUD();
		try {
			String count2=inwardCRUD.countTelicom();
			System.out.println(count2);
			int count=inwardCRUD.saveInward(inward);
			if(count!=0) {
				System.out.println("deta is inserted");
				List<Inward> inwards=inwardCRUD.displayAllInward();
				req.setAttribute("List", inwards);
				
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("inwarDeta.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
