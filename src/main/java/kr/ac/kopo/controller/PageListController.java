package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.PageInfo;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.HealthVO;

public class PageListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		int maxPage;
		int startPage;
		int endPage;
		HttpSession session = request.getSession(); 
		List<HealthVO> healthList = (List<HealthVO>) session.getAttribute("loginUserDogHealth");
		for(HealthVO list : healthList) {
			list.setVisitDate(list.getVisitDate().split(" ")[0]);
			System.out.println("list : " + list);
		}
		listCount = healthList.size();
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 5;
		boardLimit = 5;
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		startPage = (currentPage -1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		List<HealthVO> list = healthList;
		request.setAttribute("list", list);
		request.setAttribute("pi", pi);
		request.getRequestDispatcher("myPage.jsp").forward(request, response);
		return "myPage.jsp";
	}

}
