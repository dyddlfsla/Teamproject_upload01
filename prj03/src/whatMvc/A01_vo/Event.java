package whatMvc.A01_vo;

import java.util.Date;

/*
CREATE TABLE event(
	eno NUMBER PRIMARY KEY,
	etype VARCHAR2(20) NOT NULL,
	company VARCHAR2(20) NOT NULL,
	sday DATE,
	eday DATE,
	contents VARCHAR2(2000),
	process VARCHAR2(20) 
);
 */
public class Event {
	private int eno;
	private String etype;
	private String company;
	private Date sday;
	private String insday;
	private Date eday;
	private String ineday;
	private String contents;
	private String process;
	
	public Event() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Event(String etype, String company, String insday, String ineday, String contents, String process) {
		super();
		
		this.etype = etype;
		this.company = company;
		this.insday = insday;
		this.ineday = ineday;
		this.contents = contents;
		this.process = process;
	}
	
	public Event(String etype, String company, String insday, String ineday, String contents, String process, int eno) {
		super();
		this.eno = eno;
		this.etype = etype;
		this.company = company;
		this.insday = insday;
		this.ineday = ineday;
		this.contents = contents;
		this.process = process;
	}
	
	public Event(int eno, String etype, String company, String insday, String ineday, String contents, String process) {
		super();
		this.eno = eno;
		this.etype = etype;
		this.company = company;
		this.insday = insday;
		this.ineday = ineday;
		this.contents = contents;
		this.process = process;
	}




	public Event(int eno, String etype, String company, Date sday, Date eday, String contents, String process) {
		super();
		this.eno = eno;
		this.etype = etype;
		this.company = company;
		this.sday = sday;
		this.eday = eday;
		this.contents = contents;
		this.process = process;
	}

	public Event(int eno, String etype, String company, Date sday, String insday, Date eday, String ineday,
			String contents, String process) {
		super();
		this.eno = eno;
		this.etype = etype;
		this.company = company;
		this.sday = sday;
		this.insday = insday;
		this.eday = eday;
		this.ineday = ineday;
		this.contents = contents;
		this.process = process;
	}

	public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public String getEtype() {
		return etype;
	}

	public void setEtype(String etype) {
		this.etype = etype;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Date getSday() {
		return sday;
	}

	public void setSday(Date sday) {
		this.sday = sday;
	}

	public String getInsday() {
		return insday;
	}

	public void setInsday(String insday) {
		this.insday = insday;
	}

	public Date getEday() {
		return eday;
	}

	public void setEday(Date eday) {
		this.eday = eday;
	}

	public String getIneday() {
		return ineday;
	}

	public void setIneday(String ineday) {
		this.ineday = ineday;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	
	
}
