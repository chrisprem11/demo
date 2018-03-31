<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/bootstrap.css" />

<title>Welcome</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="text-center">
				<h3 class="text-success">Hello ${username}</h3>
			</div>
		</div>
		<div class="row">
			<div class="text-center">
				<h3 class="text-danger">
					<a href="${pageContext.request.contextPath}/logout"></a>Logout
				</h3>
			</div>
		</div>
	</div>

	<script type="javascript" src="static/js/jquery-2.0.0.js"></script>
	<script type="javascript" src="static/js/bootstrap.js"></script>
</body>
</html>