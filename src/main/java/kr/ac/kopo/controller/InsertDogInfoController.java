package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.DogDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.DogVO;

public class InsertDogInfoController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String memberId = request.getParameter("memberId");
		String name = request.getParameter("dogName");
		String birthDate = request.getParameter("birthDate");
		String breedCode = request.getParameter("breedCode");
		
		DogVO dog = new DogVO();
		dog.setMemberId(memberId);
		dog.setName(name);
		dog.setBirthDate(birthDate);
		dog.setBreedCode(breedCode);
		
		DogDAO dogDao = new DogDAO();
		dogDao.insertDogInfo(dog);
		return "redirect:/updateMydog.do";
	}

}
