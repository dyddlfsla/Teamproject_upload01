package whatMvc.A01_vo;

import java.util.Date;
/*
CREATE TABLE faq(
	name VARCHAR2(50) NOT NULL,
	writer VARCHAR2(20) NOT NULL,
	rday DATe,
	contents VARCHAR2(2000) NOT NULL,
	views number NOT NULL,
	satisfaction number NOT NULL,
	modifi VARCHAR2(2) 
);
 */

public class Faq {
	private int no1;
	private String name;
	private String writer;
	private String category;
	private Date rday;
	private String contents;
	private int views;
	private int satisfaction;
	private String modifi;
	
	
	
	public Faq(int no1, String name, String writer, String category, String contents) {
		super();
		this.no1 = no1;
		this.name = name;
		this.writer = writer;
		this.category = category;
		this.contents = contents;
	}
	public Faq(String name, String writer, String category, String contents, int no1) {
		super();
		this.no1 = no1;
		this.name = name;
		this.writer = writer;
		this.category = category;
		this.contents = contents;
	}






	public Faq() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	



	public Faq(int no1, String name, String writer, String category, Date rday, String contents, int views,
			int satisfaction, String modifi) {
		super();
		this.no1 = no1;
		this.name = name;
		this.writer = writer;
		this.category = category;
		this.rday = rday;
		this.contents = contents;
		this.views = views;
		this.satisfaction = satisfaction;
		this.modifi = modifi;
	}



	public int getNo1() {
		return no1;
	}



	public void setNo1(int no1) {
		this.no1 = no1;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public Date getRday() {
		return rday;
	}



	public void setRday(Date rday) {
		this.rday = rday;
	}



	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public int getViews() {
		return views;
	}



	public void setViews(int views) {
		this.views = views;
	}



	public int getSatisfaction() {
		return satisfaction;
	}



	public void setSatisfaction(int satisfaction) {
		this.satisfaction = satisfaction;
	}



	public String getModifi() {
		return modifi;
	}



	public void setModifi(String modifi) {
		this.modifi = modifi;
	}






}
