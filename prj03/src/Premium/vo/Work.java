package Premium.vo;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Work {
/*
workno NUMBER,
prono NUMBER,
empno NUMBER,
worktitle varchar2(100),
workcontent varchar2(300),
startdate DATE,
enddate DATE,
progress NUMBER,
progper number

SELECT protitle , WORKTITLE , ename , a.STARTDATE, a.ENDDATE , d.PROGCONTENT , a.PROGPER 
FROM WORK a, PROJECT b, emp1 c, PROGRESS d
WHERE 1=1
and a.prono = b.prono
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS;
 */
	
	private String sessEmp;
	private int workno;
	private int prono;
	private int empno;
	private int mgr;
	private String worktitle;
	private String protitle;
	private String ename;
	private String dname;
	private String progcontent;
	private String workcontent;		
	private Date startdate;
	private Date enddate;
	private int duration;
	private String sd;
	private String ed;
	private int progress;
	private int progper;
	private MultipartFile [] report;
	private ArrayList<String> filename;
	
	
	
	public Work() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

	public Work(String worktitle, String protitle, Date startdate, Date enddate) {
		super();
		this.worktitle = worktitle;
		this.protitle = protitle;
		this.startdate = startdate;
		this.enddate = enddate;
	}




	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getSessEmp() {
		return sessEmp;
	}
	public void setSessEmp(String sessEmp) {
		this.sessEmp = sessEmp;
	}
	public int getWorkno() {
		return workno;
	}
	public void setWorkno(int workno) {
		this.workno = workno;
	}
	public int getProno() {
		return prono;
	}
	public void setProno(int prono) {
		this.prono = prono;
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
	public String getWorktitle() {
		return worktitle;
	}
	public void setWorktitle(String worktitle) {
		this.worktitle = worktitle;
	}
	public String getProtitle() {
		return protitle;
	}
	public void setProtitle(String protitle) {
		this.protitle = protitle;
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
	public String getProgcontent() {
		return progcontent;
	}
	public void setProgcontent(String progcontent) {
		this.progcontent = progcontent;
	}
	public String getWorkcontent() {
		return workcontent;
	}
	public void setWorkcontent(String workcontent) {
		this.workcontent = workcontent;
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
	public MultipartFile[] getReport() {
		return report;
	}
	public void setReport(MultipartFile[] report) {
		this.report = report;
	}
	public ArrayList<String> getFilename() {
		return filename;
	}
	public void setFilename(ArrayList<String> filename) {
		this.filename = filename;
	}
	
	
}
