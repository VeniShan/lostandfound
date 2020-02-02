package service;

import bean.Staff;
import dao.StaffDAO;

public class StaffService {

	public Staff find(Staff staff){
		StaffDAO staffDAO = new StaffDAO();
		return staffDAO.find(staff);
	}
	
	public int add(Staff staff){
		StaffDAO staffDAO = new StaffDAO();
		return staffDAO.add(staff);
	}
	
	
	
}
