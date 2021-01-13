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
.main{
  width: 100%;
  display: block;
  background: #fff;
}
.content-wrap{
  width: 100%;
  margin:0 auto;
  border: 4px solid rgba(161, 161, 161, 0.5); 
  border-radius: 20px;
  overflow: hidden;
  background: #fff;
}
.content-left{
  background: #0d225e;
  color:#ddaf35;
  float: left;
  width: 100%;
  padding: 30px;
}
.main-wrap{
  text-align: center;
  padding: 20px 0 0 0;
}
.main-day{
  font-size: 30px;
  font-weight: bold;
}
.main-date{
  font-size: 120px;
  font-weight: bold;
  margin: 20px 0;
}
.todo-wrap{
  padding: 0 0 0 40px;
}
.todo-title{
  font-size: 20px;
  font-weight: 100;
  margin: 0 0 10px 0;
}
.input-box{
  width: 50%;
  margin-right: 20px;
  height: auto; 
  background: #0d225e;
  color: #fff;
  line-height : normal;
  padding: .8em .5em 0 0; 
  font-family: inherit;
  border: 0; 
  border-bottom: 1px dashed #ddaf35;; 
  border-radius: 0; 
  outline-style: none; 
  -webkit-appearance: none; 
  -moz-appearance: none; 
  appearance: none;
}
.input-data{
  cursor: pointer;
  font-size: 10px;
  padding: 10px;
  margin: 10px 0 10px 0;
  background: #0d225e;
  border: none;
  color: #0b0809;
  border-radius: 10px;
}
.input-data:hover{
  background: #ffffff;
  color: #0b0809;
}
.input-list > div{
  font-size: 10px;
  width: 60%;
  float: left;
  color: #ddaf35;
}
.input-list > .checked{
  color: #FFFFFF;
  text-decoration:line-through
}
.del-data{
  display: block;
  color: #ddaf35;
  float: left;
  width: 10%;
  cursor: pointer;
  font-size: 10px;
  padding: 10px;
  background: #0b0809;
  border: none;
  border-radius: 10px;
}
.content-right{
  float: left;
  width: 90%;
  padding: 10px;
}
.sun{
  color:#ef3333;
}
.sat{
  color:#2107e0;
}
.content-right table tr td{
  width: 40px;
  height: 40px;
  text-align: center;
  font-size: 20px;
  font-weight: bold;
}
.active{
  background: #0b0809;
  border-radius: 50%;
  color: #ffffff;
}

@media(min-width: 850px){
  .main{
    display: flex;
    align-items: center;
    justify-content:  center;
    width: 100vw;
    height: 100vh;
    background: #fff;
  }
  .content-wrap{
    width: 800px;
    height: 600px;
    margin:0 auto;
    border: 4px solid rgba(161, 161, 161, 0.5); 
    border-radius: 20px;
    overflow: hidden;
    background: #fff;
  }
  .content-left{
    background: #0d225e;
    color:#ddaf35;
    float: left;
    width: 360px;
    height: 600px;
    padding: 90px 20px 20px 0;
  }
  .main-wrap{
    text-align: center;
    margin: 20px 0 0 0;
  }
  .main-day{
    font-size: 30px;
    font-weight: bold;
  }
  .main-date{
    font-size: 120px;
    font-weight: bold;
    margin: 20px 0;
  }
  .todo-wrap{
    padding: 0 0 0 40px;
  }
  .todo-title{
    font-size: 20px;
    font-weight: 100;
    margin: 0 0 10px 0;
  }
  .input-box{
    width: 70%;
    height: auto; 
    background: #0d225e;
    color: #fff;
    line-height : normal;
    padding: .8em .5em 0 0; 
    font-family: inherit;
    border: 0; 
    border-bottom: 1px dashed #ddaf35;; 
    border-radius: 0; 
    outline-style: none; 
    -webkit-appearance: none; 
    -moz-appearance: none; 
    appearance: none;
  }
  .input-data{
    cursor: pointer;
    font-size: 10px;
    padding: 10px;
    margin: 20px 0 30px 0;
    background: #ddaf35;
    border: none;
    color: #0b0809;
    border-radius: 10px;
  }
  .input-data:hover{
    background: #ffffff;
    color: #0b0809;
  }
  .input-list > div{
    font-size: 10px;
    width: 60%;
    float: left;
    color: #ddaf35;
  }
  .del-data{
    display: block;
    color: #ddaf35;
    float: left;
    width: 10%;
    cursor: pointer;
    font-size: 10px;
    padding: 10px;
    background: #0d225e;
    border: none;
    border-radius: 10px;
  }
  .content-right{
    float: left;
    width: 360px;
    height: 600px;
    padding: 100px 20px 20px 20px;
  }
  .sun{
    color:#ef3333;
  }
  .sat{
    color:#2107e0;
  }
  .content-right table tr td{
    width: 50px;
    height: 50px;
    text-align: center;
    font-size: 20px;
    font-weight: bold;
  }
  .active{
    background: #0b0809;
    border-radius: 50%;
    color: #ffffff;
  }
}

<!-- -->
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
					style="width:20px;height:20px;align:center;"></td><td><a href="calendar.jsp"/>CALENDAR</td></tr>
			<tr><td><img alt="" src="./img/list.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="my_wishlist.jsp"/>BUCKET LIST</td></tr>
			<tr><td><img alt="" src="./img/wish.png" 
					style="width:20px;height:20px;align:center;"></td><td><a href="popular_wishlist.jsp"/>FIND WISHES</td></tr>
		</table>
	</div>
	<div id="scroll">
		<img alt="" src="./img/adv.png" width="100%" height="100%">
	</div>
	
  <div class="main">
    <div class="content-wrap">
      <div class="content-left">
        <div class="main-wrap">
          <div id="mainTodayDay" class="main-day"></div>
          <div id="mainTodayDate" class="main-date"></div>
        </div>
        <div class="todo-wrap">
          <div class="todo-title">Todo List</div>
          <div class="input-wrap">
            <input type="text" placeholder="please write here!!" id="input-box" class="input-box">
            <button type="button" id="input-data" class="input-data">INPUT</button>
            <div id="input-list" class="input-list"></div>
          </div>
        </div>
      </div>
      <div class="content-right">
        <table id="calendar" align="center">
          <thead>
            <tr class="btn-wrap clearfix">
              <td>
                <label id="prev">
                    &#60;
                </label>
              </td>
              <td align="center" id="current-year-month" colspan="5"></td>
              <td>
                <label id="next">
                    &#62;
                </label>
              </td>
            </tr>
            <tr>
                <td class = "sun" align="center">Sun</td>
                <td align="center">Mon</td>
                <td align="center">Tue</td>
                <td align="center">Wed</td>
                <td align="center">Thu</td>
                <td align="center">Fri</td>
                <td class= "sat" align="center">Sat</td>
              </tr>
          </thead>
          <tbody id="calendar-body" class="calendar-body"></tbody>
        </table>
      </div>
    </div>
  </div>
</body>
<script>
var today = new Date();
var currentTitle = document.getElementById('current-year-month');



var calendarBody = document.getElementById('calendar-body');
var today = new Date();
var first = new Date(today.getFullYear(), today.getMonth(),1);
var dayList = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
var monthList = ['January','February','March','April','May','June','July','August','September','October','November','December'];
var leapYear=[31,29,31,30,31,30,31,31,30,31,30,31];
var notLeapYear=[31,28,31,30,31,30,31,31,30,31,30,31];
var pageFirst = first;
var pageYear;
if(first.getFullYear() % 4 === 0){
    pageYear = leapYear;
}else{
    pageYear = notLeapYear;
}

currentTitle.innerHTML = monthList[today.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ today.getFullYear();
mainTodayDay.innerHTML = dayList[today.getDay()];
mainTodayDate.innerHTML = today.getDate();

function showCalendar(){
    let monthCnt = 100;
    let cnt = 1;
    for(var i = 0; i < 6; i++){
        var $tr = document.createElement('tr');
        $tr.setAttribute('id', monthCnt);   
        for(var j = 0; j < 7; j++){
            if((i === 0 && j < first.getDay()) || cnt > pageYear[first.getMonth()]){
                var $td = document.createElement('td');
                $tr.appendChild($td);     
            }else{
                var $td = document.createElement('td');
                $td.textContent = cnt;
                $td.setAttribute('id', cnt);                
                $tr.appendChild($td);
                cnt++;
            }
        }
        monthCnt++;
        calendarBody.appendChild($tr);
    }
}
showCalendar();

function removeCalendar(){
    let catchTr = 100;
    for(var i = 100; i< 106; i++){
        var $tr = document.getElementById(catchTr);
        $tr.remove();
        catchTr++;
    }
}


function prev(){
    inputBox.value = "";
    const $divs = document.querySelectorAll('#input-list > div');
    $divs.forEach(function(e){
      e.remove();
    });
    const $btns = document.querySelectorAll('#input-list > button');
    $btns.forEach(function(e1){
      e1.remove();
    });
    if(pageFirst.getMonth() === 1){
        pageFirst = new Date(first.getFullYear()-1, 12, 1);
        first = pageFirst;
        if(first.getFullYear() % 4 === 0){
            pageYear = leapYear;
        }else{
            pageYear = notLeapYear;
        }
    }else{
        pageFirst = new Date(first.getFullYear(), first.getMonth()-1, 1);
        first = pageFirst;
    }
    today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
    currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
    removeCalendar();
    showCalendar();
    showMain();
    clickedDate1 = document.getElementById(today.getDate());
    clickedDate1.classList.add('active');
    clickStart();
    reshowingList();
}

function next(){
    inputBox.value = "";
    const $divs = document.querySelectorAll('#input-list > div');
    $divs.forEach(function(e){
      e.remove();
    });
    const $btns = document.querySelectorAll('#input-list > button');
    $btns.forEach(function(e1){
      e1.remove();
    });
    if(pageFirst.getMonth() === 12){
        pageFirst = new Date(first.getFullYear()+1, 1, 1);
        first = pageFirst;
        if(first.getFullYear() % 4 === 0){
            pageYear = leapYear;
        }else{
            pageYear = notLeapYear;
        }
    }else{
        pageFirst = new Date(first.getFullYear(), first.getMonth()+1, 1);
        first = pageFirst;
    }
    today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
    currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
    removeCalendar();
    showCalendar(); 
    showMain();
    clickedDate1 = document.getElementById(today.getDate());
    clickedDate1.classList.add('active');  
    clickStart();
    reshowingList();
}

function showMain(){
    mainTodayDay.innerHTML = dayList[today.getDay()];
    mainTodayDate.innerHTML = today.getDate();
}
var clickedDate1 = document.getElementById(today.getDate());
clickedDate1.classList.add('active');
var prevBtn = document.getElementById('prev');
var nextBtn = document.getElementById('next');
prevBtn.addEventListener('click',prev);
nextBtn.addEventListener('click',next);
var tdGroup = [];
function clickStart(){
    for(let i = 1; i <= pageYear[first.getMonth()]; i++){
        tdGroup[i] = document.getElementById(i);
        tdGroup[i].addEventListener('click',changeToday);
    }
}
function changeToday(e){
    for(let i = 1; i <= pageYear[first.getMonth()]; i++){
        if(tdGroup[i].classList.contains('active')){
            tdGroup[i].classList.remove('active');
        }
    }
    clickedDate1 = e.currentTarget;
    clickedDate1.classList.add('active');
    today = new Date(today.getFullYear(), today.getMonth(), clickedDate1.id);
    showMain();
    keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
    reshowingList();
}

function reshowingList(){
    keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
    if(todoList[keyValue] === undefined){
        inputList.textContent = '';
        todoList[keyValue] = [];
        const $divs = document.querySelectorAll('#input-list > div');
        $divs.forEach(function(e){
          e.remove();
        });
        const $btns = document.querySelectorAll('#input-list > button');
        $btns.forEach(function(e1){
          e1.remove();
        });
    }else if(todoList[keyValue].length ===0){
        inputList.textContent = "";
        const $divs = document.querySelectorAll('#input-list > div');
        $divs.forEach(function(e){
          e.remove();
        });
        const $btns = document.querySelectorAll('#input-list > button');
        $btns.forEach(function(e1){
          e1.remove();
        });
    }else{
        const $divs = document.querySelectorAll('#input-list > div');
        $divs.forEach(function(e){
          e.remove();
        });
        const $btns = document.querySelectorAll('#input-list > button');
        $btns.forEach(function(e1){
          e1.remove();
        });
        var $div = document.createElement('div');
        for(var i = 0; i < todoList[keyValue].length; i++){
            var $div = document.createElement('div');
            $div.textContent = '-' + todoList[keyValue][i];
            var $btn = document.createElement('button');
            $btn.setAttribute('type', 'button'); 
            $btn.setAttribute('id', 'del-ata');
            $btn.setAttribute('id', dataCnt+keyValue);
            $btn.setAttribute('class', 'del-data');
            $btn.textContent = delText;
            inputList.appendChild($div);
            inputList.appendChild($btn);
            $div.addEventListener('click',checkList);
            $btn.addEventListener('click',deleteTodo);
            inputBox.value = '';
            function deleteTodo(){
                $div.remove();
                $btn.remove();
            }
        }
    }

}
var inputBox = document.getElementById('input-box');
var inputDate = document.getElementById('input-data');
var inputList = document.getElementById('input-list');
var delText = 'X';
inputDate.addEventListener('click',addTodoList);
var dataCnt = 1;
var keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
let todoList = [];
todoList[keyValue] = [];
function addTodoList(){
    var $div = document.createElement('div');
    $div.textContent = '-' + inputBox.value;
    var $btn = document.createElement('button');
    $btn.setAttribute('type', 'button'); 
    $btn.setAttribute('id', 'del-ata');
    $btn.setAttribute('id', dataCnt+keyValue);
    $btn.setAttribute('class', "del-data");
    $btn.textContent = delText;
    inputList.appendChild($div);
    inputList.appendChild($btn);
    todoList[keyValue].push(inputBox.value);
    dataCnt++;
    inputBox.value = '';
    $div.addEventListener('click',checkList);
    $btn.addEventListener('click',deleteTodo);
    function deleteTodo(){
        $div.remove();
        $btn.remove();
    }
}
function checkList(e){
    e.currentTarget.classList.add('checked');
}
</script>
</html>