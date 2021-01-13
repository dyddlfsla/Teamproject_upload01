package whatMvc.A01_vo;

public class Member {
	private String id;
	private String pass;
	private String name;
	private int tel;
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public Member(String pass, String id) {
		super();
		this.id = id;
		this.pass = pass;
	}
	public Member(String pass) {
		super();
		this.pass = pass;
	}
	public Member(String name, int tel) {
		super();
		this.name = name;
		this.tel = tel;
	}

	public Member(String id,String name, int tel) {
		super();
		this.id = id;
		this.name = name;
		this.tel = tel;
	}



	
	public Member(String id, String pass, String name, int tel) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.tel = tel;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	

}
