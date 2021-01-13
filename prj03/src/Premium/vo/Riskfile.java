package Premium.vo;

import java.util.Date;

public class Riskfile {

/*
 riskno NUMBER,
filename varchar2(300),
indate DATE,
chdate date
 */
	private int riskno;
	private String filename;
	private Date indate;
	private Date chdate;
	public Riskfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Riskfile(int riskno, String filename, Date indate, Date chdate) {
		super();
		this.riskno = riskno;
		this.filename = filename;
		this.indate = indate;
		this.chdate = chdate;
	}
	public int getRiskno() {
		return riskno;
	}
	public void setRiskno(int riskno) {
		this.riskno = riskno;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public Date getChdate() {
		return chdate;
	}
	public void setChdate(Date chdate) {
		this.chdate = chdate;
	}
	
	
}
