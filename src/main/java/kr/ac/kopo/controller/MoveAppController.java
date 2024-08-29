package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.DogVO;
import kr.ac.kopo.vo.MemberVO;

public class MoveAppController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		DogVO loginUserDog = (DogVO) session.getAttribute("loginUserDog");
		/*
		 * MemberVO memberVO = new MemberVO(); memberVO.setId(id);
		 * 
		 * MemberDAO memberDao = new MemberDAO(); MemberVO member =
		 * memberDao.selectMember(memberVO);
		 * 
		 * 
		 * if(id != null) { MemberVO member =
		 * memberDao.selectMemberWithDog(memberVO.getId());
		 * request.setAttribute("loginUser", member); System.out.println(member); }
		 */

		return "/appointment.jsp";
	}
}
