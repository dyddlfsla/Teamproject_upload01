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

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Premium Solution</title>
        <link href="${path}/a00_com/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Premium Solution</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item"></a>
                        <a class="dropdown-item" href="#">로그인</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">로그아웃</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                           <div class="sb-sidenav-menu-heading">Premium</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                	프로젝트
                            </a>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                	사원
                            </a>
                            <div class="sb-sidenav-menu-heading">P.M</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                               	프로젝트
                               
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                	관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                       	업무
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">업무관리</a>
                                            <a class="nav-link" href="register.html">업무등록</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        	리스크
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">리스크현황</a>
                                            <a class="nav-link" href="404.html">리스크처리</a>
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
            <div id="layoutSidenav_content">
            
                <main>
                	<div class="container-fluid">
                        <h1 class="mt-4">내 리스크 관리</h1>
                        <hr>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">검색 필터</a></li>
                            <li class="breadcrumb-item active">상세 검색<button style="margin-left:1200px">+ 새 리스크 등록</button></li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <div>
                                    <span>제 목: </span><input type="text" placeholder="검색어 입력" style="width:400px">
                                    <button>검색</button>
                                    <hr>
                                </div>
                                <div>
                                	<span>구 분: </span><select name="risk_kind" id="risk_kind01">
    													<option value="">선택하세요</option>
    													<option value="bug">버그</option>
    													<option value="improve">개선사항</option>
    													<option value="add">요구사항 추가</option>
    													<option value="error">오류</option>
													   </select>
                                    <button style="margin-right:50px">검색</button>
                                    <span>등 록 일: </span>
                                    	<label><input type="date" id="start"> ~ </label>
                						<label><input type="date" id="end"></label>
                                    <button style="margin-right:50px">검색</button>
                                    <span>처리 여부: </span>
                                    	<select name="risk_status" id="risk_status">
    													<option value="">선택하세요</option>
    													<option value="yes">Y</option>
    													<option value="no">N</option>
										</select>
                                    <button>검색</button>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>리스크 목록
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align:center">
                                        <thead>
                                            <tr>
                                                <th>#리스크 번호</th>
                                                <th>#프로젝트 번호</th>
                                                <th>#업무 번호</th>
                                                <th>#구분</th>
                                                <th>#제목</th>
                                                <th>#우선 순위</th>
                                                <th>#처리 여부</th>
                                                <th>#조치 등록일</th>
                                                <th>#등록일</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                                <td>01</td>
                                                <td>00XH1</td>
                                                <td>0102</td>
                                                <td>오류</td>
                                                <td>서버에서 실행시 예외 오류 발생</td>
                                                <td>90</td>
                                                <td>N</td>
                                                <td>2018-01-01</td>
                                                <td>2018-01-01</td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
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
        <script src="${path}/a00_com/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a00_com/assets/demo/chart-area-demo.js"></script>
        <script src="${path}/a00_com/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a00_com/assets/demo/datatables-demo.js"></script>
     </body>
</html>
	