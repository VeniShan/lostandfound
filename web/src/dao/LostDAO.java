package dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.Lost;
import db.DBAccess;

/**
 * @author vickie
 * 与tb_lost表相关的数据库操作
 */
public class LostDAO {

	//列举所有失物信息
	public List<Lost> all(){
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		List<Lost> lostList = new ArrayList<Lost>();
		try {
			sqlSession = dbAccess.getSqlSession();
			lostList = sqlSession.selectList("Lost.all");
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return lostList;
	}

	public int add(Lost lost) {
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		
		int result = 0;
		
		try {
			sqlSession = dbAccess.getSqlSession();
			result = sqlSession.insert("Lost.add", lost);
			sqlSession.commit();
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			sqlSession.close();
		}
		return result;
	}
	
}
