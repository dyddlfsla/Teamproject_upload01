<%-- --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
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
	#cal{
		margin:auto;
		width:60%;
		
	}
	#cal01{
		margin:auto;
		width:60%;
		border:1px solid #BDBDBD;
	}
	select{
		width:100px;
		padding: .8em .5em;
		border:1px solid #999;
		border-radius:7px;
		background:url('./img/arrow.jpg') no-repeat 95% 50%;
		-webkid-appearance:none;
		-moz-appearance:none;
		appearance:none;
	}
	#calendar{
		margin:auto;
		width:60%;
		height:550px;
		box-sizing:border-box;
		padding:0.5%;
		display:inline-box;
	}
	#search{
		margin:auto;
		width:15%;
		margin-left:40%;
		margin-top:50px;
		display:inline-box;
		background:#fff;
	}
	#search01{
		margin:auto;
		width:15%;
		margin-left:60%;
		position:absolute;
		margin-top:-35px;
		display:inline-block;
		background:#fff;
	}
	#wish01{
		margin-left:38%;
		margin-top:50px;
		align:center;
		width:30%;
		height:100px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
	}
	#wish02{
		margin-left:38%;
		margin-top:20px;
		align:center;
		width:30%;
		height:100px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
	}
	#wish03{
		margin-left:38%;
		margin-top:20px;
		align:center;
		width:30%;
		height:100px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
	}
	#wish04{
		margin-left:38%;
		margin-top:20px;
		align:center;
		width:30%;
		height:100px;
		border:1px solid #BDBDBD;
		border-radius:10px;
		padding:10px;
		box-sizing:border-box;
	}
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
	};
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
	<div id="search" style="width:500px;height:30px;">
		<input type="text" style=" height:30px;width:300px;">
		<img alt="" src="./img/11.png" style="width:30px;height:30px;vertical-align:middle;align:center;margin-left:-50px;" onclick="alert('검색')">
	</div>
	<div id="search01">
		<select>
			<option value="popular">추천순</option>
			<option value="latest">최신순</option>
			<option value="travel">여행</option>
			<option value="foods">맛집</option>
			<option value="shopping">쇼핑</option>
			<option value="wishes">소원</option>
		</select>
	</div>
	
	<div id="wish01">
		<font size="1">여행</font>
		<hr>
		<font size="3">부산 여행가기</font><br>
		<font size="2" color="grey">재밌었는디</font>
	</div>
	<div id="wish02">
		<font size="1">쇼핑</font>
		<hr>
		<font size="3">면세점 샤핑</font><br>
		<font size="2">플렉스잼</font>
	</div>
	<div id="wish03">
		<font size="1">맛집</font>
		<hr>
		<font size="3">야탑에 JMT 두루치기집있음</font><br>
		<font size="2">맛있겠다</font>
	</div>
	<div id="wish04">
		<font size="1">여행</font>
		<hr>
		<font size="3">런던</font><br>
		<font size="2">가고싶다</font>
	</div>
</body>
</html>