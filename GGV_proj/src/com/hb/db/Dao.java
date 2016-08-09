package com.hb.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

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
/*	// view
	public BbsVO getView(String b_idx) {
		SqlSession ss = null;
		BbsVO bvo = null;
		try {
			ss = sessionFactory.openSession(true);
			bvo = ss.selectOne("onelist", b_idx);

		} catch (Exception e) {
			ss.close();
		} finally {
			ss.close();
		}
		return bvo;
	}
		
	// write
	public int getWrite_ok(BbsVO bvo) {
		SqlSession ss = null;
		int result = 0;
		try {
			ss = sessionFactory.openSession();
			result = ss.insert("insert", bvo);
		} catch (Exception e) {

		} finally {
			ss.close();
		}
		return result;
	}*/
	
	// login
	public Member_VO getLogin(String member_id, String pwd){
		SqlSession ss = null;
		Member_VO member_VO = new Member_VO();
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("pwd", pwd);
		try {
			ss = sessionFactory.openSession(true);
			member_VO = ss.selectOne("login", map);
		} catch (Exception e) {
			member_VO = null;
		}
		
		return member_VO;
	}
	
	// 정보수정
	public Member_VO getInfo_update(Member_VO member_VO){
		SqlSession ss = null;
		Member_VO member_VO2 = new Member_VO();
		try {
			ss = sessionFactory.openSession(true);
			ss.update("info_update", member_VO);
			member_VO2 = ss.selectOne("login2", member_VO);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			ss.close();
		}
		
		return member_VO2;
	}

}




























