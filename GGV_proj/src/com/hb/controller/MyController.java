package com.hb.controller;

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
			String id ="";
			System.out.println(id);
			Map<String, String> map = new HashMap<>();
			map.put("id", id);
			map.put("person", total_person);
			System.out.println("total_person" + total_person);
			
			try {
				System.out.println("try안");
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
		
		// 확인
		@RequestMapping("reserv_chk.do")
		public ModelAndView reserv_chk(HttpServletRequest request){
			ModelAndView mv = new ModelAndView("reservation/reserve_suc");
			
			String[] r_seat = new String[8];
			r_seat = request.getParameterValues("chkseat");
			Reservation reserve = new Reservation();
			reserve.setMember_id("wonjun123");
			reserve.setMovie_idx("1");
			reserve.setReserve_date("2016-08-12");
			reserve.setReserve_time("16:00");
			reserve.setReserve_price(String.valueOf(8000*r_seat.length));
			
			if(r_seat.length>0){
				reserve.setReserve_seat1(r_seat[0]);
				if(r_seat.length>1){
					reserve.setReserve_seat2(r_seat[1]);
					if(r_seat.length>2){
						reserve.setReserve_seat3(r_seat[2]);
						if(r_seat.length>3){
							reserve.setReserve_seat4(r_seat[3]);
							if(r_seat.length>4){
								reserve.setReserve_seat5(r_seat[4]);
								if(r_seat.length>5){
									reserve.setReserve_seat6(r_seat[5]);
									if(r_seat.length>6){
										reserve.setReserve_seat7(r_seat[6]);
										if(r_seat.length>7){
											reserve.setReserve_seat8(r_seat[7]);
										}
									}
								}
							}
						}
					}
				}
			}
			dao.reserve(reserve);
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
			ModelAndView mv = new ModelAndView("redirect:/q_list.do");
			mv.addObject("qvo",qvo);
			return mv;
		} 
		///////////////////////////////////////////////////////////////////////////////
		
		//  영화목록-박스오피스 최신상영작 상영예정작
				@RequestMapping("/movie_list01.do")
				public ModelAndView getMovie_list01(){
					ModelAndView mv = new ModelAndView("movielist_1/movie_list01");
					List<Movie_VO> list= dao.getMovie_list01();
					System.out.println("4");
					for (Movie_VO k : list) {
						System.out.println(k.getPoster());
					}
					System.out.println("5");
					mv.addObject("list",list);
					System.out.println("6");
					return mv;
				}
				@RequestMapping("/menu_bar.do")
				public ModelAndView getMenu(){
					ModelAndView mv = new ModelAndView("home/menu_bar");
					return mv;
				}
				@RequestMapping("/movie_list02.do")
				public ModelAndView getMovie_list02(){
					ModelAndView mv = new ModelAndView("movielist_1/movie_list02");
					return mv;
				}
				@RequestMapping("/movie_list03.do")
				public ModelAndView getMovie_list03(){
					ModelAndView mv = new ModelAndView("movielist_1/movie_list03");
					return mv;
				}
}

































