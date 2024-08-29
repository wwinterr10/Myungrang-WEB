package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.AppointmentDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.AppointmentVO;
import kr.ac.kopo.vo.DogVO;
import kr.ac.kopo.vo.MemberVO;

public class SelectReservationController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		DogVO loginUserDog = (DogVO) session.getAttribute("loginUserDog");
		
		AppointmentDAO appDao = new AppointmentDAO();
		List<AppointmentVO> list = appDao.selectMember(loginUser.getId());
		session.setAttribute("appList", list);
		return "/myPage.jsp";
	}

}
