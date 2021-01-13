package whatMvc.A03_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import whatMvc.A01_vo.group1;
import whatMvc.A01_vo.nable;









public class project_db {
	private Statement stmt;
	private Connection con;
	   private PreparedStatement pstmt;
	   private ResultSet rs;

	   public void setConn() throws SQLException {
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         // @.jar 안에 폴드형식으로 만들어진 드라이버명..
	      } catch (ClassNotFoundException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	         System.out.println("드라이버 로딩 에러발생:" + e.getMessage());
	      }
	      String url = "jdbc:oracle:thin:@localhost:1521:xe";
	      con = DriverManager.getConnection(url, "scott", "tiger");
	      System.out.println("접속 성공!!");
	   }

	   public ArrayList<group1> group1List() {
		      ArrayList<group1> glist = new ArrayList<group1>();
		      try {
		         setConn(); 
		         stmt = con.createStatement();
		         String sql = "select * FROM group1 where groupkey = 'g1'";
		         rs = stmt.executeQuery(sql);
		         while (rs.next()) {
		        	 /*
		        	 groupkey varchar2(50),
		        	 	groupname varchar2(100),
		        	 	listkey varchar2(50),
		        	 	id varchar2(40) 
		        	 	title
		        	 */   
		   

		        	 group1 g1 = new group1( rs.getString("groupkey"),rs.getString("groupname"),
		        			 rs.getString("listkey"),rs.getString("id"),rs.getString("title"));
		            glist.add(g1);
		            
		         }
		         rs.close();
		         stmt.close();
		         con.close();

		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		         System.out.println(e.getMessage());
		         if (rs != null)
		            rs = null;
		         if (stmt != null)
		            stmt = null;
		         if (con != null)
		            con = null;
		      } catch (Exception e) {
		         System.out.println("# ��Ÿ ���� �߻� #");
		         System.out.println(e.getMessage());
		      }
		      return glist;
		   }
	   public ArrayList<group1> group1List2() {
		      ArrayList<group1> glist = new ArrayList<group1>();
		      try {
		         setConn(); 
		         stmt = con.createStatement();
		         String sql = "select * FROM group1 where groupkey = 'g2'";
		         rs = stmt.executeQuery(sql);
		         while (rs.next()) {
		        	 /*
		        	 groupkey varchar2(50),
		        	 	groupname varchar2(100),
		        	 	listkey varchar2(50),
		        	 	id varchar2(40) 
		        	 	title
		        	 */   
		   

		        	 group1 g1 = new group1( rs.getString("groupkey"),rs.getString("groupname"),
		        			 rs.getString("listkey"),rs.getString("id"),rs.getString("title"));
		            glist.add(g1);
		            
		         }
		         rs.close();
		         stmt.close();
		         con.close();

		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		         System.out.println(e.getMessage());
		         if (rs != null)
		            rs = null;
		         if (stmt != null)
		            stmt = null;
		         if (con != null)
		            con = null;
		      } catch (Exception e) {
		         System.out.println("# ��Ÿ ���� �߻� #");
		         System.out.println(e.getMessage());
		      }
		      return glist;
		   }
	   public ArrayList<group1> gnameList() {
		      ArrayList<group1> glist = new ArrayList<group1>();
		      try {
		         setConn(); 
		         stmt = con.createStatement();
		         String sql = "SELECT DISTINCT groupname FROM group1 where GROUPKEY = 'g1'";
		         rs = stmt.executeQuery(sql);
		         while (rs.next()) {
		        	 /*
		        	 groupkey varchar2(50),
		        	 	groupname varchar2(100),
		        	 	listkey varchar2(50),
		        	 	id varchar2(40) 
		        	 */   
		   

		        	 group1 g1 = new group1( rs.getString("groupname"));
		            glist.add(g1);
		            
		         }
		         rs.close();
		         stmt.close();
		         con.close();

		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		         System.out.println(e.getMessage());
		         if (rs != null)
		            rs = null;
		         if (stmt != null)
		            stmt = null;
		         if (con != null)
		            con = null;
		      } catch (Exception e) {
		         System.out.println("# ��Ÿ ���� �߻� #");
		         System.out.println(e.getMessage());
		      }
		      return glist;
		   }
	   public ArrayList<group1> gnameList2() {
		      ArrayList<group1> glist = new ArrayList<group1>();
		      try {
		         setConn(); 
		         stmt = con.createStatement();
		         String sql = "SELECT DISTINCT groupname FROM group1 where GROUPKEY = 'g2'";
		         rs = stmt.executeQuery(sql);
		         while (rs.next()) {
		        	 /*
		        	 groupkey varchar2(50),
		        	 	groupname varchar2(100),
		        	 	listkey varchar2(50),
		        	 	id varchar2(40) 
		        	 */   
		   

		        	 group1 g1 = new group1( rs.getString("groupname"));
		            glist.add(g1);
		            
		         }
		         rs.close();
		         stmt.close();
		         con.close();

		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		         System.out.println(e.getMessage());
		         if (rs != null)
		            rs = null;
		         if (stmt != null)
		            stmt = null;
		         if (con != null)
		            con = null;
		      } catch (Exception e) {
		         System.out.println("# ��Ÿ ���� �߻� #");
		         System.out.println(e.getMessage());
		      }
		      return glist;
		   }
	   public group1 getgroup1(String groupkey) {
		   group1 g =null; 
			try {
				setConn(); 
				
				String sql = "select groupname FROM group1 "
						+ "where groupkey = ? ";
				System.out.println(sql);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, groupkey);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					g = new group1(			
							rs.getString("groupname") );
				}
				rs.close();
				pstmt.close();
				con.close();
		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
				if (rs != null)
					rs = null;
				if (pstmt != null)
					pstmt = null;
				if (con != null)
					con = null;
			} catch (Exception e) {
				System.out.println("# 기타 예외 발생 #");
				System.out.println(e.getMessage());
			}
			return g;
		}
	   
	   public ArrayList<nable> nableList() {
		      ArrayList<nable> nlist = new ArrayList<nable>();
		      try {
		         setConn(); 
		         stmt = con.createStatement();
		         String sql = "SELECT DISTINCT  nabletitle FROM nable WHERE id = 'awdawd'";
		         rs = stmt.executeQuery(sql);
		         while (rs.next()) {
		  
		        	nable n1 = new nable( rs.getString("listkey"),rs.getString("nabletitle"),rs.getString("id"));
		            nlist.add(n1);
		            
		         }
		         rs.close();
		         stmt.close();
		         con.close();

		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         e.printStackTrace();
		         System.out.println(e.getMessage());
		         if (rs != null)
		            rs = null;
		         if (stmt != null)
		            stmt = null;
		         if (con != null)
		            con = null;
		      } catch (Exception e) {
	
		      }
		      return nlist;
		   }
}
