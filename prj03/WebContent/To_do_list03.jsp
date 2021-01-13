<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">

function showPopup(){
	//alert("${sessEmp.empno}");
	window.open("${path}/risk.do?method=insert","a","width=600, height=700, left=100, top=50");	
    
 }
function goPage(riskno){
//	alert(workno);
//	$(location).attr("href","${path}/work.do?method=detail&workno="+workno);
	window.open("${path}/risk.do?method=detail&riskno="+riskno,"a","width=600, height=700, left=100, top=50");
	opener.parent.location.reload();
};



 
</script>
    <head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Premium Solution</title>
    <link href="${path}/a00_com/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    
    <title>ToDoList</title>
    <script src="https://unpkg.com/vue/dist/vue.min.js"></script>
    </head>
<script type="text/javascript">
var eventBus = new Vue();
</script>
<template id="input-template">
    <div>
        <input class="input" type="text" id="task" v-model.trim="todo" 
            placeholder="새 할 일을 등록하세요" v-on:keyup.enter="addTodo">
        <span class="addbutton" v-on:click="addTodo">등 록</span>
    </div>    
</template>
<script type="text/javascript">
Vue.component('input-component', {
    template : '#input-template',
    data : function() {
        return { todo : "" }
    },
    methods : {
        addTodo : function() {
            eventBus.$emit('add-todo', this.todo);
            this.todo = "";
        }
    }
})
</script>
<style>
ul {  margin: 0; padding: 0; border-radius:5px;}
ul li { 
    cursor: pointer; position: relative; padding: 8px 8px 8px 40px;
    background: #eee; font-size: 14px;  transition: 0.2s;
    -webkit-user-select: none; -moz-user-select: none;
    -ms-user-select: none; user-select: none; border-radius:5px; text-align:center;  
}
ul li:hover {  background: #ddd; border-radius:5px;  }
ul li.checked {
    background: #BBB;  color: #DC143C; text-decoration: line-through; border-radius:5px; text-align:center;
}
ul li.checked::before {
    content: ''; position: absolute; border-color: #fff;
    border-style: solid; border-width: 0px 1px 1px 0px; 
    top: 10px; left: 16px;  transform: rotate(45deg);
    height: 8px; width: 8px; border-radius:5px;
}
.close {
    position: absolute; right: 0; top: 0;
    padding: 8px 12px 8px 12px;
    border-radius:5px;
}
.close:hover {
      color: white; border-radius:5px;
}
* {  box-sizing: border-box; border-radius:5px;  }
    .top-header {
        background-color: #343a40; padding: 30px 30px;
        color: white; text-align: center; border-radius:5px;
    }
    .top-header:after {
        content: ""; display: table; clear: both; border-radius:5px;
    }
    
.input {
    border: none; width: 80%; height:35px; padding: 10px;
    float: left; font-size: 16px; border-radius:5px; outline:none; margin-right:10px;

 .input:focus {
	box-shadow: 10px 10px 5px 10px #007bff;
}

}
.addbutton {
    padding: 10px; width: 15%; height:35px; background: #d9d9d9; 
    color: #555; float: left; text-align: center;
    font-size: 15px; cursor: pointer; transition: 0.3s;
    border-radius:5px; font-weight:bold;
}
.addbutton:hover { background-color: #bbb; border-radius:5px; }
</style>
<template id="list-template">
    <ul id="todolist">
        <li v-for="(a, index) in todolist" v-bind:class="checked(a.done)"
            v-on:click="doneToggle(index)">
            <span style="font-size:17px">{{ a.todo }}</span>
            <span v-if="a.done" style="font-size:17px"> (Completed)</span>
            <span class="close" v-on:click.stop="deleteTodo(index)">&#x00D7;</span>
        </li>
    </ul>
</template>
<script type="text/javascript">
Vue.config.devtools = true;
var vm = new Vue({
    el : "#todolistapp"
})

Vue.component('list-component', {
    template : '#list-template',
    created : function() {
         eventBus.$on('add-todo', this.addTodo);
    },
    data : function() {
        return {
            todolist : [
            	{ todo : "1. 작년 사업계획 기안 열람 후 300자 이내 요약", done:false },
                { todo : "2. Prj086. 앱 리뉴얼 디자인 보고서 작성", done:false },
                { todo : "3. OJT 매뉴얼 수정안 15:00 까지 mail 발송", done:false },
            	
            ]
        }
    },
    methods : {
        checked : function(done) {
            if(done) return { checked:true };
            else return { checked:false };
        },
        addTodo : function(todo) {
            if (todo !== "") {
                this.todolist.push({ todo : todo, done:false });
            }
        },
        doneToggle : function(index) {
            this.todolist[index].done = !this.todolist[index].done;
        },
        deleteTodo : function(index) {
            this.todolist.splice(index,1);
        }
    }
})
</script>
    
    

    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="${path}/ps.do?method=main">Premium Solution</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group" style="color:#fff;">
                    <!-- 여기에 이름,직책,권한 -->
                    <div>이름 : ${sessEmp.ename} &nbsp; </div>
 					<br>
                    <div>직책 : ${sessEmp.rankname} &nbsp; </div>
					<br>
                    <div>권한 : ${sessEmp.powername}  </div>
                    </div>
               
            </form>
            <!-- Navbar-->
             <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                         <a class="dropdown-item" href="${path}/pmslogin.do?method=pmslogin">로그아웃</a>
                        <div class="dropdown-divider"></div>
                         <a class="dropdown-item" href="${path}/pmslogin.do?method=chkpass">정보수정</a>

                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                     <c:if test="${sessEmp.powername=='CEO'}">
                           <div class="sb-sidenav-menu-heading">Premium</div>
                            <a class="nav-link" href="${path}/ps.do?method=pro">
                                <div class="sb-nav-link-icon"><i class="fas fa-keyboard"></i></div>
                                	프로젝트
                            </a>
                            <a class="nav-link" href="${path}/ps.do?method=mem">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                	사원
                            </a>
                            </c:if>
                            <div class="sb-sidenav-menu-heading">P.M</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	업무관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="${path}/work.do?method=work">대시보드</a>
                                    <a class="nav-link" href="${path}/work.do?method=gantt">Chart</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">캘린더</a>
                                </nav>
                            </div>
                            <a class="nav-link" href="${path}/ps.do?method=dashpm" >
                                <div class="sb-nav-link-icon"><i class="far fa-keyboard"></i></div>
                               	프로젝트
                            </a>
                            <a class="nav-link" href="${path}/risk.do?method=list" >
                                <div class="sb-nav-link-icon"><i class="fas fa-exclamation-circle"></i></div>
                               	리스크
                            </a>
                            
                            
                            
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            </div>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                       	업무관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="${path}/work.do?method=work">업무관리</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        	리스크관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="#"></a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading"></div>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">사이트</div>
                        Premium Solution
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content" style="overflow:auto;">
            
            
                <main>
                	<!-- 여기다 작성 -->
                	
                			<br>
                	<div class="container-fluid">
                       <div class="card mb-4">
                          <div class="card-header" style="background-color:#343a40; color:white;">
                            <i class="fas fa-table mr-1"></i>
                                	오늘의 할 일
                            </div>
                            <div class="card-body" style="height:700px">
                             <div class="table-responsive">
                              <div id='container' style="margin-top:20px; width:1400px;" >
							    
							    <div id="todolistapp">
							        <div id="top-header" class="top-header">
							             <h3>To Do List</h3> 
							            <input-component></input-component>
							        </div>
							        <list-component></list-component>
							    </div>
							    
							</div>      
                                 
                                 
                                 
                                 
								</div>
							</div>
						</div>
					</div>

                </main>
                <!-- copy right -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Premium Solution 2020</div>
                            <div>
                                <a href="#">개인 정보 보호 정책</a>
                                &middot;
                                <a href="#">이용 &amp; 약관</a>
                            </div>
                        </div>
                    </div>
                </footer>
             </div>
        </div>
                

        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a00_com/assets/demo/datatables-demo.js"></script>
        

        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        
     </body>
     <script type="text/javascript">
Vue.config.devtools = true;
var vm = new Vue({
    el : "#todolistapp"
})
</script>
</html>
	