package data_visualization_software_abis_3rd_week_project_inward.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data_visualization_software_abis_3rd_week_project_inward.dao.InwardCRUD;

@WebServlet("/histogram")
public class HistogramController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		InwardCRUD inwardCRUD = new InwardCRUD();
		try {
			String count=inwardCRUD.countTelicom();
			System.out.println(count);
			req.setAttribute("List", count);
			String sum = inwardCRUD.countTCS();
			req.setAttribute("List2", sum);
			String sum2 = inwardCRUD.countMahendra();
			req.setAttribute("List3", sum2);
			String sum3 = inwardCRUD.countBajaj();
			req.setAttribute("List4", sum3);
			String sum4 = inwardCRUD.countABis();
			req.setAttribute("List5", sum4);
			String sum5 = inwardCRUD.countInfosys();
			req.setAttribute("List6", sum5);
			String sum6 = inwardCRUD.countWipro();
			req.setAttribute("List7", sum6);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("histogram.jsp");
			requestDispatcher.forward(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
