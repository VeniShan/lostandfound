package service;

import java.util.List;

import bean.Lost;
import dao.LostDAO;

/**
 * 失物相关功能
 * @author vickie
 *
 */
public class LostService {

	public List<Lost> all(){
		LostDAO lostDAO = new LostDAO();
		return lostDAO.all();
	}
	
	public int add(Lost lost){
		LostDAO lostDAO = new LostDAO();
		return lostDAO.add(lost);
	}
	
}
