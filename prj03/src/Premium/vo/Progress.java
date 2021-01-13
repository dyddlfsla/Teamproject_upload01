package Premium.vo;

public class Progress {
/*
 progress NUMBER,
progcontent varchar2(50)
 */
	
	private int progress;
	private String progcontent;
	private int USER2; 
	public Progress() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Progress(int progress, String progcontent) {
		super();
		this.progress = progress;
		this.progcontent = progcontent;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public String getProgcontent() {
		return progcontent;
	}
	public void setProgcontent(String progcontent) {
		this.progcontent = progcontent;
	}
	public int getUser2() {
		return USER2;
	}
	public void setUser2(int user2) {
		this.USER2 = user2;
	}
	
	
}
