package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.DogDAO;
import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.DogVO;
import kr.ac.kopo.vo.MemberVO;

public class MoveIndexController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//로그인 페이지에서 입력된 id와 pw를 가져옴
		String id = request.getParameter("id");
		String password  = request.getParameter("password");
		
		//입력된 id값이 null이라면, 새로고침으로 인식하고 session에 등록된 loginUser 정보를 가져옴
		if(id == null) {
			HttpSession session = request.getSession();
			MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
			DogVO loginUserDog = (DogVO) session.getAttribute("loginUserDog");
			return "/index.jsp";
		}
		else {
			MemberVO memberVO = new MemberVO();
			memberVO.setId(id);
			memberVO.setPassword(password);
			
			MemberDAO memberDao = new MemberDAO();
			MemberVO member = memberDao.selectMember(memberVO.getId());
			
			HttpSession session = request.getSession();
			if(member.getAdmin() == null) {
				member = memberDao.selectMemberWithDog(memberVO.getId());
				DogDAO dogDao = new DogDAO();
				DogVO dog = dogDao.selectDog(memberVO.getId());
				session.setAttribute("loginUserDog", dog);
				
			}
			session.setAttribute("loginUser", member);
			
			return "/index.jsp";
		}
	}
}
