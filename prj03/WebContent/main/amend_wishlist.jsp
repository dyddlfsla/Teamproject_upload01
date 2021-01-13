<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.*"   
    import="whatMvc.A01_vo.*" 
	import="whatMvc.A03_database.*"  
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var = "path" value="${pageContext.request.contextPath}"/>
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

   #container { 
				width:520px;
				border:1px solid black;
				padding:20px 40px;
				margin:0 auto;
            margin-top: 60px;
            
			}
      fieldset { margin-bottom:15px; }
      legend { font-weight:bold; }
			ol {
         align-items: center;
        }
			li { line-height:30px;}
            textarea{
                resize: none;
            }
#complete{
   border-radius: 20px;
      border:0.1em solid cornflowerblue;
      margin-top: 10px;
      margin-left: 650px;
      width: 90px;
      height: 30px;
}
#back{
   border-radius: 20px;
      border:0.1em solid cornflowerblue;
      margin-top: 10px;
      margin-left:10px;
      width: 90px;
      height: 30px;
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
   }scroll_follow();
   </script>
</head>
<body>
   <table id="header" align="center" width="100%">
      <colgroup>
      <col width="10%">
      <col width="80%">
      <col width="10%">
      <tr>
         <td align="center"><img alt="" src="img_4k\icon-menu-512.png" 
               style="width:50px; height:50px;"></td>
         <td align="center"><img alt="" src="img_4k\logo.png" 
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
      <img alt="" src="adv.png" width="100%" height="100%">
   </div>
   <div id="container">
    <h1>새 위시리스트 수정하기 </h1>
    <p>각 세부 정보들을 빠짐없이 기입해 주세요.</p>
    <hr style="border:1px solid black";>
    <form>
        <h4># 간단 소개</h4>
        <ol type="1">
         <li>
            <span>이미지 첨부: </span>
            <input type="file" name="report" class="custom-file-input" id="imgfile"/> 
        </li>
         <li>
                 <!-- <input>태그 앞 뒤에 <label>과 </label> 태그로 묶기 가능 -->
                    <label for="sname">제목: </label>
                    <input type="text" id="wname" placeholder="내용을 입력하세요" style="width: 400px;">
            </li>
             <li>
               <label for="wcatego">카테고리: </label>
                <select id="wcatego">
                   <option value="tour">여행</option>
                   <option value="shopping">쇼핑</option>
                   <option value="food">맛집</option> 
                   <option value="outgoing">데이트</option>
                   <option value="festival">축제</option>
                   <option value="concert">공연</option>
                </select>
             </li>   
             <li><span>날짜 선택: </span>
                <label><input type="date" id="start"> ~ </label>
                <label><input type="date" id="end"></label>
             </li>
             <li>
                <span>공개 여부: </span>
                <label><input type="radio" name="public" value="yes">예</label>
                <label><input type="radio" name="public" value="no">아니오</label>
             </li>
        </ol>
        <h4># 목표</h4>
        <label>
            <textarea cols="70" rows="10" placeholder="하고 싶은 일을 구체적으로 설명해보세요."></textarea>
        </label>
        <h4># 같이 보기</h4>
        <label><small>URL 주소: </small></label><input type="url" placeholder="https://">
        <br>
        <br>
    </form>
   </div>
<div>
   <input type="submit" id="complete" value="수정완료">
   <input type="submit" id="back" value="뒤로 가기">
</div>
</body>
</html>