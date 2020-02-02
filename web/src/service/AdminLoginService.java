package service;

import bean.Admin;
import dao.AdminDAO;

public class AdminLoginService {

	public Admin find(Admin admin){
		AdminDAO adminDAO = new AdminDAO();
		return adminDAO.find(admin);
	}
	
}
