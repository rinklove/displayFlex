package displayFlex.serviceCenter.inquiry.vo;

public class InquiryVo {
	
	private String onetooneNo;
	private String memberNo;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String reTitle;
	private String reContent;
	private String reEnrollDate;
	
	public String getOnetooneNo() {
		return onetooneNo;
	}
	public void setOnetooneNo(String onetooneNo) {
		this.onetooneNo = onetooneNo;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
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
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getDeleteYn() {
		return deleteYn;
	}
	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	public String getReTitle() {
		return reTitle;
	}
	public void setReTitle(String reTitle) {
		this.reTitle = reTitle;
	}
	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	public String getReEnrollDate() {
		return reEnrollDate;
	}
	public void setReEnrollDate(String reEnrollDate) {
		this.reEnrollDate = reEnrollDate;
	}
	public InquiryVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public InquiryVo(String onetooneNo, String memberNo, String title, String content, String enrollDate,
			String deleteYn, String reTitle, String reContent, String reEnrollDate) {
		super();
		this.onetooneNo = onetooneNo;
		this.memberNo = memberNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.deleteYn = deleteYn;
		this.reTitle = reTitle;
		this.reContent = reContent;
		this.reEnrollDate = reEnrollDate;
	}
	@Override
	public String toString() {
		return "InquiryVo [onetooneNo=" + onetooneNo + ", memberNo=" + memberNo + ", title=" + title + ", content="
				+ content + ", enrollDate=" + enrollDate + ", deleteYn=" + deleteYn + ", reTitle=" + reTitle
				+ ", reContent=" + reContent + ", reEnrollDate=" + reEnrollDate + "]";
	}
	
	
	
}