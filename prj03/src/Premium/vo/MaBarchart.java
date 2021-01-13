package Premium.vo;
// Premium.vo.MaBarchart
public class MaBarchart {
	private String protitle;
	private int maprogress;

public MaBarchart(String protitle, int maprogress) {
	super();
	this.protitle = protitle;
	this.maprogress = maprogress;
	}
	public String getProtitle() {
		return protitle;
	}
	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}
	public int getMaprogress() {
		return maprogress;
	}
	public void setMaprogress(int maprogress) {
		this.maprogress = maprogress;
	}
	public MaBarchart() {
		super();
		// TODO Auto-generated constructor stub
	}
}
