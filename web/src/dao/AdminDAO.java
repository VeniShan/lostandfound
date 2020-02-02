package dao;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;

import bean.Admin;
import db.DBAccess;

public class AdminDAO {
	
	public Admin find(Admin admin){
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		Admin ar = new Admin();
		try {
			sqlSession = dbAccess.getSqlSession();
			ar = sqlSession.selectOne("Admin.find", admin);
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return ar;	
	}

}
