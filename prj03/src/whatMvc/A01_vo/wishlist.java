package whatMvc.A01_vo;

import java.util.Date;

/*
 * listkey varchar2(50),
	title varchar2(100),
	pic varchar2(50),
	recommend number,
	url varchar2(500),
	openck number,
	insdate date,
	kategorie varchar2(30),
	id varchar2(40),
	groupkey varchar2(50)*/
public class wishlist {
	private String listkey;
	private String title;
	private String pic;
	private int recommend;
	private String url;
	private int openck ;
	private Date insdate; 
	private String kategorie;
	private String id;
	private String groupkey;
	public wishlist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public wishlist(String listkey, String title, String pic, int recommend, String url, int openck, Date insdate,
			String kategorie, String id, String groupkey) {
		super();
		this.listkey = listkey;
		this.title = title;
		this.pic = pic;
		this.recommend = recommend;
		this.url = url;
		this.openck = openck;
		this.insdate = insdate;
		this.kategorie = kategorie;
		this.id = id;
		this.groupkey = groupkey;
	}
	public String getListkey() {
		return listkey;
	}
	public void setListkey(String listkey) {
		this.listkey = listkey;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getOpenck() {
		return openck;
	}
	public void setOpenck(int openck) {
		this.openck = openck;
	}
	public Date getInsdate() {
		return insdate;
	}
	public void setInsdate(Date insdate) {
		this.insdate = insdate;
	}
	public String getKategorie() {
		return kategorie;
	}
	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGroupkey() {
		return groupkey;
	}
	public void setGroupkey(String groupkey) {
		this.groupkey = groupkey;
	}
	
	
}
