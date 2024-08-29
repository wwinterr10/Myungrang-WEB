package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.AppointmentVO;
import kr.ac.kopo.vo.MemberVO;

public class AppointmentDAO {

	private SqlSession session;
	
	public AppointmentDAO() {
		session = new MyBatisConfig().getInstance();
	}
	
	//전체 예약 조회
	public void selectAll() {
		List<AppointmentVO> list = session.selectList("hospital.dao.AppointmentDAO.selectAll");
		
		for(AppointmentVO appointment : list) {
			System.out.println(appointment);
		}
	}
	
	//현재 시간 이후 날짜의 예약을 조회
	public void selectCurrent() {
		List<AppointmentVO> list = session.selectList("hospital.dao.AppointmentDAO.selectCurrent");
		
		/*
		 * for(AppointmentVO appointment : list) { System.out.println(appointment); }
		 */
	}
	
	//현재 시간 이전 날짜의 예약을 조회
	public void selectBefore() {
		List<AppointmentVO> list = session.selectList("hospital.dao.AppointmentDAO.selectBefore");
		
		/*
		 * for(AppointmentVO appointment : list) { System.out.println(appointment); }
		 */
	}
	
	//특정 날짜 예약 조회
	public void selectDate() {
		
	}
	
	//특정 강아지 예약 조회
	public void selectDog() {
		
	}
	
	//특정 회원 예약 조회
	public List<AppointmentVO> selectMember(String id) {
		MemberVO member = new MemberVO();
		member.setId(id);
		
		List<AppointmentVO> list = session.selectList("hospital.dao.AppointmentDAO.selectMember", member);
		/*
		 * for(AppointmentVO appointment : list) { System.out.println(appointment); }
		 */
		return list;
	}
	
	//선택 날짜 예약 등록(insert)
	public void saveAppointment(AppointmentVO appointment) {
		session.insert("hospital.dao.AppointmentDAO.saveAppointment", appointment);
		session.commit();
	}
	
	//선택 날짜 예약 변경(update)
	public void updateAppointment(AppointmentVO appointment) {
		String time = appointment.getAppointmentTime();
		String date = appointment.getAppointmentDate();
		System.out.println("time: " + time + "date: " + date);
		session.update("hospital.dao.AppointmentDAO.updateAppointment", appointment);
		session.commit();
	}
	//선택 날짜 예약 취소(delete)
	public void deleteAppointment(int no) {
		session.delete("hospital.dao.AppointmentDAO.deleteAppointment", no);
		session.commit();
	}
}
