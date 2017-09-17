package sesoc.global.keyworld.vo;

public class Article {
	private int article_num;
	private int division_num;
	private String title;
	private String text;
	private String writed_date;
	private double emotion_point;
	private String url;
	
	public Article(){}
	public Article(int article_num, int division_num, String title, String text, String writed_date,
			double emotion_point, String url) {
		super();
		this.article_num = article_num;
		this.division_num = division_num;
		this.title = title;
		this.text = text;
		this.writed_date = writed_date;
		this.emotion_point = emotion_point;
		this.url = url;
	}
	public int getArticle_num() {
		return article_num;
	}
	public void setArticle_num(int article_num) {
		this.article_num = article_num;
	}
	public int getDivision_num() {
		return division_num;
	}
	public void setDivision_num(int division_num) {
		this.division_num = division_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getWrited_date() {
		return writed_date;
	}
	public void setWrited_date(String writed_date) {
		this.writed_date = writed_date;
	}
	public double getEmotion_point() {
		return emotion_point;
	}
	public void setEmotion_point(double emotion_point) {
		this.emotion_point = emotion_point;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Article [article_num=" + article_num + ", division_num=" + division_num + ", title=" + title + ", text="
				+ text + ", writed_date=" + writed_date + ", emotion_point=" + emotion_point + ", url=" + url + "]";
	}
	
	
	
}
