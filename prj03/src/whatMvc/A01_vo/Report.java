package whatMvc.A01_vo;

import java.util.Date;
/*
CREATE TABLE report(
		ID VARCHAR2(20) NOT NULL,
		RID VARCHAR2(20) NOT NULL,
		Rday DATe,
		Post VARCHAR2(100) NOT NULL,
		reason VARCHAR2(20) NOT NULL,
		process VARCHAR2(2) NOT NULL,
		result2 VARCHAR2(20) 
	);
	*/
public class Report {
	private int no;
	private String id;
	private String rid;
	private Date rday;
	private String post;
	private String contents;
	private String reason;
	private String process;
	private String result2;
	
	
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

	public Report(int no, String id, String rid, String post, String contents, String reason, String result2) {
		super();
		this.no = no;
		this.id = id;
		this.rid = rid;
		this.post = post;
		this.contents = contents;
		this.reason = reason;
		this.result2 = result2;
	}




	public Report(String contents, String result2, int no) {
		super();
		this.no = no;
		this.contents = contents;
		this.result2 = result2;
	}




	public Report(int no, String id, String rid, Date rday, String post, String contents, String reason, String process,
			String result2) {
		super();
		this.no = no;
		this.id = id;
		this.rid = rid;
		this.rday = rday;
		this.post = post;
		this.contents = contents;
		this.reason = reason;
		this.process = process;
		this.result2 = result2;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getRid() {
		return rid;
	}


	public void setRid(String rid) {
		this.rid = rid;
	}


	public Date getRday() {
		return rday;
	}


	public void setRday(Date rday) {
		this.rday = rday;
	}


	public String getPost() {
		return post;
	}


	public void setPost(String post) {
		this.post = post;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getReason() {
		return reason;
	}


	public void setReason(String reason) {
		this.reason = reason;
	}


	public String getProcess() {
		return process;
	}


	public void setProcess(String process) {
		this.process = process;
	}


	public String getResult2() {
		return result2;
	}


	public void setResult2(String result2) {
		this.result2 = result2;
	}


	
	
}
