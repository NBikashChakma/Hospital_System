<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>


	<!--Connection conn = DBConnect.getConn();
	out.println(conn);;
	%> -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos-1.jpg" class="d-block w-100" alt="First slide"
					height="520px">
			</div>
			<div class="carousel-item">
				<img src="img/hos-2.jpg" class="d-block w-100" alt="Second slide"
					height="520px">
			</div>
			<div class="carousel-item">
				<img src="img/hos-3.jpg" class="d-block w-100" alt="Third slide"
					height="520px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry.</p>
							</div>
						</div>
					</div>




				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/doc.jpg" width="350px" height="400px"
					class="paint-card">
			</div>


		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc1.jpg" width="200px" height="300px">
						<p class="fw-bold fs-5">Dr. Mohammad Jahangir Talukder</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc3.jpg" width="200px" height="300px">
						<p class="fw-bold fs-5">Dr. A K M Musa</p>
						<p class="fs-7">Professor</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc2.jpg" width="200px" height="300px">
						<p class="fw-bold fs-5">Dr. R. K. Saha</p>
						<p class="fs-7">Professor</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc4.jpg" width="200px" height="300px">
						<p class="fw-bold fs-5">Dr. Tanjima Parvin</p>
						<p class="fs-7">Assistant</p>
					</div>
				</div>
			</div>

		</div>
	</div>

	<%@include file="component/footer.jsp"%>

</body>
</html>