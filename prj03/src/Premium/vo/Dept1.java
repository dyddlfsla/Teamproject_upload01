package Premium.vo;

public class Dept1 {

	/*
	deptno NUMBER,
deptname varchar2(50)
	 */
	
	private int deptno;
	private String deptname;
	public Dept1() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Dept1(int deptno, String deptname) {
		super();
		this.deptno = deptno;
		this.deptname = deptname;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	
	
	
}
