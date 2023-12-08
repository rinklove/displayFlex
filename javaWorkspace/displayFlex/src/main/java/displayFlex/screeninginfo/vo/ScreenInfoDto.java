package displayFlex.screeninginfo.vo;

public class ScreenInfoDto {
	private String title;
	private String theater;
	private String date;
	private String startTime;
	private String endTime;
	
	public ScreenInfoDto(String title, String theater, String date, String startTime, String endTime) {
		super();
		this.title = title;
		this.theater = theater;
		this.date = date;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public String getTitle() {
		return title;
	}

	public String getTheater() {
		return theater;
	}

	public String getDate() {
		return date;
	}

	public String getStartTime() {
		return startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	@Override
	public String toString() {
		return "ScreenInfoDto [title=" + title + ", theater=" + theater + ", date=" + date + ", startTime=" + startTime
				+ ", endTime=" + endTime + "]";
	}
}
