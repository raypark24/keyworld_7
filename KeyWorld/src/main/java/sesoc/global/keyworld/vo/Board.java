package sesoc.global.keyworld.vo;

/**
 * @author SCITMaster
 *
 */
public class Board {

	private int boardnum;
	private String content;
	private String title;
	private String writed_date;
	private int rc_count;
	private int view_count;
	private String attached_url;
	private int article_num;
	private String userid;
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Board(int boardnum, String content, String title, String writed_date, int rc_count, int view_count,
			String attached_url, int article_num, String userid) {
		super();
		this.boardnum = boardnum;
		this.content = content;
		this.title = title;
		this.writed_date = writed_date;
		this.rc_count = rc_count;
		this.view_count = view_count;
		this.attached_url = attached_url;
		this.article_num = article_num;
		this.userid = userid;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWrited_date() {
		return writed_date;
	}

	public void setWrited_date(String writed_date) {
		this.writed_date = writed_date;
	}

	public int getRc_count() {
		return rc_count;
	}

	public void setRc_count(int rc_count) {
		this.rc_count = rc_count;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	public String getAttached_url() {
		return attached_url;
	}

	public void setAttached_url(String attached_url) {
		this.attached_url = attached_url;
	}

	public int getArticle_num() {
		return article_num;
	}

	public void setArticle_num(int article_num) {
		this.article_num = article_num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Board [boardnum=" + boardnum + ", content=" + content + ", title=" + title + ", writed_date="
				+ writed_date + ", rc_count=" + rc_count + ", view_count=" + view_count + ", attached_url="
				+ attached_url + ", article_num=" + article_num + ", userid=" + userid + "]";
	}
	
}
