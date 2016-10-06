<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
  </head><body>
    <div class="section section-primary"></div>
    <div class="section section-info text-left">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="jumbotron">
              <h1 class="text-primary">
                <i>Register Yourself</i>
              </h1>
              <p>...</p>
              <a class="btn btn-primary btn-large">Learn more</a>
            </div>
          </div>
          <div class="col-md-6">
            <form:form role="form" action="${pageContext.request.contextPath}/register" method="post" commandName="user">
              <div class="form-group">
                <label class="control-label" for="name">Name</label>
                <form:errors path="name" cssStyle="color: #ff0000" />
                <form:input class="form-control" path="name" id="name" placeholder="Enter Name" type="text"/>
              </div>
              <div class="form-group">
                <label class="control-label" for="email">Email address</label>
                 <span style="color: #ff0000">${emailMsg}</span>
                <form:errors path="email" cssStyle="color: #ff0000" />
                <form:input class="form-control" path="email" id="email" placeholder="Enter Email" type="email"/>
              </div>
              <div class="form-group">
                <label class="control-label" for="phone">Mobile No.</label>
                <form:input class="form-control" path="phone" id="phone" placeholder="Enter Mobile No." type="text"/>
              </div>
              <div class="form-group">
                <label class="control-label" for="username">UserName</label>
                  <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000" />
                
                <input class="form-control" path="username" id="username" placeholder="Enter UserName" type="text">
              </div>
              
              <div class="form-group">
                <label class="control-label" for="password">Password</label>
                 <form:errors path="password" cssStyle="color: #ff0000" />
                <input class="form-control" path="password" id="password" placeholder="Password" type="password">
              </div>
              <button type="submit" value="submit" class="btn btn-default">Submit</button>
               <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
            </form:form>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-primary"></div>
  

</body></html>