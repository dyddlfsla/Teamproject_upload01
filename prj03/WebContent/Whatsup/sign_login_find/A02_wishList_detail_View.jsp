<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"   
    import="whatMvc.A01_vo.*" 
	import="whatMvc.A03_database.*"  
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
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<title>Insert title here</title>
   <style type="text/css">
   /*
   
   */
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
   #container {  /* 전체 콘텐츠를 감싸는 div */
			width:650px;  /* 너비 */
			margin:0 auto;  /* 가로로 중앙에 배치 */
			padding:5px;	/* 테두리와 내용 사이의 패딩 여백 */
         font-family: "맑은 고딕";
		}
		#check {   /* 텍스트 부분을 감싸는 div */
			width:640px;  /* 너비 - 그림 너비 값에 맞춤 */
			border:2px solid black;  /* 테두리 */
         border-bottom-left-radius: 20px;
         border-bottom-right-radius: 20px;
   
		}

      #addmywish {float: right;
      border-radius: 20px;
      margin-right: 20px;
      border:cornflowerblue;
      border:0.1em solid cornflowerblue;

      }
      #report{
      float:right;
      margin-right:55px;
      border-radius: 20px;
      border:0.1em solid cornflowerblue;

      }
      #returntolist{
         margin-top:10px;
         border-radius:20px;
         border:0.1em solid cornflowerblue;
         width: 100px;
         height: 20;

      }
      #amendlist{
         margin-top: 10px;
         border-radius: 20px;
         border:0.1em solid cornflowerblue;
         width: 100px;
         height: 20;

      }
      #recommend{float:right;
      margin-right: 40px;
         margin-top: 10px;
         border-radius: 20px;
         border:0.1em solid cornflowerblue;
         width: 100px;
         height: 20;

      }

      
		h1 {
			color: white; /* 글자색 */
			font-size: 1em; /* 글자 크기 */
			background:#225ea7; /* 배경색 */
			margin: 0; /* 제목과 다른 요소 간의 마진 여백 */
			padding: 10px; /* 테두리와 제목 텍스트 사이의 패딩 여백 */
         border:2px;
		}
		h2 {
			color: #ff0000; /* 글자색 */
			font-size: 1.2em; /* 글자 크기 */
			text-align: center;  /* 가운데 정렬 */
		}
		p {
			font-size: 1.5em; /* 글자 크기 */
			line-height: 2em; /* 줄간격 */
			font-weight: bold; /* 굵게 */
			text-align: center;  /* 가운데 정렬 */
		}
		.accent {
			color: blue; /* 글자색 */
		}
		.smalltext {
			font-size: 0.7em; /* 글자 크기 */
		}
      li {
         line-height:30px;

      }

   
   </style>
   <script type="text/javascript">
   /*
   
   */
   function scroll_follow(scroll){
      $(window).scroll(function(){
         var position=$(window).scrollTop();
         $(scroll).stop().animate({top:position+"px"},1000);
      });
   } scroll_follow();

   function addMywish() {
	alert("내 위시리스트에 추가되었습니다.");
   
}
function repolist() {
	alert("신고 처리되었습니다.");
}
function recommendList(){
   if(confirm("추천하시겠습니까?")){

   }else{
      return;
   }
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
         <td align="center"><img alt="" src="${path}/Whatsup/sign_login_find/img/icon-menu-512.png" 
               style="width:50px; height:50px;"></td>
         <td align="center"><img alt="" src="${path}/Whatsup/sign_login_find/img/logo.png" 
               style="width:250px;height:auto;margin-left:30px;"></td>
         <td>&nbsp;</td>
      </tr>
   </table>
   <hr>
   
   <div id="container">
		
				
		<div id="check">
			<h1># 위시리스트 소개</h1>
			<h2>"OOO을 소개합니다!!"</h2>
			<ul class="sqbullet">
            <li>카테고리: 여행 <input type="submit" id="addmywish" value="내 위시리스트에 추가 ♥" onclick="addMywish()"/></li>
            <li>날짜: 00/00/00 ~ 00/00/00 <input type="submit" id="report" value="신고하기" onclick="repolist()"/></li>
            <li>공개 여부: 예 <input type="submit" id="recommend" value="추천하기" onclick="recommendList()"/></li>
            <li>추천 수: </li>
            <li>달성률(%):60% <progress value="60" max="100"></progress></li>
          </ul>
			<hr>
			<h2>목표</h2>
         <p>1. ~~~~<br>
            2. ~~~~<br> 
            3. ~~~~<br>
            4. ~~~~<br>
			</p>
			<hr>
			<h2>함께 보기 </h2>
			<p><small><span class="smalltext">https://kyobolifeblog.co.kr/4103</span></small></p>
      </div>
      <input type="submit" id="returntolist" value="목록으로"/> <input type="submit" id="amendlist" value="수정하기"/>
	</div>
   
</body>
</html>