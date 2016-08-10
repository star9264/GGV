package com.hb.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;


import com.hb.db.Dao;

import com.hb.db.Member_VO;
import com.hb.db.PR_VO;
import com.hb.db.P_VO;

import com.hb.db.Pageing;
import com.hb.db.Q_VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
			mv = new ModelAndView("client_info/info_update");
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
			
			try {
				
				
				
				for (int i = 0; i < r_su; i++) {
					int res_num = (int) (Math.random() * 1000000);
					String reservation_num = String.valueOf(res_num);
					PR_VO pr_vo = new PR_VO();
					pr_vo.setMember_id(null);
					pr_vo.setReservation_num(reservation_num);
					pr_vo.setReservation_package(package_name);
					System.out.println(pr_vo.getReservation_num() + "컨트롤러");
					System.out.println(pr_vo.getReservation_package() + "컨트롤러");
					int result = dao.go_res(pr_vo);
					if (result <= 0) {
						System.out.println("db에 값 안들어감");
					}
				}

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
	
}

































