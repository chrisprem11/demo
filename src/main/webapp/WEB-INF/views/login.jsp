<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/bootstrap.css" />

<title>Login Here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row border">
			<div class="col-lg-8 col-sm-8 col-md-8 col-xs-12">
				<img class="img-responsive img-thumbnail"
					src="static/image/Login.jpg" />
			</div>
			<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
				<form action="${pageContext.request.contextPath}/doLogin" modelAttribute="userInfo" method="post">
					<div class="form-group">
						<label class="text-prmary"> Username :</label> <input
							class="form-control" name="username" type="text">
					</div>
					<div class="form-group">
						<label class="text-prmary"> Password :</label> <input
							class="form-control" name="password" type="password">
					</div>
					<div class="form-group">
						<button class="btn btn-sm btn-danger">Forgot Password</button>
						<button class="btn btn-sm btn-primary">Signup</button>
						<button class="btn btn-sm btn-success">Login</button>

					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="javascript" src="static/js/jquery-2.0.0.js"></script>
	<script type="javascript" src="static/js/bootstrap.js"></script>
</body>
</html>