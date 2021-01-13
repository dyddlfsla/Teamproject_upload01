package whatMvc.A01_vo;

public class nable {
	private String listkey;
	private String nabletitle ;
	private String id ;
	
	public nable() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public nable(String listkey, String nabletitle, String id) {
		super();
		this.listkey = listkey;
		this.nabletitle = nabletitle;
		this.id = id;
	}

	public String getListkey() {
		return listkey;
	}
	public void setListkey(String listkey) {
		this.listkey = listkey;
	}
	public String getNabletitle() {
		return nabletitle;
	}
	public void setNabletitle(String nabletitle) {
		this.nabletitle = nabletitle;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
