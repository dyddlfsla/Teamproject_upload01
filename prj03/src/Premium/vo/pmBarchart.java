package Premium.vo;
// Premium.vo.MaBarchart
public class pmBarchart {
	private String pmname;
	private int pro_cnt;


	public pmBarchart(String pmname, int pro_cnt) {
		super();
		this.pmname = pmname;
		this.pro_cnt = pro_cnt;
	}


	public String getPmname() {
		return pmname;
	}


	public void setPmname(String pmname) {
		this.pmname = pmname;
	}


	public int getPro_cnt() {
		return pro_cnt;
	}


	public void setPro_cnt(int pro_cnt) {
		this.pro_cnt = pro_cnt;
	}


	public pmBarchart() {
		super();
		// TODO Auto-generated constructor stub
	}
}
