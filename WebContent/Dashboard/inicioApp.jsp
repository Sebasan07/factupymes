<%@page import="co.edu.ufps.facturacion.entities.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Empresa</title>

<!-- Custom fonts for this template-->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/Dashboard/img/soltec.png" />
<link
	href="<%=request.getContextPath()%>/Dashboard/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="<%=request.getContextPath()%>/Dashboard/css/sb-admin-2.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/Dashboard/css/inicio.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="<%=request.getContextPath()%>/Dashboard/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Dashboard/css/ver-clientes.css">
<script src="https://kit.fontawesome.com/ba2336a3e9.js"
	crossorigin="anonymous"></script>

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="navMenu.jsp" />
		<!-- End of Sidebar ---------------------------------------------------------------------->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->

						<!-- Dropdown - Alerts -->

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><jsp:include
								page="imgUsuario.jsp" /><!-- Dropdown - User Information --></li>

					</ul>

				</nav>
				<!-- INICIO-->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 heading-section">
							<span style="color: #0077b6">Factu</span> <span
								style="color: #00b4d8">Pyme</span>
						</h1>
						<%if(request.getAttribute("mensaje")!=null){ %>
						<h1 class="h3 mb-0 heading-section">
							<span style="color: red;font-size: 14px"><%=request.getAttribute("mensaje") %></span>
						</h1>
						<%}%>
					</div>

					<%
						Usuario us = request.getSession().getAttribute("usuario") == null ? null
							: (Usuario) request.getSession().getAttribute("usuario");
					
					Empresa e =null;
					if(us!=null && us.getEmpresa()!=null){
						e= us.getEmpresa();
						request.getSession().setAttribute("empresa", e);
					}
					%>

					<!--CARDS -->
					<div class="row">
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												Empresa</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"><%=e!=null?e.getRazonSocial():"-- | --"%></div>
										</div>
										<div class="col-auto">
											<i class="far fa-building icono"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												Identificaci?n (NIT)</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"><%=e!=null?e.getNit():"-- | --"%></div>
										</div>
										<div class="col-auto">
											<i class="far fa-address-card icono"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												Nombre representante</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"><%=e!=null?e.getNombreRepresentante():"-- | --"%></div>
										</div>
										<div class="col-auto">
											<i class="fas fa-user icono"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												Ciudad</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"><%=e!=null?e.getMunicipio():"-- | --"%></div>
										</div>
										<div class="col-auto">
											<i class="fas fa-city icono"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!--end de cartas-->

					<!--Inicio de parte de la empresa -->
					<%
						if(us.getRolUsuarioBean().getRolUsuario().equals("Administrador")){
					%>
					<div class="col-lg-6">
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">Empresa</h6>
							</div>
							<div class="card-body">
								Configura la informaci?n de tu empresa y adapta FactuPyme a tu
								negocio <a class="ancla"
									href="<%=request.getContextPath()%><%=e!=null?"/inicio/empresa/editar":"/inicio/empresa/agregar"%>">Empresa</a>
								<a class="ancla"
									href="<%=request.getContextPath()%>/inicio/usuario/ver">Usuarios</a>
							</div>
						</div>
					</div>
					<%} %>
					<!--Fin de parte de la empresa -->
				</div>
				<!-- /FIN-->

				<!-- End of Content Wrapper -->

				<!-- End of Page Wrapper -->

				<!-- Scroll to Top Button-->
				<a class="scroll-to-top rounded" href="#page-top"> <i
					class="fas fa-angle-up"></i>
				</a>

				<!-- Bootstrap core JavaScript-->
				<script
					src="<%=request.getContextPath()%>/Dashboard/vendor/jquery/jquery.min.js"></script>
				<script
					src="<%=request.getContextPath()%>/Dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

				<!-- Core plugin JavaScript-->
				<script
					src="<%=request.getContextPath()%>/Dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>

				<!-- Custom scripts for all pages-->
				<script
					src="<%=request.getContextPath()%>/Dashboard/js/sb-admin-2.min.js"></script>

				<!-- Page level plugins -->
				<script
					src="<%=request.getContextPath()%>/Dashboard/vendor/chart.js/Chart.min.js"></script>

				<!-- Page level custom scripts -->
				<script
					src="<%=request.getContextPath()%>/Dashboard/js/demo/chart-area-demo.js"></script>
				<script
					src="<%=request.getContextPath()%>/Dashboard/js/demo/chart-pie-demo.js"></script>
</body>

</html>