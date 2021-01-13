<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>말은 마음의 초상이다.-레이</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">	
<style>
	html, body{
  font-family: 'Roboto', sans-serif;
}
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
		border-spacing:30px;
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
      margin-top:10%;
      position:fixed;
   }
   select{
		width:100px;
		padding: .8em .5em;
		border:1px solid #999;
		border-radius:7px;
		background:url('arrow.jpg') no-repeat 95% 50%;
		-webkid-appearance:none;
		-moz-appearance:none;
		appearance:none;
	}
            button{
            	background: 0 none; border: 0 none;
            }

            .buttons{
            	position: relative; 
            	text-align: center; 
            	margin-top: 100px;
            }
            .buttons button{
            	overflow: hidden; 
            	position: relative; 
            	display: inline-block; 
            	vertical-align: top; 
            	width: 200px; 
            	height: 100px; 
            	line-height: 100px; 
            	border: 1px solid #225ea7; 
            	transition: all 0.5s;
            }
            .buttons button:hover{color: #fff;}
            .buttons button:before{
            	content: ""; 
            	z-index: -1; 
            	position: absolute; 
            	background: #225ea7; 
            	transition: all 1s;
            }
            .buttons.buttons2 .button5:before{
            left: 50%; 
            top: 0; 
            transform: translateX(-50%); 
            width: 0; 
            height: 100%;
           }
            .buttons.buttons2 .button5:hover:before{width: 100%;}
	a:link{color:#fff;text-decoration:none;}
	a:visited{color:#fff;text-decoration:none;}
	a:hover{color:#fff;text-decoration:none;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.5.1.js"></script>
<script>
	$(document).ready(function(){
        $("#start").text("좋은 시작!!");
	});
	function scroll_follow(scroll){
		$(window).scroll(function(){
			var position=$(window).scrollTop();
			$(scroll).stop().animate({top:position+"px"},1000);
		});
	}

</script>
</head>
<%-- 
# 시작
1.

--%>
<body>
	<table id="header" align="center" width="100%">
		<colgroup>
		<col width="10%">
		<col width="80%">
		<col width="10%">
		<tr>
			<td align="center"><img alt="" src="./img/icon-menu-512.png" 
					style="width:50px; height:50px;"></td>
			<td align="center"><img alt="" src="./img/logo.png" 
					style="width:250px;height:auto;margin-left:30px;"></td>
			<td>&nbsp;</td>
		</tr>
	</table>
	<hr>
	<div id="menu" >
		<div>
		</div>
		<table id="mainmenu">
			<tr><td><img alt="" src="./img/home.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="main.jsp"/>HOME</td></tr>
			<tr><td><img alt="" src="./img/group.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="groups.jsp"/>GROUPS</a></td></tr>
			<tr><td><img alt="" src="./img/cal.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="cal01.jsp"/>CALENDAR</td></tr>
			<tr><td><img alt="" src="./img/list.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="my_wishlist.jsp"/>BUCKET LIST</td></tr>
			<tr><td><img alt="" src="./img/wish.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="popular_wishlist.jsp"/>FIND WISHES</td></tr>
		</table>
	</div>
	<div id="scroll">
		<img alt="" src="./img/adv.png" width="100%" height="100%">
	</div>
</body>
</html>