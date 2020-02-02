package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Admin;

@SuppressWarnings("serial")
public class AdminLogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Admin admin = new Admin();
		
		admin.setId(0);
		admin.setUserid(0);
		admin.setName(null);
		admin.setPassword(null);
		
		req.getSession().setAttribute("admin", admin);
		req.getRequestDispatcher("/WEB-INF/jsp/back/adminlogin.jsp").forward(req,resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
