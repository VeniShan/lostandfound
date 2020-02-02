package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Staff;
import service.StaffService;

@SuppressWarnings("serial")
public class StaffNewServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
	
		int userid = Integer.parseInt(req.getParameter("userid"));
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String station = req.getParameter("station");
		int station_id = 0;
		if(station.equals("衡山路"))
			station_id = 1;
		
		Staff staff = new Staff();
		staff.setUserid(userid);
		staff.setName(name);
		staff.setPassword(password);
		staff.setStation_id(station_id);
		
		StaffService staffService = new StaffService();
		
		if(staffService.add(staff)==1){
			req.getRequestDispatcher("WEB-INF/jsp/back/addstaffsuccess.jsp").forward(req, resp);
		} else{
			req.getRequestDispatcher("WEB-INF/jsp/back/error404.jsp").forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
