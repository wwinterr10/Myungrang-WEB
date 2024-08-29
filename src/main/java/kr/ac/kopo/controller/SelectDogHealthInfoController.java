package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.DogDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.HealthVO;


public class SelectDogHealthInfoController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String memberId = request.getParameter("memberId");
		
		HealthVO health = new HealthVO();
		health.setMemberId(memberId);
		
		DogDAO dogDao = new DogDAO();
		List<HealthVO> selectDogHealth = dogDao.memberDogHealthList(memberId);
		
		for(HealthVO list : selectDogHealth) {
			list.setVisitDate(list.getVisitDate().split(" ")[0]);
		}
		HttpSession session = request.getSession(); 
		session.setAttribute("selectDogHealth", selectDogHealth);
		session.setAttribute("selectMemberId", memberId);
		return "redirect:/updateMydog.do";
	}

}
