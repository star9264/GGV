package com.hb.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.hb.db.Dao;

import com.hb.db.Member_VO;
import com.hb.db.Movie_VO;
import com.hb.db.P_VO;

import com.hb.db.Pageing;
import com.hb.db.Q_VO;
import com.hb.db.Reservation;

@Controller
public class MyController {
	private Dao dao;
	public Dao getDao() {
		return dao;
	}
	public void setDao(Dao dao) {
		this.dao = dao;
	}
	
	private Pageing page;
	
	public Pageing getPage() {
		return page;
	}
	public void setPage(Pageing page) {
		this.page = page;
	}


	
	// write
	@RequestMapping("/write.do")
	public ModelAndView getWrite(HttpServletRequest request){
		return new ModelAndView("write") ;

	}
	

	// login 화면으로
	@RequestMapping("/login.do")
	public ModelAndView getLogin(HttpServletRequest request, HttpServletResponse response){
		System.out.println("좀 돼라");
		ModelAndView mv = new ModelAndView("client_info/login");
		return mv;
	}
	
	// 로그인 시도
	@RequestMapping("/login_ok.do")
	public ModelAndView getLoginOk(HttpServletRequest request, HttpServletResponse response){
		System.out.println("로그인시도");
		ModelAndView mv = new ModelAndView();
		String member_id = request.getParameter("member_id");
		String pwd = request.getParameter("pwd");
		System.out.println(member_id+pwd);
		
		Member_VO member_VO = dao.getLogin(member_id, pwd);
		
		if(member_VO!=null){
			mv = new ModelAndView("main/main");
		}else{
			mv = new ModelAndView("client_info/login_fail");
		}
	
		mv.addObject("member_VO", member_VO);
		
		return mv;
	}
	
	// 정보 수정 화면
	@RequestMapping("/info_update_form.do")
	public ModelAndView getInfo_update_form(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView("client_info/info_update");
		return mv;
	}

	// 정보 수정
	@RequestMapping("/info_update.do")
	public ModelAndView getInfo_update(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		Member_VO member_VO = new Member_VO();
		int res = 0;
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone")+request.getParameter("phone2")+request.getParameter("phone3");
		String addr = request.getParameter("addr");
		String email_addr = request.getParameter("email_addr");
		String member_id = request.getParameter("member_id");
		
		member_VO.setMember_id(member_id);
		member_VO.setPwd(pwd);
		member_VO.setPhone(phone);
		member_VO.setAddr(addr);
		member_VO.setEmail_addr(email_addr);
		System.out.println("dddddd"+member_VO.getMember_id());
		res = dao.getInfo_update(member_VO);
		
		if(res==1){
			mv = new ModelAndView("client_info/info_update");
		}else{
			mv = new ModelAndView("client_info/info_update_fail");
		}
		member_VO = dao.getLogin(member_id, pwd);
		mv.addObject("member_VO", member_VO);
		
		return mv;
	}
	
	// 비밀번호 변경화면
	@RequestMapping("/pwd_update_go.do")
	public ModelAndView getPwd_update_go(){
		ModelAndView mv = new ModelAndView("client_info/pwd_update");
		return mv;
	}

	// 비밀번호 변경
	@RequestMapping("/pwd_update.do")
	public ModelAndView getPwd_update(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		int res = 0;
		String member_id = request.getParameter("member_id");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		System.out.println(member_id + " :: " + pwd);
		
		res = dao.getPwd_update(member_id, pwd, pwd2);
		
		if(res==1){
			mv = new ModelAndView("client_info/login");
		}else{
			mv = new ModelAndView("client_info/pwd_update_fail");
		}
		mv.addObject("res", res);
		return mv;
	}
	
	// 로그아웃
	@RequestMapping("/logout.do")
	public ModelAndView getLogout(){
		ModelAndView mv = new ModelAndView("client_info/logout");
		return mv;
	}
	
	@RequestMapping("/info_find.do")
	public ModelAndView getInfo_find(){
		ModelAndView mv = new ModelAndView("client_info/info_find");
		return mv;
	}
	
	@RequestMapping("/join.do")
	public ModelAndView getJoin(){
		ModelAndView mv = new ModelAndView("client_info/join");
		return mv;
	}
	
	// 아이디 찾기
	@RequestMapping("/id_find.do")
	public ModelAndView getId_find(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday")+request.getParameter("birthday2")+request.getParameter("birthday3");
		String phone = request.getParameter("phone")+request.getParameter("phone2")+request.getParameter("phone3");
		System.out.println(name+" "+birthday+" "+phone);
		int res = 0;
		int i = 0;
		Member_VO member_VO = new Member_VO();
		member_VO.setName(name);
		member_VO.setBirthday(birthday);
		member_VO.setPhone(phone);
		
		List<Member_VO> list = dao.getId_find(member_VO);
		for (i = 0; i < list.size(); i++) {
			list.get(i).getMember_id();
		}
		mv = new ModelAndView("client_info/info_find");
		if(list.size()!=0){
			res = 1;
		}
		mv.addObject("list", list);
		mv.addObject("res", res);
		
		return mv;
	}
	
	// 비밀번호 찾기
	@RequestMapping("/pwd_find.do")
	public ModelAndView getPwd_find(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView("client_info/info_find");
		String member_id = request.getParameter("id");
		String name = request.getParameter("name2");
		String phone = request.getParameter("phone4")+request.getParameter("phone5")+request.getParameter("phone6");
		
		System.out.println(member_id+" "+name+" "+" "+phone);
		
		int res = 3;
		
		Member_VO member_VO = dao.getPwd_find(member_id, name, phone);
		
		if(member_VO!=null){
			res = 4;
		}
		
		mv.addObject("member_VO", member_VO);
		mv.addObject("res", res);
		
		return mv;
	}
	
	// 회원탈퇴
	@RequestMapping("/client_leave.do")
	public ModelAndView getClient_leave(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		String member_id = request.getParameter("member_id");
		String pwd = request.getParameter("pwd");
		int res = 0;
		
		res = dao.getClient_leave(member_id, pwd);
		
		if(res==0){
			mv = new ModelAndView("client_info/pwd_update_fail");
		}else{
			++res;
			mv = new ModelAndView("client_info/login");
		}
		
		mv.addObject("res", res);
		return mv;
	}
	
	// 아이디 중복체크
	@RequestMapping("/id_confirm.do")
	public ModelAndView getId_confirm(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		String member_id = request.getParameter("member_id");
		Member_VO member_VO = dao.getId_confirm(member_id);
		int res = 0;
		if(member_VO!=null){
			mv = new ModelAndView("client_info/id_confirm_fail");
			res = 2;
		}else{
			mv = new ModelAndView("client_info/join");
			res = 1;
		}
		mv.addObject("res", res);
		mv.addObject("member_id", member_id);
		System.out.println(member_id);
		
		return mv;
	}
	
	// 회원가입
	@RequestMapping("/join_ok.do")
	public ModelAndView getJoin(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv = new ModelAndView("client_info/login");
		Member_VO member_VO = new Member_VO();
		member_VO.setMember_id(request.getParameter("member_id"));
		member_VO.setPwd(request.getParameter("pwd"));
		member_VO.setName(request.getParameter("name"));
		member_VO.setGender(request.getParameter("gender"));
		member_VO.setBirthday(request.getParameter("birthday")+request.getParameter("birthday2")+request.getParameter("birthday3"));
		member_VO.setPhone(request.getParameter("phone")+request.getParameter("phone2")+request.getParameter("phone3"));
		member_VO.setAddr(request.getParameter("addr"));
		member_VO.setEmail_addr(request.getParameter("email_addr"));
		
		int res2 = dao.getJoin(member_VO);
		
		mv.addObject("res2", res2);
		
		return mv;
	}

	// package_purchase
		@RequestMapping("/purchase.do")
		public ModelAndView dopurchase(HttpServletRequest request) {

			String total_price = request.getParameter("total_price");
			String package_name = request.getParameter("package_name");
			String su = request.getParameter("package_su");
			System.out.println(package_name + total_price + su);

			ModelAndView mv = new ModelAndView("package/purchase");
			return mv;

		}

		// package_main
		@RequestMapping("/package_main.do")
		public ModelAndView getpackage_main(HttpServletRequest request) {
			System.out.println("패키지메인 컨트롤러");
			ModelAndView mv = new ModelAndView("package/package_main");
			return mv;
		}

		// package_info
		@RequestMapping("/package_info.do")
		public ModelAndView getPackage_info(HttpServletRequest request) {
			System.out.println("package_info 컨트롤러");
			String type = request.getParameter("type");
			String idx = null;
			System.out.println(type);
			if (type.equals("package_1")) {
				idx = "1";
			} else if (type.equals("package_2")) {
				idx = "2";
			} else if (type.equals("package_3")) {
				idx = "3";
			} else if (type.equals("package_4")) {
				idx = "4";
			}
			List<P_VO> p_vo = dao.getpackage_info(idx);

			ModelAndView mv = new ModelAndView("package/package_info");
			mv.addObject("p_vo", p_vo);

			return mv;

		}
		
		

		@RequestMapping("purchase_ok.do")
		public ModelAndView go_purchase(HttpServletRequest request) {
			System.out.println("컨트롤러 go_purchase ");
			String package_name = request.getParameter("package_name");
			int pack_person = 0;
			if (package_name.equals("싱글패키지")) {
				pack_person = 1;
			} else if (package_name.equals("러브콤보패키지")) {
					pack_person = 2;

			} else if (package_name.equals("패밀리패키지")) {
					pack_person = 3;

			} else if (package_name.equals("슈퍼패밀리패키지")) {
				pack_person = 4;
			}
			
			String total_price = request.getParameter("total_price");
			String su = request.getParameter("su");
			System.out.println(package_name + total_price + su);
			System.out.println("패키지 하나당 몇명?" +pack_person);
			int r_su = Integer.parseInt(su);
			int total_su = pack_person*r_su;
			String total_person =String.valueOf(total_su); 
			String id = request.getParameter("id");
			System.out.println(id);
			Map<String, String> map = new HashMap<>();
			map.put("id", id);

			try {
				System.out.println("try안");
				//member db속 package_reservation 넘버가져오기
				String now_reservation = dao.get_res(id);
				int r_now_reservation = Integer.parseInt(now_reservation);
				int total_info = total_su +r_now_reservation;
				String person = String.valueOf(total_info);
				map.put("person", person);
				System.out.println(person + "total_person");
				dao.go_res(map);
			
				
			} catch (Exception e) {
				System.out.println(e);
			}
			return new ModelAndView("redirect:package_close.do");

		}

		@RequestMapping("package_close.do")
		public ModelAndView package_close(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("package/package_close");
			return mv;

		}
		
		@RequestMapping("gomain.do")
	      public ModelAndView goMain(HttpServletRequest request){
	         ModelAndView mv = new ModelAndView("main/main");
	         List<Movie_VO> list = dao.getMovie_list01();
	         mv.addObject("list", list);
	         return mv;
	      }

		@RequestMapping("/package_res.do")
		public ModelAndView package_res(HttpServletRequest request){
			ModelAndView mv = new ModelAndView("package/package_res");
			String id = request.getParameter("id");
			System.out.println(id);
			List<Member_VO> list = dao.getpackage_res(id);
			System.out.println(list.size());
			mv.addObject("list",list);
			return mv;
		}
		
		// 확인
		@RequestMapping("reserve.do")
		public ModelAndView reserve(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("reservation/reserve");
			
			Reservation reserve = new Reservation();
			reserve.setMovie_idx(request.getParameter("movie_idx"));
			reserve.setReserve_date(request.getParameter("reserve_date"));
			reserve.setReserve_time(request.getParameter("reserve_time"));
			
			List<Reservation> r_list = dao.getReserveList(reserve);
			List<Integer> list = new ArrayList<Integer>();
			for (Reservation k : r_list) {
				if(k.getReserve_seat1()!=null){
					list.add(Integer.parseInt(k.getReserve_seat1()));
					if(k.getReserve_seat2()!=null){
						list.add(Integer.parseInt(k.getReserve_seat2()));
						if(k.getReserve_seat3()!=null){
							list.add(Integer.parseInt(k.getReserve_seat3()));
							if(k.getReserve_seat4()!=null){
								list.add(Integer.parseInt(k.getReserve_seat4()));
								if(k.getReserve_seat5()!=null){
									list.add(Integer.parseInt(k.getReserve_seat5()));
									if(k.getReserve_seat6()!=null){
										list.add(Integer.parseInt(k.getReserve_seat6()));
										if(k.getReserve_seat7()!=null){
											list.add(Integer.parseInt(k.getReserve_seat7()));
											if(k.getReserve_seat8()!=null){
												list.add(Integer.parseInt(k.getReserve_seat8()));
											}
										}
									}
								}
							}
						}
					}
				}
			}
			mv.addObject("list", list);
			
			return mv;
		}
	
	// 예매확인
	@RequestMapping("reserve_view.do")
	public ModelAndView reserve_view(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("reservation/reserve_view");
		
		String id = request.getParameter("member_id");
		
		List<Reservation> list = dao.getReserveView(id);
		
		mv.addObject("list", list);		
		
		return mv;
	}
	
	// 예매취소
	@RequestMapping("reserve_cancel.do")
	public ModelAndView reserve_cancel(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("reservation/reserve_cancel");
		
		String reserve_idx = request.getParameter("reserve_idx");
		dao.getReserveCancel(reserve_idx);
		return mv;
	}
	
	// 확인
	@RequestMapping("reserv_chk.do")
	public ModelAndView reserv_chk(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("reservation/reserve_suc");
		
		String[] r_seat = new String[8];
		r_seat = request.getParameterValues("chkseat");
		Reservation reserve = new Reservation();
		reserve.setMember_id(request.getParameter("member_id"));
		reserve.setMovie_idx(request.getParameter("movie_idx"));
		reserve.setReserve_date(request.getParameter("reserve_date"));
		reserve.setReserve_time(request.getParameter("reserve_time"));
		reserve.setTitle(request.getParameter("title"));
		reserve.setReserve_price(String.valueOf(8000 * r_seat.length));

		if (r_seat.length > 0) {
			reserve.setReserve_seat1(r_seat[0].trim());
			if (r_seat.length > 1) {
				reserve.setReserve_seat2(r_seat[1].trim());
				if (r_seat.length > 2) {
					reserve.setReserve_seat3(r_seat[2].trim());
					if (r_seat.length > 3) {
						reserve.setReserve_seat4(r_seat[3].trim());
						if (r_seat.length > 4) {
							reserve.setReserve_seat5(r_seat[4].trim());
							if (r_seat.length > 5) {
								reserve.setReserve_seat6(r_seat[5].trim());
								if (r_seat.length > 6) {
									reserve.setReserve_seat7(r_seat[6].trim());
									if (r_seat.length > 7) {
										reserve.setReserve_seat8(r_seat[7].trim());
									}
								}
							}
						}
					}
				}
			}
		}
		int res = dao.reserve(reserve);
		
		System.out.println(res);
		
		
		
		if(res!=0){
			mv = new ModelAndView("reservation/reserve_fail");
			mv.addObject("seat", res);
		}
		
		return mv;
	}

	// 영화 목록 불러오기
	@RequestMapping("movielist.do")
	public ModelAndView movieList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("reservation/reservation");
		List<Movie_VO> list = dao.movieList();
		mv.addObject("list", list);

		return mv;
	}
		
		
		////////////////////board(별아 건드리지마)///////////////////////////////
		// qna list
		@RequestMapping("/q_list.do")
		public ModelAndView getQList(@RequestParam String type){
			Map<String, String> map = new HashMap<>();
			map.put("type", type);
			List<Q_VO> q_list = dao.getQ_list(map);
			ModelAndView mv = new ModelAndView("qna/q_list");
			mv.addObject("q_list",q_list);
			return mv;
		}
		// write
		@RequestMapping("/q_write.do")
		public ModelAndView getQWrite(){
			return new ModelAndView("qna/q_write");
		}
		
		// write_ok
		@RequestMapping("/q_write_ok.do")
		public ModelAndView getQWrite_ok(HttpServletRequest request){
			Q_VO qvo = new Q_VO();
			System.out.println("write"+request.getParameter("type"));
			qvo.setType(request.getParameter("type"));
			qvo.setSubject(request.getParameter("subject"));
			qvo.setMember_name(request.getParameter("name"));
			qvo.setMember_id(request.getParameter("id"));
			qvo.setMember_phone(request.getParameter("phone"));
			qvo.setMember_email(request.getParameter("email"));
			qvo.setSubject(request.getParameter("subject"));
			qvo.setContent(request.getParameter("content"));
			qvo.setState("미답변");
			dao.getQWrite_ok(qvo);
			ModelAndView mv = new ModelAndView("redirect:/q_list.do?type="+qvo.getType());
			mv.addObject("qvo",qvo);
			return mv;
		} 
		
		// login alert
		@RequestMapping("/login_alert.do")
		public ModelAndView loginAlert(){
			System.out.println("로그인하시길");
			return new ModelAndView("qna/login_alert");
		}
		//////////////////////////////////윤경끝/////////////////////////////////////////////
		
		@RequestMapping("/movie_list01.do")
        public ModelAndView getMovie_list01(){
           ModelAndView mv = new ModelAndView("movielist_1/movie_list01");
           List<Movie_VO> list= dao.getMovie_list01();
           mv.addObject("list",list);
           return mv;
        }
        @RequestMapping("/menu_bar.do")
        public ModelAndView getMenu(){
           ModelAndView mv = new ModelAndView("main/main");
           return mv;
        }
        @RequestMapping("/movie_list02.do")
        public ModelAndView getMovie_list02(){
           ModelAndView mv = new ModelAndView("movielist_1/movie_list02");
           List<Movie_VO> list = dao.getMovie_list02();
           mv.addObject("list",list);
           
           return mv;
        }
        @RequestMapping("/movie_list03.do")
        public ModelAndView getMovie_list03(){
           ModelAndView mv = new ModelAndView("movielist_1/movie_list03");
           List<Movie_VO> list = dao.getMovie_list03();
           mv.addObject("list",list);
           return mv;
        }
        @RequestMapping("/movie_detail.do")
        public ModelAndView getMovie_detail(HttpServletRequest request, HttpServletResponse response){
           ModelAndView mv = new ModelAndView("movielist_1/movie_detail");
           String movie_idx = null;
           movie_idx = request.getParameter("movie_idx");
           System.out.println(movie_idx);
           System.out.println("값" + movie_idx);
           Movie_VO movie_VO = dao.getMovie_detail(movie_idx);
           mv.addObject("movie_VO", movie_VO);
           
           return mv;
        }
				
				
				
				
}

































