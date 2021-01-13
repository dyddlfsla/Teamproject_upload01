package Premium.vo;

public class And_workCeo {
	 private String ename;
	 private String protitle;
	 private String field;
	 private String startdate;
	 private String enddate;
	public And_workCeo(String ename, String protitle, String field, String startdate, String enddate) {
		super();
		this.ename = ename;
		this.protitle = protitle;
		this.field = field;
		this.startdate = startdate;
		this.enddate = enddate;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getProtitle() {
		return protitle;
	}

	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public And_workCeo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}


   