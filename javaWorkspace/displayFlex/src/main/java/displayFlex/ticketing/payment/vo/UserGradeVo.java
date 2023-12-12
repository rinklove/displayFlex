package displayFlex.ticketing.payment.vo;

public class UserGradeVo {
//	PREVILEGED_YN 장애인여부
//	REGISTER_NO 주민번호
//  GRADE_NO 회원등급번호
	private String gradeNo;
	private String previlegedYn;
	private String registerNo;
	
	public String getGradeNo() {
		return gradeNo;
	}
	public void setGradeNo(String gradeNo) {
		this.gradeNo = gradeNo;
	}
	public String getPrevilegedYn() {
		return previlegedYn;
	}
	public void setPrevilegedYn(String previlegedYn) {
		this.previlegedYn = previlegedYn;
	}
	public String getRegisterNo() {
		return registerNo;
	}
	public void setRegisterNo(String registerNo) {
		this.registerNo = registerNo;
	}
	public UserGradeVo(String gradeNo, String previlegedYn, String registerNo) {
		super();
		this.gradeNo = gradeNo;
		this.previlegedYn = previlegedYn;
		this.registerNo = registerNo;
	}
	public UserGradeVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserGradeVo [gradeNo=" + gradeNo + ", previlegedYn=" + previlegedYn + ", registerNo=" + registerNo
				+ "]";
	}
	
	
	
}
