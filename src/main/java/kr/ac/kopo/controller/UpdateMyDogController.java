package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.DogDAO;
import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.DogVO;
import kr.ac.kopo.vo.HealthVO;
import kr.ac.kopo.vo.MemberVO;

public class UpdateMyDogController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession(); 
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser"); 
		DogVO loginUserDog = (DogVO) session.getAttribute("loginUserDog");
		
		MemberDAO memberDao = new MemberDAO();
		DogDAO dogDao = new DogDAO();
		
		String msg = "";
		//일반유저 : 강아지 정보 확인 , 운영자 : 강아지 정보 등록 & 업데이트
		if(loginUser.getAdmin() == null) {
			//일반유저이나 등록된 강아지 정보가 없을 때
			if(loginUserDog == null) {
				msg += "아직 등록된 강아지 정보가 없습니다";
				request.setAttribute("msg", msg);
			}
			else {//강아지 진료정보 확인
				List<HealthVO> loginUserDogHealth = dogDao.selectDogHealthList(loginUserDog.getNo());
				for(HealthVO list : loginUserDogHealth) {
					list.setVisitDate(list.getVisitDate().split(" ")[0]);
				}
				session.setAttribute("loginUserDogHealth", loginUserDogHealth);
			}
		} else {
			//관리자 : 강아지 등록, 진료정보 등록, 수정
			//강아지 등록(fk : member_id, breed_code)
			//dogDao.insertDogInfo(loginUser.getId());
			
			//진료정보 등록(fk : dog_no)
			//dogDao.insertDogHealth(loginUserDog.getNo());
			
			//if(request.getParameter(?) != null) 
		}
		return "myPage.jsp";
	}

}
