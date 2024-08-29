package kr.ac.kopo.vo;

public class BreedVO {

	private int no;
	private String dogSize;
	private String breedName;
	public BreedVO() {
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getDogSize() {
		return dogSize;
	}
	public void setDogSize(String dogSize) {
		this.dogSize = dogSize;
	}
	public String getBreedName() {
		return breedName;
	}
	public void setBreedName(String breedName) {
		this.breedName = breedName;
	}
	@Override
	public String toString() {
		return "BreedVO [no=" + no + ", dogSize=" + dogSize + ", breedName=" + breedName + "]";
	}
	
}
