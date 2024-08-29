package kr.ac.kopo.vo;

public class DiseaseVO {

	private String diseaseCode;
	private String diseaseName;
	private int price;
	
	public DiseaseVO() {
	}

	public String getDiseaseCode() {
		return diseaseCode;
	}

	public void setDiseaseCode(String diseaseCode) {
		this.diseaseCode = diseaseCode;
	}

	public String getDiseaseName() {
		return diseaseName;
	}

	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "DiseaseVO [diseaseCode=" + diseaseCode + ", diseaseName=" + diseaseName + ", price=" + price + "]";
	}
	
}
