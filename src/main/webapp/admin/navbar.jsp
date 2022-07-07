<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="index.jsp"><i
				class="fas fa-clinic-medical"></i> MEDI HOME</a>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp">HOME</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="doctor.jsp">ADD DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_doctor.jsp">VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="patient.jsp">PAITENT</a></li>
			</ul>

			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton2" data-bs-toggle="dropdown"
					aria-expanded="false">Admin</button>
				<ul class="dropdown-menu dropdown-menu-dark"
					aria-labelledby="dropdownMenuButton2">
					<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
				</ul>
			</div>


		</div>
	</div>
</nav>