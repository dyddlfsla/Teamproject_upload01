package Premium.vo;

import java.util.Date;

public class Workfile {
	
	private int workno;
	private String filename;
	private Date indate;
	private Date chdate;
	
	
	
	public Workfile() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Workfile(int workno, String filename, Date indate, Date chdate) {
		super();
		this.workno = workno;
		this.filename = filename;
		this.indate = indate;
		this.chdate = chdate;
	}



	public int getWorkno() {
		return workno;
	}



	public void setWorkno(int workno) {
		this.workno = workno;
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
