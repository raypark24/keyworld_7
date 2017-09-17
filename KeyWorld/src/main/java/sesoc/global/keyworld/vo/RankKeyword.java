package sesoc.global.keyworld.vo;

public class RankKeyword {
	private int keyword_num;
	private String keyword;
	
	public RankKeyword(){
		
	}
	public RankKeyword(int keyword_num, String keyword) {
		super();
		this.keyword_num = keyword_num;
		this.keyword = keyword;
	}
	public int getKeyword_num() {
		return keyword_num;
	}
	public void setKeyword_num(int keyword_num) {
		this.keyword_num = keyword_num;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "RankKeyword [keyword_num=" + keyword_num + ", keyword=" + keyword + "]";
	}
}
