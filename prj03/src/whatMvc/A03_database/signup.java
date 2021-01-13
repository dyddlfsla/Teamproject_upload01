package whatMvc.A03_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import whatMvc.A01_vo.*;


public class signup {
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
		String url = "jdbc:oracle:thin:@192.168.4.118:1521:xe";
		con = DriverManager.getConnection(url, "scott", "tiger");
		System.out.println("접속 성공!!");
	}
	// 회원가입
	public void insertmember(Member ins) { 
		   try {
			setConn();
			con.setAutoCommit(false);
			String sql = "INSERT INTO MEMBER values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getId());
			pstmt.setString(2, ins.getPass());
			pstmt.setString(3, ins.getName());
			pstmt.setInt(4, ins.getTel());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			System.out.println("회원등록성공!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("#데이터베이스처리오류#");
			System.out.println(e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("롤백 에러 발생");
			}
			
		}catch(Exception e) { 
			System.out.println("일반오류");
			System.out.println(e.getMessage());
		}finally { 
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		}
		   
	   }
	// 아이디중복체크
	public boolean checkId(String id) { 
		   boolean isValid = false;
		   try {
			setConn();
			String sql = "SELECT *\r\n" + 
					"FROM MEMBER\r\n" + 
					"WHERE id =?";
			pstmt = con.prepareStatement(sql); //sql을 서버에 던지고
			//?에 연결할 데이터를 mapping 처리
			// pstmt.setString(?표의 순서 1부터 시작,데이터);
			pstmt.setString(1,id);
			// 수행처리
			rs = pstmt.executeQuery();
			// rs.next() 데이터가 있을떄 true이기 때문에
			// 해당하는id,pass의 데이터가 1개 있는지 여부를 확인하기 떄문에 while문 필요 없이 if문으로
			// 바로 객체를 할당하고 return하면 된다.
			System.out.println("## 데이터 처리 ##");
			isValid=rs.next(); // 데이터가 있으면 true, 없으면 false
			
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
		   return isValid;
	   }
	
	//로그인
	public Member login(String id, String pass) { 
		Member m = null;
		try {
			setConn();
			String sql ="SELECT * FROM MEMBER\r\n" + 
					"WHERE id=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			System.out.println("데이터 처리");
			if(rs.next()) { 
				m = new Member(rs.getString("id"),rs.getString("pass"),
								rs.getString("name"),rs.getInt("tel"));
			}
			System.out.println("데이터여부:"+m);
			System.out.println("아이디:"+id);
			System.out.println("pass:"+pass);
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			if(rs!=null) rs = null;
			if(pstmt!=null) pstmt = null;
			if(con!=null) con = null;
		} catch (Exception e) { 
			System.out.println("기타예외발생");
			System.out.println(e.getMessage());
		}
		return m;
		
		
	}
	//아이디찾기
	public Member findID(String name, int tel) { 
		   Member m = null;
		   try {
			setConn();
			String sql = "SELECT * FROM Member\r\n" + 
					"WHERE name=? AND tel =?";
			pstmt = con.prepareStatement(sql); //sql을 서버에 던지고
			//?에 연결할 데이터를 mapping 처리
			// pstmt.setString(?표의 순서 1부터 시작,데이터);
			pstmt.setString(1,name);
			pstmt.setInt(2,tel);
			// 수행처리
			rs = pstmt.executeQuery();
			// rs.next() 데이터가 있을떄 true이기 때문에
			// 해당하는id,pass의 데이터가 1개 있는지 여부를 확인하기 떄문에 while문 필요 없이 if문으로
			// 바로 객체를 할당하고 return하면 된다.
			System.out.println("## 데이터 처리 ##");
			
			//String id, String pass, String name, String auth, int phone, String email
			if(rs.next()) {  
				m = new Member(rs.getString("id"),rs.getString("name"),rs.getInt("tel"));
			
			}
			System.out.println(name);
			System.out.println(tel);

			System.out.println("데이터여부:"+m);
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
		   return m;
	   }
	//비밀번호찾기
	public Member findPass(String id,String name, int tel) { 
		   Member m = null;
		   try {
			setConn();
			String sql = "SELECT * FROM Member\r\n" + 
					"WHERE id=? AND name=? AND tel =?";
			pstmt = con.prepareStatement(sql); //sql을 서버에 던지고
			//?에 연결할 데이터를 mapping 처리
			// pstmt.setString(?표의 순서 1부터 시작,데이터);
			pstmt.setString(1, id);
			pstmt.setString(2,name);
			pstmt.setInt(3, tel);
			// 수행처리
			rs = pstmt.executeQuery();
			// rs.next() 데이터가 있을떄 true이기 때문에
			// 해당하는id,pass의 데이터가 1개 있는지 여부를 확인하기 떄문에 while문 필요 없이 if문으로
			// 바로 객체를 할당하고 return하면 된다.
			System.out.println("## 데이터 처리 ##");
			//String id, String pass, String name, String auth, int phone, String email
			if(rs.next()) {  
				m = new Member( rs.getString(1),rs.getString(2), rs.getString(3), rs.getInt(4));
			}
			System.out.println("데이터여부:"+m);
			System.out.println(id);
			System.out.println(name);
			System.out.println(tel);
		
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
		   return m;
	 }
	//비밀번호 재설정
	public void updatepass(Member pas) { 
		try {
			setConn();
			String sql = "UPDATE MEMBER\r\n" + 
					 "	SET pass=?\r\n" + 
					 "WHERE id=?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pas.getPass());
			pstmt.setString(2, pas.getId());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			System.out.println("비밀번호변경");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("오류");
				System.out.println(e.getMessage());
				try {
			          con.rollback();
			       } catch (SQLException e1) {
			          // TODO Auto-generated catch block
			          e1.printStackTrace();
			          System.out.println("롤백 에러 발생..");
			       }         
			    } catch(Exception e) {
			       System.out.println("# 일반 오류 #");
			       System.out.println(e.getMessage());         
			    } finally{
			       if(pstmt!=null) pstmt = null;
			       if(con!=null) con = null;
			 }
		}
	// 개인정보 변경
	public void updateMember(Member me) { 
		try {
			setConn();
			String sql ="UPDATE MEMBER\r\n" + 
					"	SET pass=?,\r\n" + 
					"		tel=?\r\n" + 
					"	WHERE id=?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, me.getPass());
			pstmt.setInt(2, me.getTel());
			pstmt.setString(3, me.getId());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			System.out.println("개인정보변경");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("오류");
				System.out.println(e.getMessage());
				try {
			          con.rollback();
			       } catch (SQLException e1) {
			          // TODO Auto-generated catch block
			          e1.printStackTrace();
			          System.out.println("롤백 에러 발생..");
			       }         
			    } catch(Exception e) {
			       System.out.println("# 일반 오류 #");
			       System.out.println(e.getMessage());         
			    } finally{
			       if(pstmt!=null) pstmt = null;
			       if(con!=null) con = null;
			 }
		}
	
	
			
			
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		signup m = new signup();
		//m.updatepass(new Member("9999","himan"));
		//System.out.println(m.checkId("hi"));
		//System.out.println(m.login("hi", "7777"));
		//m.insertmember(new Member("hi","7777","김기태",0101234567));
		
		//System.out.println(m.findID("himan", 1041234578));
		//System.out.println(m.findPass("himan", "하주호", 1041234578));
		//m.updatepass(new Member("asd","himan"));
		//m.updateMember(new Member("4567",1045457878));
		
	}

}
