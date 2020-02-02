package bean;

import java.util.Date;

public class Lost {

	//主键
	private int id;
	
	//物品名称
	private String name;
	
	//类型
	private int type_id;
	
	//拾取时间
	private Date datetime;
	
	//地铁站id
	private int station_id;
	
	//地铁线
	private int line_id;
	
	//是否丢在车内
	private int line_flag;
	
	//拾取人电话
	private int phone;
	
	//状态
	private int status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public int getStation_id() {
		return station_id;
	}

	public void setStation_id(int station_id) {
		this.station_id = station_id;
	}

	public int getLine_id() {
		return line_id;
	}

	public void setLine_id(int line_id) {
		this.line_id = line_id;
	}

	public int getLine_flag() {
		return line_flag;
	}

	public void setLine_flag(int line_flag) {
		this.line_flag = line_flag;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	
}
