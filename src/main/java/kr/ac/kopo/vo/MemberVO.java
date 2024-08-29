package kr.ac.kopo.vo;

import java.util.List;

public class MemberVO {

	private String id;
	private String password;
	private String name;
	private String birthDate;
	private String phone;
	private String post;
	private String basicAddr;
	private String detailAddr;
	private String email;
	private String regDate;
	private String grade;
	private String admin;
	
	private List<DogVO> dogList;
	private List<BreedVO> breedList;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getBasicAddr() {
		return basicAddr;
	}
	public void setBasicAddr(String basicAddr) {
		this.basicAddr = basicAddr;
	}
	public String getDetailAddr() {
		return detailAddr;
	}
	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public List<DogVO> getDogList() {
		return dogList;
	}
	public void setDogList(List<DogVO> dogList) {
		this.dogList = dogList;
	}
	public List<BreedVO> getBreedList() {
		return breedList;
	}
	public void setBreedList(List<BreedVO> breedList) {
		this.breedList = breedList;
	}
	public MemberVO() {
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", birthDate=" + birthDate
				+ ", phone=" + phone + ", post=" + post + ", basicAddr=" + basicAddr + ", detailAddr=" + detailAddr
				+ ", email=" + email + ", regDate=" + regDate + ", grade=" + grade + ", admin=" + admin + ", dogList="
				+ dogList + ", breedList=" + breedList + "]";
	}
	
	
	
}
