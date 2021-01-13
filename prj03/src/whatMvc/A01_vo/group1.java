package whatMvc.A01_vo;
/*
groupkey varchar2(50),
	groupname varchar2(100),
	listkey varchar2(50),
	id varchar2(40) 
*/
public class group1 {
	private String groupkey;
	private String groupname;
	private String listkey;
	private String id;
	private String title;
	public group1() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public group1(String groupname) {
		super();
		this.groupname = groupname;
	}

	public group1(String groupkey, String groupname, String listkey, String id, String title) {
		super();
		this.groupkey = groupkey;
		this.groupname = groupname;
		this.listkey = listkey;
		this.id = id;
		this.title = title;
	}
	public String getGroupkey() {
		return groupkey;
	}
	public void setGroupkey(String groupkey) {
		this.groupkey = groupkey;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public String getListkey() {
		return listkey;
	}
	public void setListkey(String listkey) {
		this.listkey = listkey;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
