package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Lost;
import service.LostService;

@SuppressWarnings("serial")
public class LostNewServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String name = req.getParameter("name");
		
		String type = req.getParameter("type");
		int type_id = 0;
		if(type.equals("生活用品"))
			type_id = 1;
		else if(type.equals("通讯设备"))
			type_id = 2;
		else if(type.equals("书籍杂志"))
			type_id = 3;
		
		String lineflag = req.getParameter("lineflag");
		int line_flag = 0;
		if(lineflag.equals("车内"))
			line_flag = 1;
		if(lineflag.equals("车外"))
			line_flag = 0;
		
		String station = req.getParameter("station");
		int station_id = 0;
		if(station.equals("衡山路"))
			station_id = 1;
		
		String line = req.getParameter("line");
		int line_id = 0;
		if(line.equals("1号线"))
			line_id = 1;
		
		int phone = Integer.parseInt(req.getParameter("phone"));
		
		String sta = req.getParameter("status");
		int status = 0;
		if(sta.equals("在库"))
			status = 1;
		else if(sta.equals("领回"))
			status = 2;
		else if(sta.equals("转移"))
			status = 3;
		
		
		Lost lost = new Lost();
		lost.setName(name);
		lost.setType_id(type_id);
		lost.setStation_id(station_id);
		lost.setLine_id(line_id);
		lost.setLine_flag(line_flag);
		lost.setPhone(phone);
		lost.setStatus(status);
		

		LostService lostService = new LostService();

		if(lostService.add(lost) == 1)
			req.getRequestDispatcher("WEB-INF/jsp/back/addlostsuccess.jsp").forward(req, resp);
		else
			req.getRequestDispatcher("WEB-INF/jsp/back/error404.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
