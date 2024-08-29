package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MemberVO;

public class UpdateMyInfoController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String birthDate = request.getParameter("birthday");
		String phone = request.getParameter("contact");
		String email = request.getParameter("email");
		
		MemberVO member = new MemberVO();
		member = loginUser;
		member.setId(loginUser.getId());
		member.setPassword(password);
		member.setName(name);
		member.setBirthDate(birthDate);
		member.setPhone(phone);
		member.setEmail(email);
		member.setGrade(loginUser.getGrade());
		
		MemberDAO memberDao = new MemberDAO();
		System.out.println(member);
		memberDao.updateMyInfo(member);
		session.setAttribute("loginUser", member);
		
		return "/myPage.jsp";
	}

}
