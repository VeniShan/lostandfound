package bean;

/*
 * 与用户表对应的系统用户类
 */

public class User {

	private String id;//主键
	private String userid;//用户id
	private String password;//用户密码
	private String imei;//用户手机imei
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getImei() {
		return imei;
	}
	public void setImei(String imei) {
		this.imei = imei;
	}
	
	
	
}
