<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.json.simple.JSONObject"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="org.json.simple.JSONArray"%>


<%
	//데이터베이스 접속 정보
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@192.168.4.196:1521:xe";
	String id = "pms03";
	String pw = "7777";
	
	// 접속
	
	Class.forName(driver);
	Connection db = DriverManager.getConnection(url, id, pw);
	request.setCharacterEncoding("utf-8");
	
	
	//모든 데이터를 담을 JSON object
	JSONObject root = new JSONObject();
	
	//사원 목록을 가져온다
	String sql = "SELECT a.*, b.deptname , c.rankname , d.POWERNAME "
			+ "FROM emp1 a, dept1 b, RANK c , power d "  
			+ "WHERE a.DEPTNO = b.deptno AND a.RANKNO = c.RANKNO AND a.POWERNO =d.POWERNO ";
			
	PreparedStatement pstmt = db.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	JSONArray emp_list =new JSONArray();
	
	while(rs.next()){
			JSONObject obj = new JSONObject();
			obj.put("empno", rs.getInt("empno"));
			obj.put("ename", rs.getString("ename"));
			obj.put("deptname", rs.getString("deptname"));
			obj.put("rankname", rs.getString("rankname"));
			obj.put("powername", rs.getString("powername"));
			obj.put("tel", rs.getString("tel"));
			obj.put("mail", rs.getString("mail"));
			obj.put("indate", rs.getString("indate"));
			
			emp_list.add(obj);
		
	}
	root.put("emp_list", emp_list);
	
	db.close();

%>
<%= root.toJSONString() %>
