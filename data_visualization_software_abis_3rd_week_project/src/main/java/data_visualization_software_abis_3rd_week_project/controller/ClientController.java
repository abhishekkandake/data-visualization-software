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

@WebServlet("/saveclient")
public class ClientController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		long phone = Long.parseLong(req.getParameter("phone"));
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Client client = new Client();
		
		client.setId(id);
		client.setName(name);
		client.setPhone(phone);
		client.setAddress(address);
		client.setEmail(email);
		client.setPassword(password);
		
		ClientCRUD clientCRUD = new ClientCRUD();
		try {
			int count=clientCRUD.saveClient(client);
			if(count!=0) {
				System.out.println("deta is inserted");
				List<Client> clients=clientCRUD.displayAll();
				req.setAttribute("list", clients);
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("client2.jsp");
				requestDispatcher.forward(req, resp);
			}
			else {
				System.out.println("fail to inserted");
				
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("client.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
