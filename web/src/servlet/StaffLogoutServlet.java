package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Staff;

@SuppressWarnings("serial")
public class StaffLogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Staff staff = new Staff();
		
		staff.setId(0);
		staff.setUserid(0);
		staff.setPassword(null);
		staff.setStation_id(0);
		
		req.getSession().setAttribute("staff", staff);
		req.getRequestDispatcher("/WEB-INF/jsp/back/login.jsp").forward(req,resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
	
}
