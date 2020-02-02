package service;

import java.util.List;

import bean.User;
import dao.UserDAO;

/**
 * 用户列表相关的功能
 * @author vickie
 *
 */
public class UserListService {

	public List<User> all(){
		UserDAO userDAO = new UserDAO();
		return userDAO.all();
	}
}
