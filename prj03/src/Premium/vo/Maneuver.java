package Premium.vo;

public class Maneuver {
	
	/*
	mcode varchar2(1000),
divide varchar2(100),
mname varchar2(100),
mcomtent varchar2(300)
	 */
	
	private String mcode;
	private String divide;
	private String mname;
	private String mcomtent;
	public Maneuver() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Maneuver(String mcode, String divide, String mname, String mcomtent) {
		super();
		this.mcode = mcode;
		this.divide = divide;
		this.mname = mname;
		this.mcomtent = mcomtent;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getDivide() {
		return divide;
	}
	public void setDivide(String divide) {
		this.divide = divide;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMcomtent() {
		return mcomtent;
	}
	public void setMcomtent(String mcomtent) {
		this.mcomtent = mcomtent;
	}
	
	

}
