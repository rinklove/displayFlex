package displayFlex.serviceCenter.faq.vo;

public class FaqVo {
	
	private String no;
	private String categoryNo;
	private String title;
	private String content;
	private String hit;
	private String enrollDate;
	private String modifyDate;
	private String deleteYn;
	
	public FaqVo(String no, String categoryNo, String title, String content, String hit, String enrollDate,
			String modifyDate, String deleteYn) {
		super();
		this.no = no;
		this.categoryNo = categoryNo;
		this.title = title;
		this.content = content;
		this.hit = hit;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.deleteYn = deleteYn;
	}
	
	public FaqVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getDeleteYn() {
		return deleteYn;
	}
	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	
	@Override
	public String toString() {
		return "FaqVo [no=" + no + ", categoryNo=" + categoryNo + ", title=" + title + ", content=" + content + ", hit="
				+ hit + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", deleteYn=" + deleteYn + "]";
	}
	
	
	
	

}
