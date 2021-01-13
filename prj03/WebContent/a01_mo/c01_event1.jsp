<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#menu{
      background:#5882FA;
      color:#fff;
      width:14%;
      height:80%;
      float:left;
      position:fixed;
   }
   #mainmenu{
      margin-top:60%;
      border-collapse:separate;
      border-spacing:10px;
   }
    #scroll{
      position:absolute;
      right:0;
      border:1px solid #5882FA;
      color:#000;
      width:15%;
      height:300px;
      display:inline-block;
      margin-right:10px;
      position:fixed;
   }
   	#content{
   		float:right;
  		margin-right:25%;
   		margin-top:50px;
   	}

</style>
<script type="text/javascript">
function go(){
	location.href="b01_user.jsp";
}
function go1(){
	location.href="c01_event1.jsp";
}
function go2(){
	location.href="d01_FAQ.jsp";
}
</script>
</head>

<body>
<table id="header" align="center" width="100%">
      <colgroup>
      <col width="10%">
      <col width="80%">
      <col width="10%">
      <tr>
         <td align="center"><img alt="" src="image/icon-menu-512.png" 
               style="width:50px; height:50px;"></td>
         <td align="center"><img alt="" src="image/logo.png" 
               style="width:250px;height:auto;margin-left:30px;"></td>
         <td>&nbsp;</td>
      </tr>
   </table>
   <hr>
   <div id="menu" >
      <div>
      </div>
      <table id="mainmenu">
         <tr><td><img alt="" src="image/home.png" 
               style="width:20px;height:20px;align:center;"></td><td onclick="go()">신고</td></tr>
         <tr><td><img alt="" src="image/group.png" 
               style="width:20px;height:20px;align:center;"></td><td onclick="go1()">제휴/이벤트</td></tr>
         <tr><td><img alt="" src="image/cal.png" 
               style="width:20px;height:20px;align:center;"></td><td onclick="go2()">FAQ</td></tr>
      </table>
   </div>
   <div id="content" style="width:1000;height:1000;">
   <iframe src="${path}/C01_Event.do" width="1000"  height="1000"
   frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0>
   </iframe>
	</div>
   <div id="scroll">
   광고
   </div>
</body>
</html>