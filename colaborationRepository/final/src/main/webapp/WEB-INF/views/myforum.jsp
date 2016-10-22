<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="/resources/css/footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
 <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  td
{
  padding-top: 10px;
  padding-bottom: 10px;}
  
  label {
    display: block;
    text-align: right;
    line-height: 150%;
    
}
  </style>
  
</head>
<body>
<%@ include file='inlineheader.jsp'%>
<c:url var="addAction" value="/user/openforum/addforum" ></c:url>
<div align="center">
		<form:form action="${addAction}" method="POST" commandName="forum">
<table >
<tr>
                    <td colspan="2" align="center"><h2>Create New Forum:</h2></td>
                </tr>
                
                
                
                
         <tr>
        
        <td><label for="category">Category</label></td>
        <td><label class="checkbox-inline"><form:radiobutton path="fCategory" id="category" value="java" />Java</label>
          <label class="checkbox-inline"><form:radiobutton path="fCategory" id="category" value="springmvc" />Spring MVC</label>
          <label class="checkbox-inline"><form:radiobutton path="fCategory" id="category" value="angularjs" />AngularJS</label></td>
                
        
    </tr>
                
                
<tr>
        <td align="center">Add Title :</td>
        <td><form:textarea style="width: 300px; height: 35px;" path="fTitle"/></td>
    </tr>
    <tr>
        <td align="center">Add Forum :</td>
        <td><form:textarea style="width: 300px; height: 150px;" path="fcontent"/></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><input type="submit" value="Add Forum"></td>
    </tr>
</table>
</form:form>
</div>

<div  ng-app="repeatSample" class="section">
	<div class="container">

<!-- Angular script to generate the productlist and sorting -->
		<!-- ============================================================================================== -->

		<script>
			var f = ${forums};

			angular.module('repeatSample', []).controller('forumController',
					function($scope) {
						$scope.forums = f;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
		</script>

<!-- Textbox used to implement search option using Angular -->
		<!-- ============================================================================================== -->

		<div class="bs-component" ng-controller="forumController">

			<form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>


			<!-- table to show data coming from the JSON file -->
			<!-- ============================================================================================== -->


			<table class="table table-striped table-hover">
				<thead>
					<tr>

						<!-- Performing sort functionality using angular both in ascending and descending manner -->
						<!-- ============================================================================================== -->

						<th ng-click="sort('title')">Title <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('content')">Category <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('user')">User <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('date')">Date <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th>More Info</th>

					</tr>
				</thead>
				<tbody>
					<!-- dynamically generating the table data -->
					<!-- ============================================================================================== -->

					<tr
						ng-repeat="forum in forums|orderBy:sortKey:reverse|filter:search">
						<td>{{forum.fTitle}}</td>
						<td>{{forum.fCategory}}</td>
						<td>{{forum.user}}</td>
						<td>{{forum.date}}</td>


						<!-- Info button that maps to the ProductDetails view. Required Info for ProductDetails view is passed through request parameters -->
						<!-- ============================================================================================== -->

						<td><a
							href="/Myblog/forumDetails?id={{forum.fId}}&fTitle={{forum.fTitle}}&fCategory={{forum.fCategory}}&user={{forum.user}}&fcontent={{forum.fcontent}}">
							Details
							</a>
						</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div>


<%@include file="footer.jsp"%>
</body>
</html>