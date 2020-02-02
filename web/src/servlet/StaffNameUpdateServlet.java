package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Staff;
import service.StaffUpdateService;


@SuppressWarnings("serial")
public class StaffNameUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		String newName = req.getParameter("newname");
		System.out.println("New name是" + newName);

		
		Staff staffUpdate = (Staff)req.getSession().getAttribute("staff");

		System.out.println("userid是" + staffUpdate.getUserid());
		
		staffUpdate.setName(newName);
		
		System.out.println("name是" + staffUpdate.getName());

		StaffUpdateService staffUpdateService = new StaffUpdateService();
		
		if(staffUpdateService.updateName(staffUpdate)==1){
			req.getSession().setAttribute("staff", staffUpdate);
			req.getRequestDispatcher("WEB-INF/jsp/back/profile.jsp").forward(req, resp);
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
