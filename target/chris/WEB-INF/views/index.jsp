<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="static/css/bootstrap.css" />
<title>Spring Home Page</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<h3>
					<a href="${pageContext.request.contextPath}/login">Login Here</a>
				</h3>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>

	<script type="javascript" src="static/js/jquery-2.0.0.js"></script>
	<script type="javascript" src="static/js/bootstrap.js"></script>
</body>
</html>