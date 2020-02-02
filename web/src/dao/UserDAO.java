package dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.User;
import db.DBAccess;

/**
 * 和tb_user表相关的数据库操作
 * @author vickie
 *
 */
public class UserDAO {

	
	/**
	 * 根据查询条件查询用户列表
	 */
	public List<User> queryUserList(String userid){
		
		return null;
	}
	
	
	/**
	 * 列举所有用户信息
	 * @return
	 */
	public List<User> all(){
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		List<User> userList = new ArrayList<User>();
		try {
			sqlSession = dbAccess.getSqlSession();
			//通过sqlSession执行SQL语句
			userList = sqlSession.selectList("User.all");
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return userList;
	}
	
}
