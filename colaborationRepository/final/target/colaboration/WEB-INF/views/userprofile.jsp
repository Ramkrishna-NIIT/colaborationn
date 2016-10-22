<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>MyBlog</title>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="my-style.css">
  <link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="/resources/css/footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
img {
    border-radius: 8px;
}
</style>
</head>
<body>
<%@ include file='inlineheader.jsp'%>
<br>
<br>

    <div class="container-fluid">
  <div class="row">
    <div class="col-md-6">
         <img src="<c:url value="/resources/images/${user.userId}.jpg" />" width="400" height="300"> 
  
  </div>
   <br>
   <div class="col-md-6"><span class="pull-center">
   <h3>Name: ${user.name }</h3>
   <h3>Username: ${user.username }</h3> 
	<h3>Email id: ${user.email}</h3>
	<h3>Location: ${user.location }</h3>
	
	
     </span>
     </div>
     </div>
     </div>
     <%@include file="footer.jsp"%>
  </body>
</html>