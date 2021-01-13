package Premium.vo;

public class Power {
	/*
	powerno NUMBER,
powername varchar2(30)
	 */
	
	private int powerno;
	private String powername;
	public Power() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Power(int powerno, String powername) {
		super();
		this.powerno = powerno;
		this.powername = powername;
	}
	public int getPowerno() {
		return powerno;
	}
	public void setPowerno(int powerno) {
		this.powerno = powerno;
	}
	public String getPowername() {
		return powername;
	}
	public void setPowername(String powername) {
		this.powername = powername;
	}
	
	

}
