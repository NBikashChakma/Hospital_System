<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>


						<c:if test="${ not empty succMsg}">
							<h5 class="text-center text-success fs-3">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${ not empty errorMsg}">
							<h5 class="text-center text-danger fs-3">${errorMsg }</h5>
							<c:remove var="errorMsg" scope="session" />
						</c:if>


						<form action="userLogin" method="post">
							<div class="mb-3">
								<label class="form-lebel">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-lebel">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>
						<br> Dont't have an account?<a href="signup.jsp"
							class="text-decoration-none"> Create One</a>

					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- <%@include file="component/footer.jsp" %> -->
</body>
</html>