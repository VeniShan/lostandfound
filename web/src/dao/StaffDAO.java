package dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.Staff;
import db.DBAccess;

/**
 * 和tb_staff表有关的数据库操作
 * @author vickie
 *
 */
public class StaffDAO {

	//查找
	public Staff find(Staff staff){
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		Staff sr = new Staff();
		try {
			sqlSession = dbAccess.getSqlSession();
			sr = sqlSession.selectOne("Staff.find", staff);
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return sr;
	}
	
	
	//更改昵称
	public int updateName(Staff staff) {

		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		int result = 0;
		try {
			sqlSession = dbAccess.getSqlSession();
			result = sqlSession.update("Staff.updateName", staff);
			sqlSession.commit();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return result;
	}


	//更改密码
	public int updatePwd(Staff staff) {

		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		int result = 0;
		try {
			sqlSession = dbAccess.getSqlSession();
			result = sqlSession.update("Staff.updatePwd", staff);
			sqlSession.commit();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return result;
	}


	//列举所有工作人员信息
	public List<Staff> all() {
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		List<Staff> staffList = new ArrayList<Staff>();
		try {
			sqlSession = dbAccess.getSqlSession();
			//通过sqlSession执行SQL语句
			staffList = sqlSession.selectList("Staff.all");
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return staffList;
	}


	//注册新的工作人员
	public int add(Staff staff) {

		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		int result = 0;
		try {
			sqlSession = dbAccess.getSqlSession();
			result = sqlSession.insert("Staff.add", staff);
			sqlSession.commit();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		
		return result;
	}
	
}
