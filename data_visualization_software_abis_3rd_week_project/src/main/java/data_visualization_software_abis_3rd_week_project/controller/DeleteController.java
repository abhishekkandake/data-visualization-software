package data_visualization_software_abis_3rd_week_project.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data_visualization_software_abis_3rd_week_project.dao.ClientCRUD;
import data_visualization_software_abis_3rd_week_project.dto.Client;

@WebServlet("/delete")
public class DeleteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		Client client = new Client();
		client.setId(id);
		
		ClientCRUD clientCRUD = new ClientCRUD();
		try {
			int res=clientCRUD.deleteClient(id);
			if(res!=0) {
				System.out.println("deta is deleted");
				List<Client> clients=clientCRUD.displayAll();
				req.setAttribute("list", clients);
				
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("client2.jsp");
				requestDispatcher.forward(req, resp);
			}
			else {
				System.out.println("deta is not deleted");
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("client.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
