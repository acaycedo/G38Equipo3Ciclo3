<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tienda Gen�rica Grupo 3</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>


<script>

	var baseurl ="http://localhost:8080/listarclientes";
	function loadclientes() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var clientes = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Cedula</th><th>Direccion</th><th>Email</th><th>Nombre</th><th>Telefono</th></tr>";
				var main = "";
				for (i = 0; i < clientes.length; i++) {
					main += "<tr><td>" + clientes[i].cedula_cliente
							+ "</td><td>" + clientes[i].direccion_cliente
							+ "</td><td>" + clientes[i].email_cliente
							+ "</td><td>" + clientes[i].nombre_cliente
							+ "</td><td>" + clientes[i].telefono_cliente
							+ "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("clientesinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadclientes();
	}
</script>


</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.jsp">Tienda Gen�rica</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="index.jsp">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="index.jsp">Bienvenido</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="login.jsp">Cerrar
							Sesi�n</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">

						<div class="sb-sidenav-menu-heading">Funciones</div>
						<a class="nav-link" href="listausuarios.jsp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-user-circle" aria-hidden="true"></i>
							</div> Usuarios
						</a> <a class="nav-link" href="listaclientes.jsp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-address-book" aria-hidden="true"></i>
							</div> Clientes
						</a> <a class="nav-link" href="listaproveedores.jsp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-share" aria-hidden="true"></i>
							</div> Proveedores
						</a> <a class="nav-link" href="insertarproducto.jsp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-shopping-bag" aria-hidden="true"></i>
							</div> Productos
						</a> <a class="nav-link" href="ventas.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Ventas
						</a> <a class="nav-link" href="reportes.jsp">
							<div class="sb-nav-link-icon">
								<i class="fa fa-calendar" aria-hidden="true"></i>
							</div> Reportes
						</a>
					</div>

				</div>

				<div class="sb-sidenav-footer">
					<div class="small">Usuario:</div>
					Bienvenido
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Clientes</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Escoger una funcion</li>
					</ol>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-white mb-4">
								<button type="button" class="btn btn-success"
									onclick="window.location.href='<%=request.getContextPath()%>/insertarcliente.jsp'">
									<i class="fas fa-plus-circle"></i> Agregar
								</button>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-white mb-4">
								<button type="button" class="btn btn-warning"
									onclick="window.location.href='<%=request.getContextPath()%>/actualizarcliente.jsp'">
									<i class="fas fa-pen-alt"></i> Actualizar
								</button>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-white mb-4">
								<button type="button" class="btn btn-primary"
									onclick="window.location.href='<%=request.getContextPath()%>/buscarcliente.jsp'">
									<i class="fas fa-search"></i> Buscar
								</button>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-white mb-4">
								<button type="button" class="btn btn-danger"
									onclick="window.location.href='<%=request.getContextPath()%>/eliminarcliente.jsp'">
									<i class="fas fa-trash"></i> Eliminar
								</button>
							</div>
						</div>
					</div>
					<main>
						<div
							class="container-fluid px-4 animate__animated animate__bounceInLeft">



							<div class="row">
								<div class="col-xl-12">
									<div class="card mb-4">
										<div class="card-header text-white bg-dark">
											<i class="fas fa-table"></i> Listado de clientes
										</div>
										<div class="card-body">
											<div class="row">
												<!--  Aqui es donde se autogenera la tabla basado en el script -->
												<div class="col align-self-center" id="clientesinfo">

												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</main>

					<div w3-include-html="snippets/footer.html"></div>

				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Tienda Gen�rica Grupo 38 Equipo 3</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>