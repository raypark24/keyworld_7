package sesoc.global.keyworld.vo;

/**
 * @author SCITMaster
 *
 */
public class ScrapedArticle {
	
	private int scrap_num;
	private int article_num;
	private String scrap_date;
	private String userid;
	private String article_title;
	private String article_url;
	
	public ScrapedArticle() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScrapedArticle(int scrap_num, int article_num, String scrap_date, String userid, String article_title,
			String article_url) {
		super();
		this.scrap_num = scrap_num;
		this.article_num = article_num;
		this.scrap_date = scrap_date;
		this.userid = userid;
		this.article_title = article_title;
		this.article_url = article_url;
	}

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

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_url() {
		return article_url;
	}

	public void setArticle_url(String article_url) {
		this.article_url = article_url;
	}

	@Override
	public String toString() {
		return "ScrapedArticle [scrap_num=" + scrap_num + ", article_num=" + article_num + ", scrap_date=" + scrap_date
				+ ", userid=" + userid + ", article_title=" + article_title + ", article_url=" + article_url + "]";
	}
	
	
	
}
