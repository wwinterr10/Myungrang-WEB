package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import kr.ac.kopo.dao.DogDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.HealthVO;

public class DeleteDogHealthInfoController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		  int healthId = Integer.parseInt(request.getParameter("healthNo"));
		  DogDAO dogDao = new DogDAO();
		  dogDao.deleteDogHealthInfo(healthId);
		  List<HealthVO> selectDogHealth = dogDao.selectDogHealthList(healthId);
		  HttpSession session = request.getSession();
		  session.setAttribute("selectDogHealth", selectDogHealth);
		  
		  return "redirect:/updateMydog.do";
		 
	}
}
