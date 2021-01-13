package Premium.vo;

public class Rank {
	/*
	rankno NUMBER,
rankname varchar2(30)
	 */
	private int rankno;
	private String rankname;
	public Rank() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Rank(int rankno, String rankname) {
		super();
		this.rankno = rankno;
		this.rankname = rankname;
	}
	public int getRankno() {
		return rankno;
	}
	public void setRankno(int rankno) {
		this.rankno = rankno;
	}
	public String getRankname() {
		return rankname;
	}
	public void setRankname(String rankname) {
		this.rankname = rankname;
	}
	
	
}
