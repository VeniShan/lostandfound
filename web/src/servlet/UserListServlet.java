package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserListService;

/*
 * 已注册用户列表页面初始化控制
 */
@SuppressWarnings("serial")
public class UserListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		/*
		 * Servlet 应该具有的功能
		 */
		//设置编码
		req.setCharacterEncoding("UTF-8");
		
		//接收页面的值
		
		//向页面传值
		
		
		//查询，并传给页面
		UserListService userListService = new UserListService();
		req.setAttribute("userList", userListService.all());
		//页面跳转
		req.getRequestDispatcher("/WEB-INF/jsp/back/basic_table.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
