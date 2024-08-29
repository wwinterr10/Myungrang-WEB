package kr.ac.kopo.dao;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.DogVO;
import kr.ac.kopo.vo.HealthVO;

public class DogDAO {

	private SqlSession session;
	
	public DogDAO() {
		session = new MyBatisConfig().getInstance();
	}
	
	public List<DogVO> selectAllDog(String id) {
		List<DogVO> dog = session.selectList("hospital.dao.DogDAO.selectDog", id);
		return dog;
	}
	
	public DogVO selectDog(String id) {
		DogVO dog = session.selectOne("hospital.dao.DogDAO.selectDog", id);
		return dog;
	}
	
	public List<HealthVO> selectDogHealthList(int no) {
		List<HealthVO> healthList = session.selectList("hospital.dao.DogDAO.selectDogHealth", no);
		return healthList;
	}
	
	public List<HealthVO> memberDogHealthList(String id) {
		List<HealthVO> healthList = session.selectList("hospital.dao.DogDAO.memberDogHealth", id);
		System.out.println("dogDAO HealthList: " + healthList);
		return healthList;
	}

	public boolean deleteDogHealthInfo(int healthId) {
		session.delete("hospital.dao.DogDAO.deleteDogHealthInfo", healthId);
		session.commit();
		return true;
	}
	
	public void insertDogInfo(DogVO dog) {
		session.insert("hospital.dao.DogDAO.insertDogInfo", dog);
		session.commit();
	}
}
