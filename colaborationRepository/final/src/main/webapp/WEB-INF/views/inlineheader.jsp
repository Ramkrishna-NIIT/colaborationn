<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
				<a class="navbar-brand" href="gotoindex"><!-- <img src="/Myblog/resources/images/diginxt.png"></img> --> </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<c:url value="/" />">Home</a></li>
                        <li><a href="<c:url value="/user/openblog" />">Blog</a></li>
                        <li><a href="<c:url value="/user/openforum" />">Forum</a></li>
                        <li><a href="<c:url value="/openchat"/> "  target="_blank">Chat</a></li>


		

			</ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li class="active"><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li class="active"><a href="<c:url value="/logout" />">Logout</a></li>

                            

                            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                <li class="active"><a href="<c:url value="/admin"/>">Admin</a></li>
                            </c:if>

                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />">Login</a></li>
                            <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>