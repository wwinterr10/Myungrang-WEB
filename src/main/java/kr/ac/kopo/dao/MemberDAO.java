package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.MemberVO;

public class MemberDAO {
	
	private SqlSession session;
	
	public MemberDAO() {
		session = new MyBatisConfig().getInstance();
	}

	//로그인 id, pw와 일치하는 memberVO 가져오기
	public MemberVO selectMember(String id) {
		String str = id;
		MemberVO member = session.selectOne("hospital.dao.MemberDAO.selectMember", id);
		/*
		if(member.getAdmin() == null) {
			member = selectMemberWithDog(id);
			return member;
		} 
		else */
		return member; 
	}
	
	
	public MemberVO selectMemberWithDog(String id) {
			MemberVO member = session.selectOne("hospital.dao.MemberDAO.selectMemberWithDog", id);
			String birth = member.getBirthDate();
			member.setBirthDate(member.getBirthDate().split(" ")[0]);
			String grade = member.getGrade();
			if(grade.equals("B")) member.setGrade("Bronze");
			if(grade.equals("S")) member.setGrade("Silver");
			if(grade.equals("G")) member.setGrade("Gold");
			if(grade.equals("V")) member.setGrade("Vip");
			return member;
		}

	public boolean checkPassword(MemberVO memberVO, String currentPassword) {
		boolean check = false;
		if(memberVO.getPassword() == currentPassword) check = true;
		return check;
	}

	public void changePassword(MemberVO loginUser, String newPassword) {
		loginUser.setPassword(newPassword);
		session.update("hospital.dao.MemberDAO.changePassword",loginUser);
		session.commit();
	}
	
	//유저 정보를 전달받고 해당 정보로 update
	public void updateMyInfo(MemberVO member) {
		session.update("hospital.dao.MemberDAO.updateMyInfo", member);
		session.commit();
	}

}
