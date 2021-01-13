package Premium.vo;

import java.util.Date;

public class Project {
	private int prono;
	private int empno;
	private String protitle;
	private int pm;
	private String field;
	private Date startdate;
	private Date enddate;
	private String sd;
	private String ed;
	private String comment1;
	private int progress;
	private String ename;

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}


	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Project(String protitle, int progress) {
		super();
		this.protitle = protitle;
		this.progress = progress;
	}

	public Project(int prono, String protitle, int pm, String field, Date startdate, Date enddate, String comment1,
			int progress) {
		super();
		this.prono = prono;
		this.protitle = protitle;
		this.pm = pm;
		this.field = field;
		this.startdate = startdate;
		this.enddate = enddate;
		this.comment1 = comment1;
		this.progress = progress;
	}

	public int getProno() {
		return prono;
	}

	public void setProno(int prono) {
		this.prono = prono;
	}

	public String getProtitle() {
		return protitle;
	}

	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}

	public int getPm() {
		return pm;
	}

	public void setPm(int pm) {
		this.pm = pm;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getComment1() {
		return comment1;
	}

	public void setComment1(String comment1) {
		this.comment1 = comment1;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}

	public String getSd() {
		return sd;
	}

	public void setSd(String sd) {
		this.sd = sd;
	}

	public String getEd() {
		return ed;
	}

	public void setEd(String ed) {
		this.ed = ed;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
	
	
	
	

}
