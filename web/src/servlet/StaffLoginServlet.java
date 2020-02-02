package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Staff;
import service.StaffService;

@SuppressWarnings("serial")
public class StaffLoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		int userid = Integer.parseInt(req.getParameter("userid"));
		String password = req.getParameter("password");
		
		Staff staff = new Staff();
		staff.setUserid(userid);
		staff.setPassword(password);

		StaffService staffService = new StaffService();
		
		if (staffService.find(staff) != null) {
			req.getSession().setAttribute("staff", staffService.find(staff));
			req.getRequestDispatcher("WEB-INF/jsp/back/index.jsp").forward(req, resp);
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
