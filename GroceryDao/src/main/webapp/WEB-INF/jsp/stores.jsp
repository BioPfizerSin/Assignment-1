<!-- file: new-store.jsp -->
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Store</title>

<!-- Bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Font Awesome CDN  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />

<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<!-- Nav Bar -->
	<nav
		class="navbar navbar-expand-lg navbar-light sticky-top bg-light shadow p-3">
		<div class="container-fluid">
			<a class="navbar-brand ml-5" href="/"> <img
				src="assets/logo/Logo.png" alt="Logo" width="120" height="120"
				class="d-inline-block align-text-top">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav mr-auto mb-2 mb-lg-0 ">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="stores">Store</a></li>

				</ul>

				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link" href="#">Log In</a></li>

				</ul>
			</div>
		</div>

	</nav>
	<!-- /Nav Bar -->


	<!--  my code -->
	<main>
		<section class="my-5 px-5 text-center">
			<div class="jumbotron px-5">
				<h1 class="display-4 ">Discover Nearby Gems: Store Finder</h1>
				<p class="lead">One Stop Groceries application allows users to
					easily find the locations of all One Stop Groceries outlets in
					their neighborhood. With this feature, users can quickly access
					details about store addresses, operating hours, and contact
					information.</p>

				<p class="lead">
					<a class="btn btn-primary btn-lg" href="new-store" role="button">Add
						Store</a>
				</p>
			</div>
		</section>
	</main>

	<!-- if stores not exists, show stores not found -->
	<c:if test="${empty stores}">
		<div class="container-fluid text-center bg-light py-5">
			<h2>No Store found.</h2>
		</div>
	</c:if>


	<div class="container px-5 ">
		<div class="row ">
			<!-- if the stores exists, view stores -->
			<c:if test="${not empty stores}">
				<c:forEach var="store" items="${stores}">

					<!-- stores card template -->


					<div class="col-sm-3 ">
						<div
							class="card text-white bg-dark mb-3 mx-auto shadow p-1 mb-5 rounded"
							style="max-width: 18rem;">
							<div class="card-header"
								style="border-bottom: 1px solid #81b622; color: #81b622;">OneStop
								Grocery @${store.name}</div>

							<div class="card-body">
								<h5 class="card-title" style="color: #A0A0A0">${store.localities}</h5>
								<p class="card-text">At a glance, this presents the store's
									name, address, and contact information, allowing you to quickly
									identify and locate the nearest One Stop Groceries outlet.</p>
								<p class="card-text">Contact: ${store.phone }</p>
								<p class="card-text">
									Email: <a class="text-link">onestopgrocer@gmail.com</a>
								</p>
								<p class="card-text">Work Hour: 9am - 6pm (UTC+8)</p>
								<p class="card-text">
									<small class="text-muted">Last updated 1 min ago</small>
								</p>
							</div>
						</div>
					</div>

				</c:forEach>
			</c:if>
		</div>
	</div>
	<!--  /my code -->



	<!-- footer -->
	<div class="container-fluid mt-5"
		style="background-color: #808080; color: #FFFFFF;">
		<footer class="pb-5 pt-5 text-right"> &copy; 2023. Powered by
			OneStop Groceries. </footer>
	</div>
	<!-- /footer -->


	<script src="https://kit.fontawesome.com/e19fcdf015.js"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS CDN -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">
		
	</script>

	<!-- JQUERY CDN  -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>