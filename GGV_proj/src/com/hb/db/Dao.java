package com.hb.db;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.web.bind.annotation.RequestParam;

public class Dao {
	private SqlSessionFactory sessionFactory;
	
	
	public SqlSessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SqlSessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	// q_list
		public List<Q_VO> getQ_list(Map<String, String> map){
			SqlSession ss =  null;
			List<Q_VO> q_list = null;
			try {
				ss=  sessionFactory.openSession();
				q_list = ss.selectList("q_list");
			}catch (Exception e) {
				System.out.println(e);
				// TODO: handle exception
			}finally {
				ss.close();
			}
			return q_list;
		}
	
	public List<P_VO> getpackage_info(String idx){
		SqlSession ss = null;
		List<P_VO> package_list = null;
		try {
			System.out.println(idx);
			System.out.println("getpackage_info");
			ss = sessionFactory.openSession();
			System.out.println(idx);
			package_list = ss.selectList("package_information",idx);
			System.out.println(package_list.size());
			System.out.println("매퍼갔다옴");
		} catch (Exception e) {
			System.out.println(e);

		} finally {
			ss.close();
		}
		return package_list;
		
	}
	

}
