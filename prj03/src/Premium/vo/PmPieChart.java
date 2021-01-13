package Premium.vo;

public class PmPieChart {
	private int progress;
	private int ings;
	private int comp;
	private int dead;
	
	public PmPieChart(int progress, int ings, int comp, int dead) {
		super();
		this.progress = progress;
		this.ings = ings;
		this.comp = comp;
		this.dead = dead;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}

	public int getIngs() {
		return ings;
	}

	public void setIngs(int ings) {
		this.ings = ings;
	}

	public int getComp() {
		return comp;
	}

	public void setComp(int comp) {
		this.comp = comp;
	}

	public int getDead() {
		return dead;
	}

	public void setDead(int dead) {
		this.dead = dead;
	}

	public PmPieChart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
