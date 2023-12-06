package displayFlex.store.vo;

public class StoreVo {
	
	private String detailNo;
	private String productCateNo;
	private String memberNo;
	private String image;
	private String title;
	private String price;
	private String productElement;
	private String enrollDate;
	private String delYn;
	private String shortDescription;
	
	
	public StoreVo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public StoreVo(String detailNo, String productCateNo, String memberNo, String image, String title, String price,
			String productElement, String enrollDate, String delYn, String shortDescription) {
		super();
		this.detailNo = detailNo;
		this.productCateNo = productCateNo;
		this.memberNo = memberNo;
		this.image = image;
		this.title = title;
		this.price = price;
		this.productElement = productElement;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.shortDescription = shortDescription;
	}


	@Override
	public String toString() {
		return "StoreVo [detailNo=" + detailNo + ", productCateNo=" + productCateNo + ", memberNo=" + memberNo
				+ ", image=" + image + ", title=" + title + ", price=" + price + ", productElement=" + productElement
				+ ", enrollDate=" + enrollDate + ", delYn=" + delYn + ", shortDescription=" + shortDescription + "]";
	}


	public String getDetailNo() {
		return detailNo;
	}


	public void setDetailNo(String detailNo) {
		this.detailNo = detailNo;
	}


	public String getProductCateNo() {
		return productCateNo;
	}


	public void setProductCateNo(String productCateNo) {
		this.productCateNo = productCateNo;
	}


	public String getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getProductElement() {
		return productElement;
	}


	public void setProductElement(String productElement) {
		this.productElement = productElement;
	}


	public String getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getDelYn() {
		return delYn;
	}


	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}


	public String getShortDescription() {
		return shortDescription;
	}


	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	
	
}//class
