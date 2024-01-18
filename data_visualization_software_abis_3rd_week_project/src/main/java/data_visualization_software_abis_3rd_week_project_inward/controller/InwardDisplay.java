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

@WebServlet("/inwarddeta")
public class InwardDisplay extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		InwardCRUD inwardCRUD = new InwardCRUD();
		Inward inward = new Inward();
		
		try {
			List<Inward> inwards=inwardCRUD.displayAllInward();
			req.setAttribute("List", inwards);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("inwarDeta.jsp");
			requestDispatcher.forward(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
