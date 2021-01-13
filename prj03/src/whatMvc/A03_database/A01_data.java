package whatMvc.A03_database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import whatMvc.A01_vo.Event;
import whatMvc.A01_vo.Faq;
import whatMvc.A01_vo.Report;



public class A01_data {
	
	// 웹화면 처리를 위한 모듈 만들기..
	// 데이터 베이스에서 출력된 내용 ==> ArrayList로 담아서  ==> 웹화면 등 외부 다른 환경에서 출력 처리.
	/*
	# 웹화면 처리.
	1. 데이터 출력1 : 테이블과 혼합하여.
	2. 검색 조건으로 출력 처리..
	3. 데이터 등록 : 등록 인터페이스, 데이터베이스 등록..
	4. 데이터 수정 : 기본 화면에서
	5. 데이터 삭제 : 기본 화면에서.
	 * 
	 * */	
		private Connection con;
		private Statement stmt;
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
		
		public ArrayList<Report> rlist() {
			ArrayList<Report> rlist = new ArrayList<Report>();
			try {
				setConn(); 
				stmt = con.createStatement();
				String sql = "select * FROM report";
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					System.out.print(rs.getInt(1) + "\t");
					System.out.print(rs.getString(2) + "\t");
					System.out.print(rs.getString(3) + "\t");
					System.out.print(rs.getDate(4) + "\t");
					System.out.print(rs.getString(5) + "\t");
					System.out.print(rs.getString(6) + "\t");
					System.out.print(rs.getString(7) + "\t");
					System.out.print(rs.getString(8) + "\t");
					System.out.print(rs.getString(9) + "\n");
					// 단위 객체로 생성하고, ArrayList에 할당 처리..
					// Emp(int empno, String ename, String job, int mgr, Date hiredate, double sal, double comm, 
					//     int deptno)
					// 초기화 처리..
					/*
					CREATE TABLE report(
							ID VARCHAR2(20) NOT NULL,
							RID VARCHAR2(20) NOT NULL,
							Rday DATe,
							Post VARCHAR2(100) NOT NULL,
							contents VARCHAR2(2000) NOT NULL,
							reason VARCHAR2(20) NOT NULL,
							process VARCHAR2(2) NOT NULL,
							result2 VARCHAR2(20) 
						);
						*/
					
					Report report = new Report(rs.getInt("no"),rs.getString("id"), rs.getString("rid"), rs.getDate("rday"),
							rs.getString("post"), rs.getString("contents"), rs.getString("reason"), rs.getString("process"),
							rs.getString("result2"));
					rlist.add(report); // ArrayList에 담기 처리..
					
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
				System.out.println("# 기타 예외 발생 #");
				System.out.println(e.getMessage());
			}
			return rlist;
		}
		
	public void uptreport(Report upt) {

			try {		
				setConn();  
				String sql = "UPDATE report\r\n" +  
						"	set	contents = ?,\r\n" + 
						"		process = 'o',\r\n" + 
						"		rday = SYSDATE,\r\n" + 
						"		result2 = ?\r\n" + 
						"WHERE no = ?";
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, upt.getContents());
				pstmt.setString(2, upt.getResult2());
				pstmt.setInt(3, upt.getNo());
				pstmt.executeUpdate();
				con.commit();
				pstmt.close();
				con.close();	
				System.out.println("정보 수정 성공");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("# 데이터베이스 처리 오류 #");
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
	
	public Report getreport(int no) {
		Report report =null; // 값이 없을 때는 null, 값이 있을 때는 객체 생성..
		try {
			setConn(); 
			
			String sql = "select * FROM report "
					+ "where no = ? ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				/*
				CREATE TABLE report(
	no NUMBER PRIMARY KEY,
	id VARCHAR2(20) NOT NULL,
	rid VARCHAR2(20) NOT NULL,
	rday DATe,
	post VARCHAR2(100) NOT NULL,
	contents VARCHAR2(2000) NOT NULL,
	reason VARCHAR2(20) NOT NULL,
	process VARCHAR2(2) NOT NULL,
	result2 VARCHAR2(20) 
);
*/
				System.out.println("데이터 있음..");
				report = new Report(rs.getInt("no"), rs.getString("id"),
						rs.getString("rid"),
						rs.getString("post"), rs.getString("contents"),
						rs.getString("reason"),rs.getString("result2"));
			}
			System.out.println("데이터:"+report.getNo());
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
		return report;
	}
	
		
	public ArrayList<Event> elist() {
		ArrayList<Event> elist = new ArrayList<Event>();
		try {
			setConn(); 
			stmt = con.createStatement();
			String sql = "select * FROM event";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
				System.out.print(rs.getInt(1) + "\t");
				System.out.print(rs.getString(2) + "\t");
				System.out.print(rs.getString(3) + "\t");
				System.out.print(rs.getDate(4) + "\t");
				System.out.print(rs.getDate(5) + "\t");
				System.out.print(rs.getString(6) + "\t");
				System.out.print(rs.getString(7) + "\n");

				
				Event event = new Event(rs.getInt("eno"),rs.getString("etype"), 
						rs.getString("company"), 
						rs.getDate("sday"), rs.getDate("eday"),
						rs.getString("contents"),rs.getString("process"));
				elist.add(event); // ArrayList에 담기 처리..
				
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
			System.out.println("# 기타 예외 발생 #");
			System.out.println(e.getMessage());
		}
		return elist;
	}
	
	public void insertEvent(Event ins) {
		try {
			setConn();
			//INSERT INTO event
			//values(event_no.nextval,'이벤트','파리바게트','20201008','20201022','아직 내용 없음',null);
			// to_date(?,'YYYYMMDD'),to_date(?,'YYYYMMDD')
			String sql = "INSERT INTO Event values(event_no.nextval,?,?,"
					+ "to_date(?,'YYYY-MM-DD'),to_date(?,'YYYY-MM-DD'),?,?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getEtype());
			pstmt.setString(2, ins.getCompany());
			pstmt.setString(3, ins.getInsday());
			pstmt.setString(4, ins.getIneday());
			pstmt.setString(5, ins.getContents());
			pstmt.setString(6, ins.getProcess());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("# 데이터베이스 처리 오류 #");
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
	
	
	public void updateEvent(Event upt) {

		try {		
			setConn();  
			String sql = "UPDATE Event\r\n" + 
					"	SET etype = ?,\r\n" + 
					"		company = ?,\r\n" + 
					"		sday = to_date(?,'YYYY-MM-DD'),\r\n" + 
					"		eday = to_date(?,'YYYY-MM-DD'),\r\n" + 
					"		contents = ?,\r\n" + 
					"		process = ?" + 
					"WHERE eno = ?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getEtype());
			pstmt.setString(2, upt.getCompany());
			pstmt.setString(3, upt.getInsday());
			pstmt.setString(4, upt.getIneday());
			pstmt.setString(5, upt.getContents());
			pstmt.setString(6, upt.getProcess());
			pstmt.setInt(7, upt.getEno());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();	
			System.out.println("정보 수정 성공");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("# 데이터베이스 처리 오류 #");
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
	public void deleteEvent(int eno) {		
		try {
			setConn();
			String sql = "DELETE\r\n" + 
					"FROM event\r\n" + 
					"WHERE eno=?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, eno);
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			System.out.println(eno+"삭제 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("# 데이터베이스 처리 오류 #");
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
	
	public Event getEvent(int eno) {
		Event event =null; // 값이 없을 때는 null, 값이 있을 때는 객체 생성..
		try {
			setConn(); 
			
			String sql = "select * FROM event "
					+ "where eno = ? ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, eno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				
				/*
				CREATE TABLE event(
			eno NUMBER PRIMARY KEY,
			etype VARCHAR2(20) NOT NULL,
			company VARCHAR2(20) NOT NULL,
			sday DATE,
			eday DATE,
			contents VARCHAR2(2000),
			process VARCHAR2(20) 
		);
			//INSERT INTO event
					//values(event_no.nextval,'이벤트','파리바게트','20201008','20201022','아직 내용 없음',null);

					String sql = "INSERT INTO Event values(event_no.nextval,?,?,"
							+ "to_date(?,'YYYYMMDD'),to_date(?,'YYYYMMDD'),?,?)";
				 */
				System.out.println("데이터 있음..");
				event = new Event(rs.getInt("eno"), rs.getString("etype"),
						rs.getString("company"),rs.getDate("sday"),rs.getDate("eday"),
						rs.getString("contents"), rs.getString("process"));
			}
			System.out.println("데이터:"+event.getEtype());
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
		return event;
	}
	
	
	
	
	
	public ArrayList<Faq> flist() {
			ArrayList<Faq> flist = new ArrayList<Faq>();
			try {
				setConn(); 
				stmt = con.createStatement();
				String sql = "select * FROM faq";
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
					System.out.print(rs.getInt(1) + "\t");
					System.out.print(rs.getString(2) + "\t");
					System.out.print(rs.getString(3) + "\t");
					System.out.print(rs.getString(4) + "\t");
					System.out.print(rs.getDate(5) + "\t");
					System.out.print(rs.getString(6) + "\t");
					System.out.print(rs.getInt(7) + "\t");
					System.out.print(rs.getInt(8) + "\t");
					System.out.print(rs.getString(9) + "\n");
					// 단위 객체로 생성하고, ArrayList에 할당 처리..
					// Emp(int empno, String ename, String job, int mgr, Date hiredate, double sal, double comm, 
					//     int deptno)
					// 초기화 처리..
					
					Faq faq = new Faq(rs.getInt("no1"),rs.getString("name"), rs.getString("writer"), rs.getString("category"), rs.getDate("rday"),
							rs.getString("contents"), rs.getInt("views"), rs.getInt("satisfaction"),
							rs.getString("modifi"));
					flist.add(faq); // ArrayList에 담기 처리..
					
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
				System.out.println("# 기타 예외 발생 #");
				System.out.println(e.getMessage());
			}
			return flist;
		}
		
		public void insertFaq(Faq ins) {
			try {
				setConn();
				//INSERT INTO faq
				//values('로그인 문제 발생시','김지민','로그인',sysdate,'아직은 내용없음',0,0,null);
				String sql = "INSERT INTO Faq values(?,?,?,?,sysdate,?,0,0,null)";
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, ins.getNo1());
				pstmt.setString(2, ins.getName());
				pstmt.setString(3, ins.getWriter());
				pstmt.setString(4, ins.getCategory());
				pstmt.setString(5, ins.getContents());
				pstmt.executeUpdate();
				con.commit();
				pstmt.close();
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("# 데이터베이스 처리 오류 #");
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
		public void updateFaq(Faq upt) {
			
			try {		
				setConn();  
				String sql = "UPDATE Faq\r\n" + 
						"	SET name = ?,\r\n" + 
						"		writer = ?,\r\n" + 
						"		category = ?,\r\n" + 
						"		contents = ?" + 
						"WHERE no1 = ?";
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, upt.getName());
				pstmt.setString(2, upt.getWriter());
				pstmt.setString(3, upt.getCategory());
				pstmt.setString(4, upt.getContents());
				pstmt.setInt(5, upt.getNo1());
				pstmt.executeUpdate();
				con.commit();
				pstmt.close();
				con.close();	
				System.out.println("정보 수정 성공");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("# 데이터베이스 처리 오류 #");
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
		public void deleteFaq(int no1) {		
			try {
				setConn();
				String sql = "DELETE\r\n" + 
						"FROM faq\r\n" + 
						"WHERE no1=?";
				con.setAutoCommit(false);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, no1);
				pstmt.executeUpdate();
				con.commit();
				pstmt.close();
				con.close();
				System.out.println(no1+"삭제 완료");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("# 데이터베이스 처리 오류 #");
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
		
		public Faq getFaq(int no1) {
			Faq faq =null; // 값이 없을 때는 null, 값이 있을 때는 객체 생성..
			try {
				setConn(); 
				
				String sql = "select * FROM faq "
						+ "where no1 = ? ";
				System.out.println(sql);
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, no1);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					System.out.println("데이터 있음..");
					faq = new Faq(rs.getInt("no1"), rs.getString("name"),
							rs.getString("Writer"),
							rs.getString("Category"), rs.getString("Contents"));
				}
				System.out.println("데이터:"+faq.getName());
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
			return faq;
		}
		
		
		

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_data db = new A01_data();
		//db.updateEvent(new Event("1","1","20200120","20201120","1","1",26));
		//db.elist();
		db.insertEvent(new Event("dd","ddd","20201008","20201022","아직 내용 없음","222"));
		//db.getEvent(2);
		//db.insertEvent(new Event("제휴","외환카드","20200912","20201122","내용1","진행중"));
		//db.rlist();
		//db.uptreport(new Report("내용2","강퇴",9));
		//db.updateFaq(new Faq("로그아웃 문제","김기태","로그아웃","내용없어3",1));
		//System.out.println(db.getFaq(1));
		//db.rlist();
		//db.insertFaq(new Faq("로그아웃이 안될때","김지민","로그아웃","아직 내용 없음"));
		//db.insertMember(new Member("startMan","7778","정형주",2000,"관리자","gg@gmail.com"));	
		//values('로그인 문제 발생시','김지민','로그인',sysdate,'아직은 내용없음',0,0,null);
	}

}
