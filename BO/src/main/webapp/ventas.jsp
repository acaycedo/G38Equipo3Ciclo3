<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Tienda Genérica Grupo 3</title>
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<script>
	window.onload = function() {
		var req = new XMLHttpRequest();
		req.open('GET', 'http://localhost:8080/contadorventa', false);
		req.send(null);
		var cont = null;
		if (req.status == 200)
			cont = JSON.parse(req.responseText);
		console.log(cont.toString());
		document.getElementById("consecutivo").value = cont;
	};
</script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.jsp">Tienda Genérica</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="listausuarios.jsp">
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
					<h1 class="mt-4">Ventas</h1>
					<button type="button" class="btn btn-primary"
						onclick="window.location.href='reportes.jsp'">
						<i class="fa fa-arrow-left" aria-hidden="true"></i> Regresar

					</button>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Registro de Ventas</li>

					</ol>

					<main>
						<div
							class="container-fluid px-4 animate__animated animate__bounceInLeft">



							<div class="row">
								<div class="col-xl-12">
									<div class="card mb-4">
										<div class="card-header text-white bg-dark">
											<i class="fas fa-table"></i> Inserte datos para la nueva
											venta
										</div>
										<div class="card-body">
											<div class="container">
												<div id="error" class="alert alert-danger visually-hidden"
													role="alert">Error al buscar el cliente</div>

												<div id="error1" class="alert alert-danger visually-hidden"
													role="alert">Error el producto no existe</div>

												<div id="error2" class="alert alert-danger visually-hidden"
													role="alert">Error al buscar el usuario</div>

												<div id="error3" class="alert alert-danger visually-hidden"
													role="alert">Error al registrar venta</div>

												<div id="correcto"
													class="alert alert-success visually-hidden" role="alert">Venta
													Registrada</div>
												<form id="form1">
													<div class="col-xl-4 col-lg-4 col-md-8 col-sm-8">
														<div class="input-group input-group-lg mb-3">
															<span class="input-group-text" id="basic-addon1">N° de Venta</span>
															<input type="text" class="form-control"
																readonly="readonly" id="consecutivo">
														</div>
													</div>

													<div class="input-group mb-5">
														<span class="input-group-text" id="basic-addon1">Cedula</span>
														<input type="text" class="form-control"
															placeholder="Inserte cedula aqui..."
															aria-describedby="basic-addon1" required
															id="cedula_cliente">
														<button type="button" class="btn btn-success"
															onclick="enviar()">
															<i class="fas fa-check"></i> Consultar
														</button>
														<span class="input-group-text" id="basic-addon1">Cliente</span>
														<input type="text" name="" id="nombre_cliente"
															disabled="disabled">

													</div>
													<div class="input-group mb-5">
														<span class="input-group-text" id="basic-addon1">Cedula</span>
														<input type="text" class="form-control"
															placeholder="Inserte cedula aqui..."
															aria-describedby="basic-addon1" required
															id="cedula_usuario">
														<button type="button" class="btn btn-success"
															onclick="consultar()">
															<i class="fas fa-check"></i> Consultar
														</button>
														<span class="input-group-text" id="basic-addon1">Usuario</span>
														<input type="text" name="" id="nombre_usuario"
															disabled="disabled">

													</div>
													<div class="input-group mb-5">
														<span class="input-group-text" id="basic-addon1">Codigo
															Producto</span> <input type="text" class="form-control"
															placeholder="Inserte producto..."
															aria-describedby="basic-addon1" required
															id="codigo_producto">
														<button type="button" class="btn btn-success"
															onclick="enviar1()">
															<i class="fas fa-check"></i>
														</button>
														<span class="input-group-text" id="basic-addon1">Nombre
															Producto</span> <input type="text" name="" id="nombre_producto"
															disabled="disabled"> <span
															class="input-group-text" id="basic-addon1">Cantidad
														</span> <input type="text" class="form-control"
															placeholder="Inserte cantidad..."
															aria-describedby="basic-addon1" required id="cantidad">
														<button type="button" class="btn btn-success"
															onclick="calcular()">
															<i class="fas fa-check"></i>
														</button>
														<span class="input-group-text" id="basic-addon1">Valor
															Total </span> <input type="text" name="" id="valor_total"
															disabled="disabled">

													</div>
													<div class="input-group mb-5">
														<span class="input-group-text" id="basic-addon1">Codigo
															Producto</span> <input type="text" class="form-control"
															placeholder="Inserte producto..."
															aria-describedby="basic-addon1" required
															id="codigo_producto1">
														<button type="button" class="btn btn-success"
															onclick="enviar2()">
															<i class="fas fa-check"></i>
														</button>
														<span class="input-group-text" id="basic-addon1">Nombre
															Producto</span> <input type="text" name="" id="nombre_producto1"
															disabled="disabled"> <span
															class="input-group-text" id="basic-addon1">Cantidad
														</span> <input type="text" class="form-control"
															placeholder="Inserte cantidad..."
															aria-describedby="basic-addon1" required id="cantidad1">
														<button type="button" class="btn btn-success"
															onclick="calcular1()">
															<i class="fas fa-check"></i>
														</button>
														<span class="input-group-text" id="basic-addon1">Valor
															Total </span> <input type="text" name="" id="valor_total1"
															disabled="disabled">

													</div>
													<div class="input-group mb-5">
														<span class="input-group-text" id="basic-addon1">Codigo
															Producto</span> <input type="text" class="form-control"
															placeholder="Inserte producto..."
															aria-describedby="basic-addon1" required
															id="codigo_producto2">
														<button type="button" class="btn btn-success"
															onclick="enviar3()">
															<i class="fas fa-check"></i>
														</button>
														<span class="input-group-text" id="basic-addon1">Nombre
															Producto</span> <input type="text" name="" id="nombre_producto2"
															disabled="disabled"> <span
															class="input-group-text" id="basic-addon1">Cantidad
														</span> <input type="text" class="form-control"
															placeholder="Inserte cantidad..."
															aria-describedby="basic-addon1" required id="cantidad2">
														<button type="button" class="btn btn-success"
															onclick="calcular2()">
															<i class="fas fa-check"></i>
														</button>
														<span class="input-group-text" id="basic-addon1">Valor
															Total </span> <input type="text" name="" id="valor_total2"
															disabled="disabled">

													</div>
													<br>
													<div class="container">
														<div class="d-flex flex-wrap">
															<div class="col" style="text-align: right;">
																<button class="btn btn-success" type="submit"
																	onclick="confirmar()">Confirmar</button>
															</div>
															<div class="col-1"></div>
															<div class="col-3">
																<label for="">Total Venta</label> <br> <label
																	for="">Total IVA</label> <br> <label for="">Total
																	con IVA</label>

															</div>
															<div class="col-3">
																<input type="text" name="" id="total_venta"
																	disabled="disabled"> <br> <input
																	type="text" name="" id="total_iva" disabled="disabled">
																<br> <input type="text" name="" id="total_con_iva"
																	disabled="disabled">
															</div>
														</div>
													</div>
												</form>
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
	function enviar() {
		var y = document.getElementById("cedula_cliente").value;
		var req = new XMLHttpRequest();
		req.open('GET', 'http://localhost:8080/listarclientes', false);
		req.send(null);
		var clientes = null;
		if (req.status == 200)
			clientes = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		for (i = 0; i < clientes.length; i++) {

			console.log(clientes[i].cedula_cliente);
			if (clientes[i].cedula_cliente == y) {
				document.getElementById("nombre_cliente").value = clientes[i].nombre_cliente;
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				break;
			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
			}
		}

	}


	function consultar() {
		var y = document.getElementById("cedula_usuario").value;
		var req = new XMLHttpRequest();
		req.open('GET', 'http://localhost:8080/listarusuarios', false);
		req.send(null);
		var usuarios = null;
		if (req.status == 200)
			usuarios = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		for (i = 0; i < usuarios.length; i++) {

			console.log(usuarios[i].cedula_usuario);
			if (usuarios[i].cedula_usuario == y) {
				document.getElementById("nombre_usuario").value = usuarios[i].nombre_usuario;
				var element = document.getElementById("error2");
				element.classList.add("visually-hidden");
				break;
			} else {
				var element = document.getElementById("error2");
				element.classList.remove("visually-hidden");
			}
		}
	}
</script>
<script>
	var precio;
	var precio1;
	var precio2;
	var iva = 19 / 100;
	var total_venta = 0;
	var total_iva = 0;
	var total_con_iva = 0;

	function enviar1() {
		var y = document.getElementById("codigo_producto").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/listarproductos', false);
		req.send(null);
		var productos = null;
		if (req.status == 200)
			productos = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		for (i = 0; i < productos.length; i++) {

			console.log(productos[i].codigo_producto);
			if (productos[i].codigo_producto == y) {
				document.getElementById("nombre_producto").value = productos[i].nombre_producto;
				precio = productos[i].precio_venta;
				console.log(precio);
				var element = document.getElementById("error1");
				element.classList.add("visually-hidden");
				coincidencia = true;
				break;
			} else {
				var element = document.getElementById("error1");
				element.classList.remove("visually-hidden");
			}
		}
	}

	function enviar2() {
		var y = document.getElementById("codigo_producto1").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/listarproductos', false);
		req.send(null);
		var productos = null;
		if (req.status == 200)
			productos = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		for (i = 0; i < productos.length; i++) {

			console.log(productos[i].codigo_producto);
			if (productos[i].codigo_producto == y) {
				document.getElementById("nombre_producto1").value = productos[i].nombre_producto;
				precio1 = productos[i].precio_venta;
				console.log(precio1);
				var element = document.getElementById("error1");
				element.classList.add("visually-hidden");
				coincidencia = true;
				break;
			} else {
				var element = document.getElementById("error1");
				element.classList.remove("visually-hidden");
			}
		}
	}

	function enviar3() {
		var y = document.getElementById("codigo_producto2").value;
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/listarproductos', false);
		req.send(null);
		var productos = null;
		if (req.status == 200)
			productos = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		for (i = 0; i < productos.length; i++) {

			console.log(productos[i].codigo_producto);
			if (productos[i].codigo_producto == y) {
				document.getElementById("nombre_producto2").value = productos[i].nombre_producto;
				precio2 = productos[i].precio_venta;
				console.log(precio2);
				var element = document.getElementById("error1");
				element.classList.add("visually-hidden");
				coincidencia = true;
				break;
			} else {
				var element = document.getElementById("error1");
				element.classList.remove("visually-hidden");
			}
		}
	}

	function calcular() {
		var cantidad = document.getElementById("cantidad").value;
		var total = cantidad * precio;
		var subiva;
		document.getElementById("valor_total").value = total;
		total_venta += total;
		subiva = (total * iva);
		total_iva += Math.round(subiva);
		total_con_iva += (total_venta + total_iva);
		document.getElementById("total_venta").value = total_venta;
		document.getElementById("total_iva").value = total_iva;
		document.getElementById("total_con_iva").value = total_con_iva;
	}
	function calcular1() {
		var cantidad = document.getElementById("cantidad1").value;
		var total = cantidad * precio1;
		var subiva;
		document.getElementById("valor_total1").value = total;
		total_venta += total;
		subiva = (total * iva);
		total_iva += Math.round(subiva);
		total_con_iva += (total_venta + total_iva);
		document.getElementById("total_venta").value = total_venta;
		document.getElementById("total_iva").value = total_iva;
		document.getElementById("total_con_iva").value = total_con_iva;
	}
	function calcular2() {
		var cantidad = document.getElementById("cantidad2").value;
		var total = cantidad * precio2;
		var subiva;
		document.getElementById("valor_total2").value = total;
		total_venta += total;
		subiva = (total * iva);
		total_iva += Math.round(subiva);
		total_con_iva += (total_venta + total_iva);
		document.getElementById("total_venta").value = total_venta;
		document.getElementById("total_iva").value = total_iva;
		document.getElementById("total_con_iva").value = total_con_iva;
	}
</script>

<script>
	function confirmar() {
		var cantidad = document.getElementById("cantidad").value;
		var cantidad1 = document.getElementById("cantidad1").value;
		var cantidad2 = document.getElementById("cantidad2").value;
		var verdadero = false;

		if (cantidad > 0) {
			var formData = new FormData();
			formData.append("cedula_cliente", document
					.getElementById("cedula_cliente").value);
			formData.append("cedula_usuario", document
					.getElementById("cedula_usuario").value);
			formData.append("iva_venta",
					document.getElementById("total_iva").value);
			formData.append("total_venta", document
					.getElementById("total_venta").value);
			formData.append("valor_venta", document
					.getElementById("total_con_iva").value);
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "http://localhost:8080/ingresarventa");

			xhr.send(formData);

			formData.append("cantidad_producto", document
					.getElementById("cantidad").value);
			formData.append("codigo_producto", document
					.getElementById("codigo_producto").value);
			formData.append("codigo_venta", document
					.getElementById("consecutivo").value);
			formData.append("valor_total", document
					.getElementById("valor_total").value);
			formData.append("valor_venta", document
					.getElementById("total_con_iva").value);
			formData.append("valor_iva",
					document.getElementById("total_iva").value);
			var xhr1 = new XMLHttpRequest();
			xhr1.open("POST", "http://localhost:8080/ingresardetalle");
			xhr1.send(formData);
			verdadero = true;

			if (cantidad1 > 0) {
				var formData1 = new FormData();
				formData1.append("cantidad_producto", document
						.getElementById("cantidad1").value);
				formData1.append("codigo_producto", document
						.getElementById("codigo_producto1").value);
				formData1.append("codigo_venta", document
						.getElementById("consecutivo").value);
				formData1.append("valor_total", document
						.getElementById("valor_total").value);
				formData1.append("valor_venta", document
						.getElementById("total_con_iva").value);
				formData1.append("valor_iva", document
						.getElementById("total_iva").value);
				var xhr2 = new XMLHttpRequest();
				xhr2.open("POST", "http://localhost:8080/ingresardetalle");
				xhr2.send(formData1);

				if (cantidad2 > 0) {
					var formData2 = new FormData();
					formData2.append("cantidad_producto", document
							.getElementById("cantidad2").value);
					formData2.append("codigo_producto", document
							.getElementById("codigo_producto2").value);
					formData2.append("codigo_venta", document
							.getElementById("consecutivo").value);
					formData2.append("valor_total", document
							.getElementById("valor_total").value);
					formData2.append("valor_venta", document
							.getElementById("total_con_iva").value);
					formData2.append("valor_iva", document
							.getElementById("total_iva").value);
					var xhr3 = new XMLHttpRequest();
					xhr3.open("POST", "http://localhost:8080/ingresardetalle");
					xhr3.send(formData2);
				}
			}
		} else {
			var element2 = document.getElementById("error3");
			element2.classList.remove("visually-hidden");
		}

		if (verdadero != false) {
			document.getElementById("cedula_cliente").value = "";
			document.getElementById("nombre_cliente").value = "";
			document.getElementById("cedula_usuario").value = "";
			document.getElementById("nombre_usuario").value = "";
			document.getElementById("consecutivo").value = "";
			document.getElementById("valor_total").value = "";
			document.getElementById("valor_total1").value = "";
			document.getElementById("valor_total2").value = "";
			document.getElementById("codigo_producto").value = "";
			document.getElementById("codigo_producto1").value = "";
			document.getElementById("codigo_producto2").value = "";
			document.getElementById("nombre_producto").value = "";
			document.getElementById("nombre_producto1").value = "";
			document.getElementById("nombre_producto2").value = "";
			document.getElementById("cantidad").value = "";
			document.getElementById("cantidad1").value = "";
			document.getElementById("cantidad2").value = "";
			document.getElementById("total_venta").value = "";
			document.getElementById("total_iva").value = "";
			document.getElementById("total_con_iva").value = "";
			var element2 = document.getElementById("correcto");
			element2.classList.remove("visually-hidden");
			var element2 = document.getElementById("error3");
			element2.classList.add("visually-hidden");
		} else {
			var element2 = document.getElementById("error3");
			element2.classList.remove("visually-hidden");
			var element2 = document.getElementById("correcto");
			element2.classList.add("visually-hidden");
		}

	}
</script>
</html>