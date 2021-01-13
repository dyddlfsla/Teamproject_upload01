package Premium.vo;

public class Pro_gress {
// progress ings, comp,dead
	private int prigress;
	private int ings;
	private int comp;
	private int dead;
	
	
	public Pro_gress(int prigress, int ings, int comp, int dead) {
		super();
		this.prigress = prigress;
		this.ings = ings;
		this.comp = comp;
		this.dead = dead;
	}

	public Pro_gress() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getPrigress() {
		return prigress;
	}

	public void setPrigress(int prigress) {
		this.prigress = prigress;
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

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
