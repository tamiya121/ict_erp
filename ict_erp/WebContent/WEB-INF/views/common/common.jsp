<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
String rPath = request.getContextPath() + "/";
String title = "ERP EXAM";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %></title>
<link rel="stylesheet" href="<%=rPath%>bs3/css/bootstrap.css"/>
<link rel="stylesheet" href="<%=rPath%>bs3/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="<%=rPath%>bs3/css/common.css"/>
<script src="<%=rPath%>bs3/js/jquery-3.3.1.js"></script>
<script src="<%=rPath%>bs3/js/bootstrap.js"></script>
<script src="<%=rPath%>bs3/js/common.js"></script>
</head>
<div class="container">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=rPath%>"><%=title %></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="<%=rPath%>">Home</a></li>
              <li><a href="<%=rPath%>views/user/login">로그인</a></li>
            </ul>
        </div>
      </nav>
 </div>