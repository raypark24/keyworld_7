package sesoc.global.keyworld.vo;


public class RealArticle {
	private String title;
	private String arcURL;
	private String broadcast;
	private String date;
	private String content;
	
	public RealArticle(){}
	public RealArticle(String title, String arcURL, String broadcast, String date, String content) {
		super();
		this.title = title;
		this.arcURL = arcURL;
		this.broadcast = broadcast;
		this.date = date;
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArcURL() {
		return arcURL;
	}
	public void setArcURL(String arcURL) {
		this.arcURL = arcURL;
	}
	public String getBroadcast() {
		return broadcast;
	}
	public void setBroadcast(String broadcast) {
		this.broadcast = broadcast;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "RealArticle [title=" + title + ", arcURL=" + arcURL + ", broadcast=" + broadcast + ", date=" + date
				+ ", content=" + content + "]";
	}
	
	
}
