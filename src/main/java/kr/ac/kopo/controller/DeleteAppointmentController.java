package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.AppointmentDAO;
import kr.ac.kopo.framework.Controller;

public class DeleteAppointmentController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int appointmentId = Integer.parseInt(request.getParameter("no"));
		AppointmentDAO appDao = new AppointmentDAO();
		appDao.deleteAppointment(appointmentId);
		
		String msg = "예약이 취소되었습니다.";
		 HttpSession session = request.getSession(); 
		 session.setAttribute("msg", msg);
		return "myPage.jsp";
	}

}
