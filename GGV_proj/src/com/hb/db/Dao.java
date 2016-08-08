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


	// db 사용 메소드
	// 전체 게시물 수
	public int getTotalCount(){
		SqlSession ss= null;
		int count = 0;
		try {
			ss = sessionFactory.openSession();
			count = ss.selectOne("totalCount");
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			ss.close();
		}
		return count;
	}
	
	// 리스트
	public List<Q_VO> getList(Map<String, Integer> map) {
		SqlSession ss = null;
		List<Q_VO> list = null;
		try {
			ss = sessionFactory.openSession();
			list = ss.selectList("list");
		} catch (Exception e) {

		} finally {
			ss.close();
		}
		return list;
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
}
