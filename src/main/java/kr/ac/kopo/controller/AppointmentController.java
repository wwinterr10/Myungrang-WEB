package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.AppointmentDAO;
import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.AppointmentVO;
import kr.ac.kopo.vo.DogVO;
import kr.ac.kopo.vo.MemberVO;

public class AppointmentController implements Controller {

	/*
	 * public void insertAppControll(HttpServletRequest request) {
	 * 
	 * //MemberVO member = new MemberVO(); String dog = request.getParameter("dog");
	 * String name = request.getParameter("name"); //dog_name과 member_id로 dog_no를
	 * 추출하는 dao 메소드 작성 & 호출 String phone = request.getParameter("phone"); String
	 * date = request.getParameter("date"); String time =
	 * request.getParameter("time");
	 * 
	 * AppointmentVO app = new AppointmentVO(); //app.setDogNo(dog);
	 * app.setMemberId(time); app.setAppointmentDate(date);
	 * app.setAppointmentTime(time); //AppoinmentDAO dao = new AppoinmentDAO();
	 * //dao.insertApp(app);
	 * 
	 * 
	 * }
	 */

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		 HttpSession session = request.getSession(); 
		 MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		 DogVO loginUserDog = (DogVO) session.getAttribute("loginUserDog");
	
		request.setCharacterEncoding("utf-8");
		String dog = request.getParameter("dog");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String date = request.getParameter("date");
		String newDate = changeDateFormat(date);
		String time = request.getParameter("time");
		
		String id = loginUser.getId();
		
		MemberDAO memberDao = new MemberDAO();
		
		int no = loginUserDog.getNo();
		
		AppointmentVO appointment = new AppointmentVO();
		appointment.setDogNo(no);
		appointment.setMemberId(id);
		appointment.setAppointmentDate(newDate);
		appointment.setAppointmentTime(time);
		
		AppointmentDAO appointmentDao = new AppointmentDAO();
		appointmentDao.saveAppointment(appointment);
		String msg = "예약이 완료되었습니다.";
		session.setAttribute("msg", msg);
		//예약되었습니다. alert 출력

		return "/appointment.jsp";
	}
	
	public String changeDateFormat(String date) {
		String str = date;
		String[] arr = str.split("/");
		String newDate = "";
		newDate += arr[2];
		if(arr[0].length() == 1) newDate += "0";
		newDate += arr[0];
		if(arr[1].length() == 1) newDate += "0";
		newDate += arr[1];
		return newDate;
	}
}
