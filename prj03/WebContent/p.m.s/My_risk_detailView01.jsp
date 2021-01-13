<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

<title>리스크 조회</title>
   <style type="text/css">
   /*
   
   */
   html, body{
  font-family: 'Roboto', sans-serif;
}
  
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
      margin-top: 0px;
      margin-left: 0px;
      width: 90px;
      height: 30px;
}
#back{
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
   <div id="container">
    <h1>Spring 프로젝트 실행 시 에러 발생</h1>
    <p>세부 정보</p>
    <hr style="border:1px solid black">
    <form>
        <ol type="1">
            <li>
            <span>프로젝트 이름: Spring Web MVC 개발 </span>
           </li>
            <li>
               <p>프로젝트 기간: 2019-05-30 ~ 2019-11-26</p>
            </li>
             <li>
               <p>대응 전략: 회피(Avoid) </p>
             </li>   
             <li>
                <p>등록자: Worker01 </p>
             </li>
             <li>
                <p>담당자: Admin01 </p>
             </li>
        </ol>
        <h4>#리스크 내용</h4>
        <label>
            <textarea cols="70" rows="10" placeholder="구체적인 내용을 작성하세요."></textarea>
        </label>
            <input type="file" name="report" class="custom-file-input" id="imgfile"/>
        <h4>#조치 사항</h4>
        <label>
            <textarea cols="70" rows="10"></textarea>
        </label>
        <br>
        <br>
    </form>
        <input type="submit" id="complete" value="수정하기">
        <input type="submit" id="back" value="삭제하기">
   </div>
</body>
</html>