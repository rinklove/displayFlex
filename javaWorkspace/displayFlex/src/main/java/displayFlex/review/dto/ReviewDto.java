package displayFlex.review.dto;

public class ReviewDto {
	private String reviewNo;			//리뷰번호
	private String memberNick	;		//회원 닉네임
	private String content;				//내용
	private String writeDate;			//작성일자
	private String rate;					//평점
	
	public ReviewDto(String reviewNo, String memberNick, String content, String writeDate, String rate) {
		super();
		this.reviewNo = reviewNo;
		this.memberNick = memberNick;
		this.content = content;
		this.writeDate = writeDate;
		this.rate = rate;
	}

	public String getReviewNo() {
		return reviewNo;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public String getContent() {
		return content;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public String getRate() {
		return rate;
	}

	@Override
	public String toString() {
		return "ReviewDto [reviewNo=" + reviewNo + ", memberNick=" + memberNick + ", content=" + content
				+ ", writeDate=" + writeDate + ", rate=" + rate + "]";
	}
	
}
