package sesoc.global.keyworld.vo;

public class RealKeyword {
	private int realtime_num;
	private String keyword;
	private String realTime;
	
	
	public RealKeyword() {}
	public RealKeyword(int realtime_num, String keyword, String realTime) {
		super();
		this.realtime_num = realtime_num;
		this.keyword = keyword;
		this.realTime = realTime;
	}
	public int getRealtime_num() {
		return realtime_num;
	}
	public void setRealtime_num(int realtime_num) {
		this.realtime_num = realtime_num;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getRealTime() {
		return realTime;
	}
	public void setRealTime(String realTime) {
		this.realTime = realTime;
	}
	@Override
	public String toString() {
		return "RealKeyword [realtime_num=" + realtime_num + ", keyword=" + keyword + ", realTime=" + realTime + "]";
	}
	
	
}
