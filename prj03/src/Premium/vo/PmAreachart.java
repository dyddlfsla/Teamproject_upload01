package Premium.vo;

public class PmAreachart {
	private String months;
	private int pmprogress;
	
	
	public PmAreachart(String months, int pmprogress) {
		super();
		this.months = months;
		this.pmprogress = pmprogress;
	}


	public String getMonths() {
		return months;
	}


	public void setMonths(String months) {
		this.months = months;
	}


	public int getPmprogress() {
		return pmprogress;
	}


	public void setPmprogress(int pmprogress) {
		this.pmprogress = pmprogress;
	}


	public PmAreachart() {
		super();
		// TODO Auto-generated constructor stub
	}
}
