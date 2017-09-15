package sesoc.global.keyworld.vo;

public class Keyword {
	private String nation_num;
	private String keyword;
	private Double latitude;
	private Double longitude;
	
	public Keyword() {
	}
	
	public Keyword(String nation_num, String keyword, Double latitude, Double longitude) {
		super();
		this.nation_num = nation_num;
		this.keyword = keyword;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getNation_num() {
		return nation_num;
	}
	public void setNation_num(String nation_num) {
		this.nation_num = nation_num;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	@Override
	public String toString() {
		return "Keyword [nation_num=" + nation_num + ", keyword=" + keyword + "]";
	}
	
	

}
