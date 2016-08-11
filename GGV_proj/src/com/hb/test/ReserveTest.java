package com.hb.test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReserveTest")
public class ReserveTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ReserveTest() {super();}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		List<Integer> list = new ArrayList<Integer>();
		list.add(5);
		list.add(15);
		list.add(25);
		list.add(35);
		list.add(45);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/reservation/test.jsp").forward(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
