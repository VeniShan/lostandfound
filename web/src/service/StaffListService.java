package service;

import java.util.List;

import bean.Staff;
import dao.StaffDAO;

/**
 * @author vickie
 * 工作人员列表
 *
 */
public class StaffListService {

	public List<Staff> all(){
		StaffDAO staffDAO = new StaffDAO();
		return staffDAO.all();
	}
}
