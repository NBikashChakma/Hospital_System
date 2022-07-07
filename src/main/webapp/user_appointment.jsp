
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/backImg.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-center"></p>
	</div>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="paint-card col-md-6 p-2">
				<img alt="" src="img/appointment.jpg" width="650px" height="580px">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">User Appointment</p>


						<c:if test="${ not empty succMsg}">
							<h5 class="text-center text-success fs-3">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${ not empty errorMsg}">
							<h5 class="text-center text-danger fs-3">${errorMsg }</h5>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form class="row g-3" action="appAppointment" method="post">

							<input type="hidden" name="userid" value="${userObj.id }">

							<div class="col-md-6">
								<label for="" class="form-label">Full Name</label><input
									type="text" required name="fullname" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label class="form-label">Age</label><input type="number"
									required name="age" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Appointment Date</label><input
									type="date" required name="appoint_date" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Email</label><input type="email"
									required name="email" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Phone No</label><input type="number"
									required name="phno" class="form-control">
							</div>

							<div class="col-md-6">
								<label class="form-label">Diseases</label><input type="text"
									required name="diseases" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Doctor</label><select name="doctor"
									required class="form-control">
									<option value="">-select--</option>

									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>

								</select>
							</div>
							<div class="col-md-12">
								<label class="form-label">Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>


							<c:if test="${ empty userObj}">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn btn-success">Submit</a>
							</c:if>
							<c:if test="${ not empty userObj}">
								<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
							</c:if>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>