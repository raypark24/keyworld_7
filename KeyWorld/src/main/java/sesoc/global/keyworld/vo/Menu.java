package sesoc.global.keyworld.vo;

public class Menu {
	
	private int nationNum;
	private String broadcastName;
	private int broadcastNum;
	private String divisionName;
	private int divisionNum;
	
	public int getNationNum() {
		return nationNum;
	}
	public void setNationNum(int nationNum) {
		this.nationNum = nationNum;
	}
	public String getBroadcastName() {
		return broadcastName;
	}
	public void setBroadcastName(String broadcastName) {
		this.broadcastName = broadcastName;
	}
	public int getBroadcastNum() {
		return broadcastNum;
	}
	public void setBroadcastNum(int broadcastNum) {
		this.broadcastNum = broadcastNum;
	}
	public String getDivisionName() {
		return divisionName;
	}
	public void setDivisionName(String divisionName) {
		this.divisionName = divisionName;
	}
	public int getDivisionNum() {
		return divisionNum;
	}
	public void setDivisionNum(int divisionNum) {
		this.divisionNum = divisionNum;
	}
	@Override
	public String toString() {
		return "Menu [nationNum=" + nationNum + ", broadcastName=" + broadcastName + ", broadcastNum=" + broadcastNum
				+ ", divisionName=" + divisionName + ", divisionNum=" + divisionNum + "]";
	}
	public Menu(int nationNum, String broadcastName, int broadcastNum, String divisionName, int divisionNum) {
		super();
		this.nationNum = nationNum;
		this.broadcastName = broadcastName;
		this.broadcastNum = broadcastNum;
		this.divisionName = divisionName;
		this.divisionNum = divisionNum;
	}
	public Menu() {
		super();
	}
	
	
	
	

}
