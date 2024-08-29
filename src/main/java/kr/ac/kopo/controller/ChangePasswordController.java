package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MemberVO;

public class ChangePasswordController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String currentPassword = request.getParameter("currentPassword");
		String newPassword = request.getParameter("newPassword");
		String confirmPassword = request.getParameter("confirmPassword");
		
		MemberDAO memberDao = new MemberDAO();

		HttpSession session = request.getSession(); 
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser"); 
		
		String msg;
		
		// 1.현재비밀번호가 db의 비밀번호와 일치하는지 확인
		if(loginUser.getPassword().equals(currentPassword)) {
			
			//2.newPW와 confirmPW가 일치하면 PW를 update
			if(newPassword .equals(confirmPassword)) {
				
			//if(newPassword == confirmPassword) {
				memberDao.changePassword(loginUser, newPassword);
				msg = "비밀번호 변경에 성공하였습니다.";
			} else msg = "변경하실 비밀번호를 다시 확인해주세요.";
		} else msg = "비밀번호가 일치하지 않습니다.";
		
		request.setAttribute("msg", msg);
		return "/myPage.jsp";
	}
}
