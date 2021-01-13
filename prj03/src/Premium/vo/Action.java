package Premium.vo;
// Premium.vo.Action
import java.util.Date;

public class Action {
/*
fiskno NUMBER,
mcode varchar2(1000),
actdate DATE,
acttitle varchar2(100),
actcontent varchar2(300),
actname varchar2(50)
 */
	private int fiskno;
	private String mcode;
	private Date actdate;
	private String acttitle;
	private String actcontent;
	private String actname;
	public Action() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Action(int fiskno, String mcode, Date actdate, String acttitle, String actcontent, String actname) {
		super();
		this.fiskno = fiskno;
		this.mcode = mcode;
		this.actdate = actdate;
		this.acttitle = acttitle;
		this.actcontent = actcontent;
		this.actname = actname;
	}
	public int getFiskno() {
		return fiskno;
	}
	public void setFiskno(int fiskno) {
		this.fiskno = fiskno;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public Date getActdate() {
		return actdate;
	}
	public void setActdate(Date actdate) {
		this.actdate = actdate;
	}
	public String getActtitle() {
		return acttitle;
	}
	public void setActtitle(String acttitle) {
		this.acttitle = acttitle;
	}
	public String getActcontent() {
		return actcontent;
	}
	public void setActcontent(String actcontent) {
		this.actcontent = actcontent;
	}
	public String getActname() {
		return actname;
	}
	public void setActname(String actname) {
		this.actname = actname;
	}
	
	
}


