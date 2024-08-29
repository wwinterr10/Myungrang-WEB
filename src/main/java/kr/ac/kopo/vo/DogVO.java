package kr.ac.kopo.vo;

public class DogVO {

	private int    no;
	private String memberId;
	private String name;
	private String birthDate;
	private String breedCode;
	private String breedName;
	
	public String getBreedName() {
		return breedName;
	}
	public void setBreedName(String breedName) {
		this.breedName = breedName;
	}
	public DogVO() {
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
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
	public String getBreedCode() {
		return breedCode;
	}
	public void setBreedCode(String breedCode) {
		this.breedCode = breedCode;
	}
	@Override
	public String toString() {
		return "DogVO [no=" + no + ", memberId=" + memberId + ", name=" + name + ", birthDate=" + birthDate
				+ ", breedCode=" + breedCode + ", breedName=" + breedName + "]";
	}
	
}
