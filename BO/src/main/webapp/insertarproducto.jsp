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
<title>Tienda Genérica Grupo 3</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>



</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.jsp">Tienda Genérica</a>
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
							Sesión</a></li>
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
					<h1 class="mt-4">Productos</h1>
					<div
						class="container-fluid px-4 animate__animated animate__bounceInLeft">


						<div class="row">
							<div class="col-xl-12">
								<div class="card mb-4">
									<div class="card-header text-white bg-dark">
										<i class="fas fa-table"></i> Carga de archivo de productos
									</div>
									<div class="card-body">
										<div class="container">

											<h1>
												<i class="fas fa-plus-circle"></i> Insertando archivo de
												productos
											</h1>
											<div class="container">


												<div id="error" class="alert alert-danger visually-hidden"
													role="alert">Archivo vacio, extensión no valida o
													datos corruptos (El separador debe ser coma ",")</div>

												<div id="correcto"
													class="alert alert-success visually-hidden" role="alert">Productos
													importados desde CSV con exito</div>

												<form id="form1">

													<div>
														<label for="formFileLg" class="form-label">Seleccionar
															archivo CSV con el inventario de productos</label> <input
															class="form-control form-control-lg" id="archivo"
															type="file" accept=".csv"> <br>
														<button type="button" class="btn btn-success"
															onclick="subirArchivo()">Subir archivo</button>
													</div>

												</form>




											</div>

										</div>

									</div>
								</div>
							</div>
						</div>
						<h3 style="paddinf-top: 5px;">Existencias</h3>
						<div class="container">
							<div class="row">
								<!--  Aqui es donde se autogenera la tabla basado en el script -->
								<div class="col align-self-center" id="productosinfo"></div>

							</div>
						</div>

						<main>
							<div
								class="container-fluid px-4 animate__animated animate__bounceInLeft"></div>





						</main>

						<div w3-include-html="snippets/footer.html"></div>

					</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Tienda Genérica Grupo 38 Equipo 3</div>
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
<script>
	function subirArchivo() {
		try {

			var csvFile = document.getElementById("archivo");

			var input = csvFile.files[0];
			var reader = new FileReader();

			reader.onload = function(e) {

				var text = e.target.result;

				var arrayLineas = text.split("\n");

				var xhr = new XMLHttpRequest();
				xhr.open("DELETE",
						"http://localhost:8080/eliminartodoproducto", true);
				xhr.send();

				for (var i = 0; i < arrayLineas.length; i += 1) {
					var arraydatos = arrayLineas[i].split(",");

					if (arrayLineas[i] == "") {
						continue;
					}

					for (var j = 0; j < arraydatos.length; j += 1) {
						console.log(i + " " + j + "->" + arraydatos[j]);
					}

					var formData = new FormData();
					formData.append("codigo_producto", arraydatos[0]);
					formData.append("nombre_producto", arraydatos[1]);
					formData.append("nitproveedor", arraydatos[2]);
					formData.append("precio_compra", arraydatos[3]);
					formData.append("iva_compra", arraydatos[4]);
					formData.append("precio_venta", arraydatos[5]);
					var xhr = new XMLHttpRequest();
					xhr.open("POST", "http://localhost:8080/registrarproducto");

					xhr.send(formData);
				}

				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");

				document.getElementById("archivo").value = "";

			};

			reader.readAsText(input);
		} catch (error) {
			var element = document.getElementById("error");
			element.classList.remove("visually-hidden");
			var element2 = document.getElementById("correcto");
			element2.classList.add("visually-hidden");

			document.getElementById("archivo").value = "";
		}
	}
</script>
<script>
	var baseurl = "http://localhost:8080/listarproductos";
	function loadproductos() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var productos = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Codigo</th><th>Iva</th><th>Nit Proveedor</th><th>Nombre</th><th>Precio Compra</th><th>Precio Venta</th></tr>";
				var main = "";
				for (i = 0; i < productos.length; i++) {
					main += "<tr><td>" + productos[i].codigo_producto
							+ "</td><td>" + productos[i].iva_compra
							+ "</td><td>" + productos[i].nitproveedor
							+ "</td><td>" + productos[i].nombre_producto
							+ "</td><td>" + productos[i].precio_compra
							+ "</td><td>" + productos[i].precio_venta
							+ "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("productosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadproductos();
	}
</script>
</html>