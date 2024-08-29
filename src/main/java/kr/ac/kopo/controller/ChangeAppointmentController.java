package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.AppointmentDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.AppointmentVO;

public class ChangeAppointmentController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String newDate = request.getParameter("newDate");
		int appointmentId = Integer.parseInt(request.getParameter("no"));
        
		//세션에 새 예약정보 조회 & 등록
        AppointmentVO appVO = new AppointmentVO();
        appVO.setAppointmentDate(newDate);
        appVO.setNo(appointmentId);
        
        AppointmentDAO appDao = new AppointmentDAO();
        appDao.updateAppointment(appVO);
		return "myPage.jsp";
	}

}
