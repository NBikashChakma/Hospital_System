<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<!-- Secure the page -->
	<c:if test="${empty doctorObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<!-- Secure END the page -->

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<p class="text-center fs-3">Change Password</p>


					<c:if test="${ not empty succMsg}">
						<h5 class="text-center text-success fs-3">${succMsg }</h5>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					<c:if test="${ not empty errorMsg}">
						<h5 class="text-center text-danger fs-3">${errorMsg }</h5>
						<c:remove var="errorMsg" scope="session" />
					</c:if>

					<div class="card-body">
						<form action="../doctorChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New Password</label><input type="text"
									name="newPassword" class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Enter Old Password</label><input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							<input type="hidden" value="${doctorObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-5 offset-md-2">
				<div class="card paint-card">
					<P class="text-center fs-3">Edit Profile</P>


					<c:if test="${ not empty succMsgd}">
						<h5 class="text-center text-success fs-3">${succMsgd }</h5>
						<c:remove var="succMsgd" scope="session" />
					</c:if>
					<c:if test="${ not empty errorMsgd}">
						<h5 class="text-center text-danger fs-3">${errorMsgd }</h5>
						<c:remove var="errorMsgd" scope="session" />
					</c:if>


					<div class="card-body">

						<form action=../doctorUpdateProfile method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label><input type="text"
									required name="fullname" class="form-control"
									value="${doctorObj.fullName }">
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label><input type="date" required
									name="dob" class="form-control" value="${doctorObj.dob }">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label><input
									type="text" required name="qualification" class="form-control"
									value="${doctorObj.qualification }">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label><select name="spec"
									required class="form-control">
									<option>${doctorObj.specialist }</option>
									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>

								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label><input type="text"
									required name="email" class="form-control"
									value="${doctorObj.email }">
							</div>
							<div class="mb-3">
								<label class="form-label">Mob No</label><input type="number"
									required name="mobno" class="form-control"
									value="${doctorObj.mobile }">
							</div>

							<input type="hidden" name="id" value="${doctorObj.id }">

							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>


		</div>
	</div>

</body>
</html>