package displayFlex.coupon.vo;

public class CouponVo {
	
	private String couponNo;
	private String couponType;
	private String couponDiscount;
	private String couponName;
	private String couponCreationDate;
	private String couponValidePeriod;
	private String couponInfo;
	public String getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}
	public String getCouponType() {
		return couponType;
	}
	
	
	
	public void setCouponType(String couponType) {
		this.couponType = couponType;
	}
	public String getCouponDiscount() {
		return couponDiscount;
	}
	public void setCouponDiscount(String couponDiscount) {
		this.couponDiscount = couponDiscount;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getCouponCreationDate() {
		return couponCreationDate;
	}
	public void setCouponCreationDate(String couponCreationDate) {
		this.couponCreationDate = couponCreationDate;
	}
	public String getCouponValidePeriod() {
		return couponValidePeriod;
	}
	public void setCouponValidePeriod(String couponValidePeriod) {
		this.couponValidePeriod = couponValidePeriod;
	}
	public String getCouponInfo() {
		return couponInfo;
	}
	public void setCouponInfo(String couponInfo) {
		this.couponInfo = couponInfo;
	}
	public CouponVo(String couponNo, String couponType, String couponDiscount, String couponName,
			String couponCreationDate, String couponValidePeriod, String couponInfo) {
		super();
		this.couponNo = couponNo;
		this.couponType = couponType;
		this.couponDiscount = couponDiscount;
		this.couponName = couponName;
		this.couponCreationDate = couponCreationDate;
		this.couponValidePeriod = couponValidePeriod;
		this.couponInfo = couponInfo;
	}
	@Override
	public String toString() {
		return "CouponVo [couponNo=" + couponNo + ", couponType=" + couponType + ", couponDiscount=" + couponDiscount
				+ ", couponName=" + couponName + ", couponCreationDate=" + couponCreationDate + ", couponValidePeriod="
				+ couponValidePeriod + ", couponInfo=" + couponInfo + "]";
	}
	public CouponVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

	

}
