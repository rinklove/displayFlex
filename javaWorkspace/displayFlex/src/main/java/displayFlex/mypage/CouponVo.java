package displayFlex.mypage;

public class CouponVo {
	
	private String no;
	private String type;
	private String name;
	private String creationdate;
	private String validperiod;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	public String getValidperiod() {
		return validperiod;
	}
	public void setValidperiod(String validperiod) {
		this.validperiod = validperiod;
	}
	public CouponVo(String no, String type, String name, String creationdate, String validperiod) {
		super();
		this.no = no;
		this.type = type;
		this.name = name;
		this.creationdate = creationdate;
		this.validperiod = validperiod;
	}
	public CouponVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CouponVo [no=" + no + ", type=" + type + ", name=" + name + ", creationdate=" + creationdate
				+ ", validperiod=" + validperiod + "]";
	}
}
