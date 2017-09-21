package sesoc.global.keyworld.vo;

public class Scrap {
	
	private int scrap_num;
	private int article_num;
	private String scrap_date;
	private String userid;
	
	public int getScrap_num() {
		return scrap_num;
	}
	public void setScrap_num(int scrap_num) {
		this.scrap_num = scrap_num;
	}
	public int getArticle_num() {
		return article_num;
	}
	public void setArticle_num(int article_num) {
		this.article_num = article_num;
	}
	public String getScrap_date() {
		return scrap_date;
	}
	public void setScrap_date(String scrap_date) {
		this.scrap_date = scrap_date;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Scrap [scrap_num=" + scrap_num + ", article_num=" + article_num + ", scrap_date=" + scrap_date
				+ ", userid=" + userid + "]";
	}
	public Scrap(int scrap_num, int article_num, String scrap_date, String userid) {
		super();
		this.scrap_num = scrap_num;
		this.article_num = article_num;
		this.scrap_date = scrap_date;
		this.userid = userid;
	}
	public Scrap() {
		super();
	} 
	
	

}
