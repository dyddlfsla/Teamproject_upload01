<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="whatMvc.A03_database.*" 
    import="java.util.*"
    import="whatMvc.A01_vo.*"
      
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>  
<style>
	table{width:410px; }
   .bt{ width:100%; height:40px; font-size:25px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   .bt2{ width:130px; height:40px; font-size:20px; background-color:#1EA4FF; border:0;outline:0; cursor:pointer; }
   .text{width:98%; height:40px;}
   #lo{position:absolute; left:700px; top:150px;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>

</head>
<%-- 
# 시작
1.

--%>
<%

String id = request.getParameter("id"); if(id==null) id="";
String pass = request.getParameter("pass"); if(pass==null) pass="";
//String admin = request.getParameter("admin");

	if(!id.equals("")){ 
		signup db = new signup();
		Member m = db.login(id, pass);
		if(m!=null){	 // 데이터가 있는경우 
		
			if (id.equals("admin") && pass.equals("123456")) {
				System.out.println("관리자 페이지 처리");
				RequestDispatcher rd = request.getRequestDispatcher("/A00_base.do");
				rd.forward(request, response);
			}else{
				session.setAttribute("mem", m);
				RequestDispatcher rd = request.getRequestDispatcher("/main.do");
		      // request에 있는 모델을 넘기기 위해서 forward 처리.
		    	rd.forward(request, response);
			}
		} 
	}
	
%>
<script>
   $(document).ready(function(){
        $("#fid").click(function(){ 
        	location.href="${path}/findid.do";
        });
        $("#fpas").click(function(){ 
        	location.href="${path}/findpass.do";
        });
        $("#sign").click(function(){ 
        	location.href="${path}/signup1.do";
        });
        $("#admin").click(function(){ 
        	
        	
        		$("form").submit();	
        	
        	
        });
        /*
        $("#admin").click(function(){
        	if(id.equals("admin")&&pass.equals("123456")){ 
        		location.href="${path}/A02_mvc/admin/A01_Report2.do";
        	}else{ 
        		$("#admin").sumbit();
        	}
        	
        });
        */
   });

</script>
<body>
   <div id="lo">
   <a href="${path}/frist.do"><img src="${path}/Whatsup/sign_login_find/logo.png" style="width:450px;"></a>
   	<form method="post" >
   	<table align="center">
   		<tr><td><input type="text" placeholder="아이디" name="id" class="text"></td></tr>
   		<tr><td><input type="password" placeholder="비밀번호" name="pass" class="text"></td></tr>
   		<tr><td><input type="button" value="로그인" class="bt" id="admin"></td></tr>
   	</table>
   	</form>
   	<br>
   	<table align="center">
   		<tr><td>
   		<input type="button" value="아이디찾기" class="bt2" id="fid">
   		<input type="button" value="비밀번호찾기" class="bt2" id="fpas">
   		<input type="button" value="회원가입" class="bt2" id="sign">
   		</td></tr>
   	</table>
   </div>
</body>
</html>