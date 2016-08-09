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
	
	//package_purchase
	@RequestMapping("/purchase.do")
	public ModelAndView dopurchase(HttpServletRequest request){
		System.out.println("슈방");
		ModelAndView mv = new ModelAndView("purchase");
		return mv;

	}
	
	// write
	@RequestMapping("/write.do")
	public ModelAndView getWrite(HttpServletRequest request){
		return new ModelAndView("write") ;

	}
	
	@RequestMapping("/package_main.do")
	public ModelAndView getpackage_main(HttpServletRequest request){
		System.out.println("패키지메인 컨트롤러");
		ModelAndView mv = new ModelAndView("package/package_main");
		return mv;
	}
	
	@RequestMapping("/package_info.do")
	public ModelAndView getPackage_info(HttpServletRequest request){
		System.out.println("package_info 컨트롤러");
		String type = request.getParameter("type");
		String idx=null;
		System.out.println(type);
		if(type.equals("package_1")){
			idx="1";
		}else if(type.equals("package_2")){
			idx="2";
		}else if(type.equals("package_3")){
			idx="3";
		}
		else if(type.equals("package_4")){
			idx="4";
		}
		List<P_VO> p_vo = dao.getpackage_info(idx);
		
		ModelAndView mv = new ModelAndView("package/package_info");
		mv.addObject("p_vo",p_vo);
	
		return mv;
		
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
		
		dao.getInfo_update(member_VO);
		
		mv = new ModelAndView("client_info/info_update");
		
		member_VO = dao.getLogin(member_id, pwd);
		mv.addObject("member_VO", member_VO);
		
		return mv;
	}
}

































