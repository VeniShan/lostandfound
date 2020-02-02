package service;

import bean.Staff;
import dao.StaffDAO;

/**
 * 工作人员更新昵称
 * @author vickie
 *
 */
public class StaffUpdateService {

	public int updateName(Staff staff){
		StaffDAO staffDAO = new StaffDAO();
		return staffDAO.updateName(staff);
	}
	
	public int updatePwd(Staff staff){
		StaffDAO staffDAO = new StaffDAO();
		return staffDAO.updatePwd(staff);
	}
	
}
