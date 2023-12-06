package displayFlex.serviceCenter.faq.vo;

public class CategoryVo {
	
	private String faqCategoryNo;
	private String division;
	
	@Override
	public String toString() {
		return "CategoryVo [faqCategoryNo=" + faqCategoryNo + ", division=" + division + "]";
	}

	public CategoryVo(String faqCategoryNo, String division) {
		super();
		this.faqCategoryNo = faqCategoryNo;
		this.division = division;
	}

	public CategoryVo() {
		// TODO Auto-generated constructor stub
	}

	public String getFaqCategoryNo() {
		return faqCategoryNo;
	}

	public void setFaqCategoryNo(String faqCategoryNo) {
		this.faqCategoryNo = faqCategoryNo;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}
	
	
	
	
	

}
