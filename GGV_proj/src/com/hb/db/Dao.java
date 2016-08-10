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
				ss = sessionFactory.openSession();
				package_list = ss.selectList("package_information",idx);
			} catch (Exception e) {
				System.out.println(e);

			} finally {
				ss.close();
			}
			return package_list;
			
		}
		
		public int go_res(PR_VO pr_vo){
			SqlSession ss = null;
			int result = 0;
			System.out.println(pr_vo.getReservation_package()+"dao");
			System.out.println(pr_vo.getReservation_num()+"dao");
			try {
				ss = sessionFactory.openSession();
				System.out.println("try안");
				result = ss.insert("p_r_insert", pr_vo); 
			} catch (Exception e) {
				System.out.println(e);
			} finally{
				ss.close();
			}
			return result;
		
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
		} finally {
			ss.close();
		}
		
		return member_VO;
	}
	
	// 정보수정
	public int getInfo_update(Member_VO member_VO){
		SqlSession ss = null;
		int res = 0;
		try {
			ss = sessionFactory.openSession(true);
			res = ss.update("info_update", member_VO);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			ss.close();
		}
		
		return res;
	}

}




























