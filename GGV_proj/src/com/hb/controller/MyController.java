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
	// list
	@RequestMapping("/list.do")
	public ModelAndView getList(HttpServletRequest request){
		String cPage = request.getParameter("cPage");
		if (cPage != null) {
			page.setNowPage(Integer.parseInt(cPage));	
		}
		
		page.setTotalRecord(dao.getTotalCount());
		page.setTotalPage();
		
		page.setBegin((page.getNowPage()-1)*page.getNumPerPage()+1);
		page.setEnd((page.getBegin()-1)+page.getNumPerPage());
		//System.out.println(page.getBegin()+" "+page.getEnd());
		
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", page.getBegin());
		map.put("end", page.getEnd());
		
		
		
		List<Q_VO> list =  dao.getList(map);
		page.setBeginPage((int)((page.getNowPage()-1)/page.getPagePerBlock())*page.getPagePerBlock()+1);
		page.setEndPage(page.getBeginPage() + page.getPagePerBlock()-1);
		
		if (page.getEndPage() > page.getTotalPage()) {
			page.setEndPage(page.getTotalPage());
		}
		System.out.println(page.getBegin()+" "+page.getEnd());
		
		System.out.println(map.get("begin"));
		System.out.println(map.get("end"));
		ModelAndView mv = new ModelAndView("list");
		
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.addObject("cPage", cPage);
		return mv ;
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
	

	/*// view
	@RequestMapping("/view.do")
	public ModelAndView getView(@RequestParam String b_idx){
		ModelAndView mv = new ModelAndView("view");
		BbsVO bvo = dao.getView(b_idx);
		
		// 댓글 가져오기
		
		// 히트 수 증가
		
		// 히트수 업데이트
		
		mv.addObject("bvo", bvo);
		return mv;
	}*/
	
	// write
	@RequestMapping("/write.do")
	public ModelAndView getWrite(){
		return new ModelAndView("write") ;
	}
	
	/*// write_ok
	@RequestMapping("/write_ok.do")
	public ModelAndView getWrite_ok(HttpServletRequest request){
		String path = request.getServletContext().getRealPath("/upload");
		BbsVO bvo = new BbsVO();
		try {
		MultipartRequest mr = new MultipartRequest(
				request,
				path,
				500*1024*1024,
				"utf-8",
				new DefaultFileRenamePolicy());
		
		bvo.setSubject(mr.getParameter("subject"));
		bvo.setWriter(mr.getParameter("writer"));
		bvo.setContent(mr.getParameter("content"));
		bvo.setPwd(mr.getParameter("pwd"));
		bvo.setIp(request.getRemoteAddr());
		
		if(mr.getFile("file_name") != null){
			bvo.setFile_name(mr.getFilesystemName("file_name"));
		}else{
			bvo.setFile_name("");
		}
		int result = dao.getWrite_ok(bvo);
		if(result<=0){
			return new ModelAndView("redirect:/write.do"); 
		}
		} catch (Exception e) {
		}
		ModelAndView mv = new ModelAndView("redirect:/list.do");
		mv.addObject("bvo", bvo);
		return mv; 
	}*/
}
