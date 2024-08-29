package kr.ac.kopo.vo;

public class HealthVO {

	private int no;
	private int dogNo;
	private String visitDate;
	private String diseaseCode;
	private String significant;
	private String dogName;
	private String diseaseName;
	private String memberId;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getDiseaseName() {
		return diseaseName;
	}
	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}
	public String getDogName() {
		return dogName;
	}
	public void setDogName(String dogName) {
		this.dogName = dogName;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getDogNo() {
		return dogNo;
	}
	public void setDogNo(int dogNo) {
		this.dogNo = dogNo;
	}
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	public String getDiseaseCode() {
		return diseaseCode;
	}
	public void setDiseaseCode(String diseaseCode) {
		this.diseaseCode = diseaseCode;
	}
	public String getSignificant() {
		return significant;
	}
	public void setSignificant(String significant) {
		this.significant = significant;
	}
	@Override
	public String toString() {
		return "HealthVO [no=" + no + ", dogNo=" + dogNo + ", visitDate=" + visitDate + ", diseaseCode=" + diseaseCode
				+ ", significant=" + significant + ", dogName=" + dogName + ", diseaseName=" + diseaseName
				+ ", memberId=" + memberId + "]";
	}
	public HealthVO() {
	}

	
}
