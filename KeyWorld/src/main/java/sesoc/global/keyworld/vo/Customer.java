package sesoc.global.keyworld.vo;

public class Customer {
	private String userid;
	private String password;
	private String email;
	private int porint;
	private String user_name;

	public Customer() {	}

	public Customer(String userid, String password, String email, int porint, String user_name) {
		super();
		this.userid = userid;
		this.password = password;
		this.email = email;
		this.porint = porint;
		this.user_name = user_name;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPorint() {
		return porint;
	}

	public void setPorint(int porint) {
		this.porint = porint;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	@Override
	public String toString() {
		return "Customer [userid=" + userid + ", password=" + password + ", email=" + email + ", porint=" + porint
				+ ", user_name=" + user_name + "]";
	}
	
	
}
