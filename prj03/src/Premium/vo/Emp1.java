package Premium.vo;

import java.util.Date;

public class Emp1 {
	private int deptno;  // 부서번호
	private int rankno;  // 직급번호
	private int powerno; // 권한번호
	private Date indate; // 입사일
	private String ind;  // 입사일 string로 변환
	private String tel;  // 전화번호
	private String pass; // 비밀번호
	private String deptname; // 부서이름
	private String rankname; // 직급이름
	private String powername;// 권한이름
	
	/*
	empno NUMBER PRIMARY KEY,
deptno NUMBER,
rankno NUMBER,
powerno NUMBER,
ename varchar2(50),
mail varchar2(200),
indate DATE,
tel number
	 */
	
	// 로그인
	private int empno;
	private String ename;
	private String mail;
	
	
	
	
	public Emp1() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public Emp1(String pass, int empno, String ename) {
		super();
		this.pass = pass;
		this.empno = empno;
		this.ename = ename;
	}



	public Emp1(int empno, String ename, String deptname, String rankname, String powername) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.deptname = deptname;
		this.rankname = rankname;
		this.powername = powername;
	}

	public Emp1(int empno, String ename, String mail, int deptno, int rankno, int powerno, Date indate, String tel) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.mail = mail;
		this.deptno = deptno;
		this.rankno = rankno;
		this.powerno = powerno;
		this.indate = indate;
		this.tel = tel;
	}
	

	public Emp1(int empno, String ename, String mail, int deptno, int rankno, int powerno, Date indate, String tel,
			String pass, String deptname, String rankname, String powername) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.mail = mail;
		this.deptno = deptno;
		this.rankno = rankno;
		this.powerno = powerno;
		this.indate = indate;
		this.tel = tel;
		this.pass = pass;
		this.deptname = deptname;
		this.rankname = rankname;
		this.powername = powername;
	}
	
	
	
	public Emp1(String ename, String mail, int deptno, int rankno, int powerno, Date indate, String tel) {
		super();
		this.ename = ename;
		this.mail = mail;
		this.deptno = deptno;
		this.rankno = rankno;
		this.powerno = powerno;
		this.indate = indate;
		this.tel = tel;
	}

	public Emp1(int empno, int deptno, int rankno, int powerno, String ename, String mail, Date indate, String tel) {
		super();
		this.empno = empno;
		this.deptno = deptno;
		this.rankno = rankno;
		this.powerno = powerno;
		this.ename = ename;
		this.mail = mail;
		this.indate = indate;
		this.tel = tel;
	}
	
	public Emp1(int empno, int deptno, int rankno, int powerno, String ename, String mail, Date indate, String tel,
			String deptname) {
		super();
		this.empno = empno;
		this.deptno = deptno;
		this.rankno = rankno;
		this.powerno = powerno;
		this.ename = ename;
		this.mail = mail;
		this.indate = indate;
		this.tel = tel;
		this.deptname = deptname;
	}
	
	public Emp1(int empno, int deptno, int rankno, int powerno, String ename, String mail, Date indate, String tel,
			String deptname, String rankname, String powername) {
		super();
		this.empno = empno;
		this.deptno = deptno;
		this.rankno = rankno;
		this.powerno = powerno;
		this.ename = ename;
		this.mail = mail;
		this.indate = indate;
		this.tel = tel;
		this.deptname = deptname;
		this.rankname = rankname;
		this.powername = powername;
	}
	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public int getRankno() {
		return rankno;
	}
	public void setRankno(int rankno) {
		this.rankno = rankno;
	}
	public int getPowerno() {
		return powerno;
	}
	public void setPowerno(int powerno) {
		this.powerno = powerno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getRankname() {
		return rankname;
	}
	public void setRankname(String rankname) {
		this.rankname = rankname;
	}
	public String getPowername() {
		return powername;
	}
	public void setPowername(String powername) {
		this.powername = powername;
	}

	public String getInd() {
		return ind;
	}

	public void setInd(String ind) {
		this.ind = ind;
	}
	
	
	
}
