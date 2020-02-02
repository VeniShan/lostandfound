package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Admin;
import service.AdminLoginService;

@SuppressWarnings("serial")
public class AdminLoginServlet extends HttpServlet{


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		int userid = Integer.parseInt(req.getParameter("userid"));
		String password = req.getParameter("password");
		System.out.println(userid);
		
		Admin admin = new Admin();
		admin.setUserid(userid);
		admin.setPassword(password);
		
		AdminLoginService adminLoginService = new AdminLoginService();
		
		if (adminLoginService.find(admin) != null) {
			req.getSession().setAttribute("admin", adminLoginService.find(admin));
			req.getRequestDispatcher("WEB-INF/jsp/back/adminindex.jsp").forward(req, resp);
		} else{
			System.out.println("查询错误，无法登入");
			req.getRequestDispatcher("WEB-INF/jsp/back/error404.jsp").forward(req, resp);
		}
			
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
