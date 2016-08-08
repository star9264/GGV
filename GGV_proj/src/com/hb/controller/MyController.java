package com.hb.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;


import com.hb.db.Dao;
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
	

	// qna list
		@RequestMapping("/q_list.do")
		public ModelAndView getQList(HttpServletRequest request){
			String type = request.getParameter("type");
			Map<String, String> map = new HashMap<>();
			map.put("type", type);
			List<Q_VO> q_list = dao.getQ_list(map);
			ModelAndView mv = new ModelAndView("qna/q_list");
			mv.addObject("q_list",q_list);
			return mv;
		}
}
