package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Staff;
import service.StaffService;
import service.StaffUpdateService;

@SuppressWarnings("serial")
public class StaffPwdUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		//验证原密码
		Staff currentStaff = (Staff)req.getSession().getAttribute("staff");
		String currentPwd = req.getParameter("currentpwd");
		
		currentStaff.setPassword(currentPwd);
		
		StaffService staffService = new StaffService();
		
		if(staffService.find(currentStaff) !=null){
			//获取新密码
			String newpwd = req.getParameter("newpwd");
			//获取确认密码
			String repeatpwd = req.getParameter("repeatpwd");
			//首先两次密码要相同
			if(newpwd.equals(repeatpwd)){
				StaffUpdateService staffUpdateService = new StaffUpdateService();
				currentStaff.setPassword(newpwd);
				
				
				if(staffUpdateService.updatePwd(currentStaff)==1){
					req.getSession().setAttribute("staff", currentStaff);
					req.getRequestDispatcher("WEB-INF/jsp/back/profile.jsp").forward(req, resp);
				} else{
					System.out.println("查询错误，无法登入");
					req.getRequestDispatcher("WEB-INF/jsp/back/error404.jsp").forward(req, resp);

				}
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
	
}
