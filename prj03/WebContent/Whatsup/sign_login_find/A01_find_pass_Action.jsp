<%@page import="whatMvc.A01_vo.Member"%>
<%@page import="whatMvc.A03_database.signup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<%
signup db = new signup();

String id = request.getParameter("id"); if(id==null) id="";
String name = request.getParameter("name");if(name==null) name="";
String telS = request.getParameter("telS"); if(telS==null) telS ="0";
int tel = Integer.parseInt(telS);
Member m = db.findPass(id, name, tel);

if(m!=null){
%>
	{"pass":"<%= m.getPass() %>","IsTrue":true}
<%}else{%>
	{"pass":"","IsTrue":false}
<%}%>
