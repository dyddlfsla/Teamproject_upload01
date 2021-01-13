package Premium.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Risk {
/*
riskno NUMBER,
prono NUMBER,
workno NUMBER,
indate DATE,
rititle varchar2(100),
rcontent varchar2(300),
yn varchar2(1),
divide varchar2(100)
 */
	
	private int riskno;
	private int prono;
	private int workno;
	private int empno;
	private Date indate;
	private Date eddate;
	private String id;
	private String ed;
	private String rititle;
	private String rcontent;
	private int divide;
	private MultipartFile upload_file;
	private String riskfile;
	private String mname;
	private String mcontent;
	private String protitle;
	private String worktitle;
	private int mgr;
	private String ename;
	private String dname;
	private int progress;
	private int progper;
	private String progcontent;
	
	
	public Risk() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getRiskno() {
		return riskno;
	}
	public void setRiskno(int riskno) {
		this.riskno = riskno;
	}
	public int getProno() {
		return prono;
	}
	public void setProno(int prono) {
		this.prono = prono;
	}
	public int getWorkno() {
		return workno;
	}
	public void setWorkno(int workno) {
		this.workno = workno;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public String getRititle() {
		return rititle;
	}
	public void setRititle(String rititle) {
		this.rititle = rititle;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public int getDivide() {
		return divide;
	}
	public void setDivide(int divide) {
		this.divide = divide;
	}
	/*
	public Object getReport() {
		// TODO Auto-generated method stub
		return null;
	}
	*/
	public char[] getPcode() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String getRiskfile() {
		return riskfile;
	}
	public void setRiskfile(String riskfile) {
		this.riskfile = riskfile;
	}
	public MultipartFile getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMcontent() {
		return mcontent;
	}
	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}
	public String getProtitle() {
		return protitle;
	}
	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}
	public String getWorktitle() {
		return worktitle;
	}
	public void setWorktitle(String worktitle) {
		this.worktitle = worktitle;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getProgper() {
		return progper;
	}
	public void setProgper(int progper) {
		this.progper = progper;
	}
	public String getProgcontent() {
		return progcontent;
	}
	public void setProgcontent(String progcontent) {
		this.progcontent = progcontent;
	}
	public Date getEddate() {
		return eddate;
	}
	public void setEddate(Date eddate) {
		this.eddate = eddate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEd() {
		return ed;
	}
	public void setEd(String ed) {
		this.ed = ed;
	}
	
	
	
}
