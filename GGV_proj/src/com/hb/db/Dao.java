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


	///////////////////////////// board(별아
	///////////////////////////// 건드리지마)///////////////////////////////////////////////
	// q_list

		public List<Q_VO> getQ_list(Map<String, String> map){
			SqlSession ss =  null;
			List<Q_VO> q_list = null;
			try {
				ss=  sessionFactory.openSession();
				q_list = ss.selectList("q_list", map);
			}catch (Exception e) {
				System.out.println(e);
				// TODO: handle exception
			}finally {
				ss.close();
			}
			return q_list;
		}
		// n_list
		
		public List<Q_VO> getN_list(String type){
			SqlSession ss =  null;
			List<Q_VO> n_list = null;
			try {
				ss=  sessionFactory.openSession();
				n_list = ss.selectList("n_list", type);
			}catch (Exception e) {
				System.out.println(e);
				// TODO: handle exception
			}finally {
				ss.close();
			}
			return n_list;
		}
		// getFQ_list_list
		
		public List<FQ_VO> getFQ_list(){
			SqlSession ss =  null;
			List<FQ_VO> f_list = null;
			try {
				ss=  sessionFactory.openSession();
				f_list = ss.selectList("f_list");
			}catch (Exception e) {
				System.out.println(e);
				// TODO: handle exception
			}finally {
				ss.close();
			}
			return f_list;
		}
		// write
		public int getQWrite_ok(Q_VO qvo) {
			SqlSession ss = null;
			int result = 0;
			try {
				ss = sessionFactory.openSession();
				result = ss.insert("q_insert", qvo);
				System.out.println("dao");
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				ss.close();
			}
			return result;
		}
		// fqwrite
		public int getFQWrite_ok(FQ_VO fvo) {
			SqlSession ss = null;
			int result = 0;
			try {
				ss = sessionFactory.openSession();
				result = ss.insert("f_insert", fvo);
				System.out.println("dao");
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				ss.close();
			}
			return result;
		}
		// q_view
		public Q_VO getQView(String question_idx) {
			SqlSession ss = null;
			Q_VO qvo = null;
			try {
				ss = sessionFactory.openSession(true);
				qvo = ss.selectOne("q_view", question_idx);

			} catch (Exception e) {
				System.out.println(e);
			} finally {
				ss.close();
			}
			return qvo;
		}
		// fq_view
		public FQ_VO getFQView(String f_idx) {
			SqlSession ss = null;
			FQ_VO fvo = null;
			try {
				ss = sessionFactory.openSession(true);
				fvo = ss.selectOne("fq_view", f_idx);
				
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				ss.close();
			}
			return fvo;
		}
		// q_answer
		public int getQAnswer(A_VO avo){
			SqlSession ss = null;
			int result = 0;
			System.out.println("avo"+avo.getContent());
			System.out.println("avo"+avo.getQuestion_idx());
			try{
				ss = sessionFactory.openSession();
				result = ss.insert("q_answer",avo);
			}catch(Exception e){
				System.out.println("q_answer"+e);
			}finally {
				ss.close();
			}
			return result;
		}
		public A_VO getQAnswer_list(String question_idx){
			SqlSession ss =  null;
			A_VO avo = null;
			System.out.println("avo"+question_idx);
			try {
				ss=  sessionFactory.openSession();
				avo = ss.selectOne("a_list", question_idx);
			}catch (Exception e) {
				System.out.println(e);
				// TODO: handle exception
			}finally {
				ss.close();
			}
			return avo;
		}
		

	public List<P_VO> getpackage_info(String idx) {
		SqlSession ss = null;
		List<P_VO> package_list = null;
		try {
			ss = sessionFactory.openSession();
			package_list = ss.selectList("package_information", idx);
		} catch (Exception e) {
			System.out.println(e);

		} finally {
			ss.close();
		}
		return package_list;

	}

	public void go_res(Map map) {
		SqlSession ss = null;
		try {
			ss = sessionFactory.openSession();
			ss.update("package_reservation", map);

		} catch (Exception e) {
			System.out.println(e);

		} finally {
			ss.close();
		}

	}

	public String get_res(String id) {
		SqlSession ss = null;
		String now_reservation = null;
		try {
			ss = sessionFactory.openSession();
			now_reservation = ss.selectOne("get_reservation", id);
		} catch (Exception e) {
			System.out.println(e);

		} finally {
			ss.close();
		}

		return now_reservation;

	}
	
	public List<Member_VO> getpackage_res(String id){
		SqlSession ss = null;
		List<Member_VO> package_res = null;
		
		try {
			ss = sessionFactory.openSession();
			package_res = ss.selectList("package_res",id);
			
		} catch (Exception e) {
			System.out.println(e);

		} finally {
			ss.close();
		}
		return package_res;
	}

	//////////////////////////////////////////////////////////////////////////////////////

	// login
	public Member_VO getLogin(String member_id, String pwd) {
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
	public int getInfo_update(Member_VO member_VO) {
		SqlSession ss = null;
		int res = 0;
		try {
			ss = sessionFactory.openSession(true);
			res = ss.update("info_update", member_VO);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			ss.close();
		}

		return res;
	}

	// 비밀번호 변경
	public int getPwd_update(String member_id, String pwd, String pwd2) {
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
		} finally {
			ss.close();
		}
		return res;
	}

	// 아이디 찾기
	public List<Member_VO> getId_find(Member_VO member_VO) {
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
	public Member_VO getPwd_find(String member_id, String name, String phone) {
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
	public int getClient_leave(String member_id, String pwd) {
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
		} finally {
			ss.close();
		}
		return res;
	}

	// 아이디 중복확인
	public Member_VO getId_confirm(String member_id) {
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
	public int getJoin(Member_VO member_VO) {
		SqlSession ss = null;
		int res2 = 0;
		try {
			ss = sessionFactory.openSession(true);
			res2 = ss.insert("join", member_VO);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			ss.close();
		}
		return res2;
	}

	//////////////////////////// 예 매
	//////////////////////////// /////////////////////////////////////////////////////////
	public int reserve(Reservation reserve) {
		SqlSession ss = null;

		System.out.println("getChk() 이전");
		int res = getChk(reserve);
		System.out.println("getChk() 이후");
		if (res == 0) {
			try {
				ss = sessionFactory.openSession(true);
				ss.insert("reserve", reserve);
				ss.commit();
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				ss.close();
			}
		} else {
			return res;
		}
		return 0;
	}

	public List<Movie_VO> movieList() {
		SqlSession ss = null;
		List<Movie_VO> list = null;

		try {
			ss = sessionFactory.openSession();
			list = ss.selectList("movieList");
			if (list.isEmpty()) {
				System.out.println("Empty!");
			}
		} catch (Exception e) {
			System.out.println("movie list!");
		} finally {
			ss.close();
		}
		System.out.println("Here!");
		return list;
	}

	public List<Reservation> getReserveList(Reservation reserve) {
		SqlSession ss = null;
		List<Reservation> list = null;

		try {
			ss = sessionFactory.openSession();
			list = ss.selectList("reserveList", reserve);
		} catch (Exception e) {
			System.out.println("reserve view!");
		} finally {
			ss.close();
		}

		return list;
	}
	
	public void getReserveCancel(String reserve_idx){
		SqlSession ss = null;
		System.out.println(reserve_idx);
		try {
			ss = sessionFactory.openSession(true);
			ss.delete("reserve_cancel", reserve_idx);
			ss.commit();
		} catch (Exception e) {
			System.out.println("reserve cancel!");
		} finally {
			ss.close();
		}
	}
	
	public List<Reservation> getReserveView(String member_id){
		SqlSession ss = null;
		List<Reservation> list = null;

		try {
			ss = sessionFactory.openSession();
			list = ss.selectList("reserveView", member_id);
		} catch (Exception e) {
			System.out.println("reserve list!");
		} finally {
			ss.close();
		}

		return list;
	}

	public int getChk(Reservation reserve) {
		List<Reservation> list = getReserveList(reserve);

		int res = 0;

		for (Reservation k : list) {
			if (reserve.getReserve_seat1() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat1());
				if (reserve.getReserve_seat1() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat1());
					if (reserve.getReserve_seat1() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat1());
						if (reserve.getReserve_seat1() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat1());
							if (reserve.getReserve_seat1() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat1());
								if (reserve.getReserve_seat1() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat1());
									if (reserve.getReserve_seat1() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat1());
										if (reserve.getReserve_seat1() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat1());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat2() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat2());
				if (reserve.getReserve_seat2() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat2());
					if (reserve.getReserve_seat2() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat2());
						if (reserve.getReserve_seat2() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat2());
							if (reserve.getReserve_seat2() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat2());
								if (reserve.getReserve_seat2() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat2());
									if (reserve.getReserve_seat2() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat2());
										if (reserve.getReserve_seat2() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat2());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat3() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat3());
				if (reserve.getReserve_seat3() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat3());
					if (reserve.getReserve_seat3() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat3());
						if (reserve.getReserve_seat3() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat3());
							if (reserve.getReserve_seat3() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat3());
								if (reserve.getReserve_seat3() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat3());
									if (reserve.getReserve_seat3() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat3());
										if (reserve.getReserve_seat3() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat3());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat4() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat4());
				if (reserve.getReserve_seat4() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat4());
					if (reserve.getReserve_seat4() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat4());
						if (reserve.getReserve_seat4() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat4());
							if (reserve.getReserve_seat4() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat4());
								if (reserve.getReserve_seat4() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat4());
									if (reserve.getReserve_seat4() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat4());
										if (reserve.getReserve_seat4() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat4());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat5() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat5());
				if (reserve.getReserve_seat5() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat5());
					if (reserve.getReserve_seat5() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat5());
						if (reserve.getReserve_seat5() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat5());
							if (reserve.getReserve_seat5() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat5());
								if (reserve.getReserve_seat5() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat5());
									if (reserve.getReserve_seat5() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat5());
										if (reserve.getReserve_seat5() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat5());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat6() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat6());
				if (reserve.getReserve_seat6() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat6());
					if (reserve.getReserve_seat6() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat6());
						if (reserve.getReserve_seat6() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat6());
							if (reserve.getReserve_seat6() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat6());
								if (reserve.getReserve_seat6() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat6());
									if (reserve.getReserve_seat6() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat6());
										if (reserve.getReserve_seat6() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat6());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat7() == k.getReserve_seat1()) {
				res = Integer.parseInt(reserve.getReserve_seat7());
				if (reserve.getReserve_seat7() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat7());
					if (reserve.getReserve_seat7() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat7());
						if (reserve.getReserve_seat7() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat7());
							if (reserve.getReserve_seat7() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat7());
								if (reserve.getReserve_seat7() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat7());
									if (reserve.getReserve_seat7() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat7());
										if (reserve.getReserve_seat7() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat7());
										}
									}
								}
							}
						}
					}
				}
			}

			if (reserve.getReserve_seat8() == k.getReserve_seat8() && k.getReserve_seat8() != null) {
				res = Integer.parseInt(reserve.getReserve_seat8());
				if (reserve.getReserve_seat8() == k.getReserve_seat2() && k.getReserve_seat2() != null) {
					res = Integer.parseInt(reserve.getReserve_seat8());
					if (reserve.getReserve_seat8() == k.getReserve_seat3() && k.getReserve_seat3() != null) {
						res = Integer.parseInt(reserve.getReserve_seat8());
						if (reserve.getReserve_seat8() == k.getReserve_seat4() && k.getReserve_seat4() != null) {
							res = Integer.parseInt(reserve.getReserve_seat8());
							if (reserve.getReserve_seat8() == k.getReserve_seat5() && k.getReserve_seat5() != null) {
								res = Integer.parseInt(reserve.getReserve_seat8());
								if (reserve.getReserve_seat8() == k.getReserve_seat6()
										&& k.getReserve_seat6() != null) {
									res = Integer.parseInt(reserve.getReserve_seat8());
									if (reserve.getReserve_seat8() == k.getReserve_seat7()
											&& k.getReserve_seat7() != null) {
										res = Integer.parseInt(reserve.getReserve_seat8());
										if (reserve.getReserve_seat8() == k.getReserve_seat8()
												&& k.getReserve_seat8() != null) {
											res = Integer.parseInt(reserve.getReserve_seat8());
										}
									}
								}
							}
						}
					}
				}
			}
		}

		return res;
	}

	///////////////////////////////////////////////////////////////////////////////////////////
	// 박스오피스
	
	public List<Movie_VO> getMovie_list01(){
        SqlSession ss = null;
        List<Movie_VO> list = null;
        try{
           ss = sessionFactory.openSession(true);
           list = ss.selectList("movie_list01");
           for (Movie_VO k : list) {
              System.out.println(k.getPoster());
           }
        }catch (Exception e) {
            System.out.println(e);
        }
        return list;
     }
      public List<Movie_VO> getMovie_list02(){
         SqlSession ss = null;
         List<Movie_VO> list = null;
         try {
        ss= sessionFactory.openSession(true);
        list = ss.selectList("movie_list02");
     } catch (Exception e) {
          System.out.println(e);
     }
         return list;
      }
      public List<Movie_VO> getMovie_list03(){
         SqlSession ss = null;
         List<Movie_VO> list = null;
         try {
        ss= sessionFactory.openSession(true);
        list = ss.selectList("movie_list03");
     } catch (Exception e) {
          System.out.println(e);
     }
         return list;
      }
      public Movie_VO getMovie_detail(String movie_idx){
         SqlSession ss = null;
         Movie_VO movie_VO = new Movie_VO();
         try {
        ss= sessionFactory.openSession(true);
        movie_VO = ss.selectOne("movie_detail",movie_idx);
     } catch (Exception e) {
         System.out.println(e);
     }
         return movie_VO;
      }
	
}
