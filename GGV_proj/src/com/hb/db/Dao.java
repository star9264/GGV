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
	/////////////////////////////board(별아 건드리지마)///////////////////////////////////////////////
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
	// write
		public int getQWrite_ok(Q_VO qvo){
			SqlSession ss = null;
			int result = 0;
			try {
				ss = sessionFactory.openSession();
				result = ss.insert("q_insert", qvo);
				System.out.println("dao");
			} catch (Exception e) {
				System.out.println(e);
			}finally {
				ss.close();
			}
			return result;
		}
	//////////////////////////////////////////////////////////////////////////////////////

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
		
		public void go_res(Map map){
			SqlSession ss = null;
			List<P_VO> package_list = null;
			try {
				ss = sessionFactory.openSession();
				ss.update("package_reservation",map);
				
			} catch (Exception e) {
				System.out.println(e);

			} finally {
				ss.close();
			}
			
		}
	
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
	
	// 비밀번호 변경
	public int getPwd_update(String member_id, String pwd, String pwd2){
		SqlSession ss = null;
		int res = 0;
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("pwd", pwd);
		map.put("pwd2", pwd2);
		try {
			ss = sessionFactory.openSession(true);
			res = ss.update("pwd_update", map);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			ss.close();
		}
		return res;
	}
	
	// 아이디 찾기
	public List<Member_VO> getId_find(Member_VO member_VO){
		SqlSession ss = null;
		List<Member_VO> list = null;
		
		try {
			ss = sessionFactory.openSession(true);
			list = ss.selectList("id_find", member_VO);
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	// 비밀번호 찾기
	public Member_VO getPwd_find(String member_id, String name, String phone){
		SqlSession ss = null;
		Member_VO member_VO = new Member_VO();
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("name", name);
		map.put("phone", phone);
		try {
			ss = sessionFactory.openSession(true);
			member_VO = ss.selectOne("pwd_find", map);
		} catch (Exception e) {
			System.out.println(e);
		}
		return member_VO;
	}
	
	// 회원탈퇴
	public int getClient_leave(String member_id, String pwd){
		SqlSession ss = null;
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);  
		map.put("pwd", pwd);
		int res = 0;
		try {
			ss = sessionFactory.openSession(true);
			res = ss.delete("client_leave", map);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			ss.close();
		}
		return res;
	}

	// 아이디 중복확인
	public Member_VO getId_confirm(String member_id){
		SqlSession ss = null;
		Member_VO member_VO = new Member_VO();
		System.out.println(member_id);
		try {
			ss = sessionFactory.openSession(true);
			member_VO = ss.selectOne("id_confirm", member_id);
			System.out.println(member_VO.getMember_id());
		} catch (Exception e) {
			System.out.println(e);
		}
		return member_VO;
	}
	
	// 회원가입
	public int getJoin(Member_VO member_VO){
		SqlSession ss = null;
		int res2 = 0;
		try {
			ss = sessionFactory.openSession(true);
			res2 = ss.insert("join", member_VO);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			ss.close();
		}
		return res2;
	}

	public void reserve(Reservation reserve){
		SqlSession ss = null;
		
		try {
			ss = sessionFactory.openSession(true);
			
			ss.insert("reserve", reserve);
			ss.commit();
		} catch (Exception e) {
			System.out.println("오류!");
		}finally{
			ss.close();
		}

	}
	// 박스오피스
		public List<Movie_VO> getMovie_list01(){
			SqlSession ss = null;
			List<Movie_VO> list = null;
			System.out.println("1");
			try{
				System.out.println("2");
				ss = sessionFactory.openSession(true);
				list = ss.selectList("movie_list01");
				for (Movie_VO k : list) {
					System.out.println(k.getPoster());
				}
				System.out.println("3");
			}catch (Exception e) {
	          System.out.println(e);
			}
			return list;
		}

	}





























