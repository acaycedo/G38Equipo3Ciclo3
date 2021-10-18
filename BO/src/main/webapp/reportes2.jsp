<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<!-- paquete de caracteres -->
	<meta charset="utf-8">
	<!-- Tamaño de la pantalla -->
	<meta name="viewport" content="width=device-width">
	<!-- titulo de la pestaña -->
	<title>Equipo 3</title>

	<!-- bootstrap-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	 crossorigin="anonymous">

	<!-- font awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	 crossorigin="anonymous">

   <!-- Cargando mi hoja de estilo -->
	<link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body class="index">
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
		<div class="row justify-content-between">
	    <div class="col-4">
	      <a class="navbar-brand links" href="index.html"><i class="fas fa-store"></i> Tienda Generica</a>
	    </div>
	    
			
			
  		</div>
  		</div>
	</nav>
  <div>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand links" href="usuarios.jsp"> <i
				class="fas fa-users"></i> Usuarios
			</a> <a class="navbar-brand links" href="clientes.jsp"> <i
				class="fas fa-address-book"></i> Clientes
			</a> <a class="navbar-brand links" href="proveedores.jsp"> <i
				class="fas fa-truck"></i> Proveedores
			</a> <a class="navbar-brand links" href="productos.jsp"> <i
				class="fas fa-apple-alt"></i> Productos
			</a> <a class="navbar-brand links" href="ventas.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="reportes.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav></div>

<div class="row">
  <div class="col-1">
   </div>
   <div class="col">
     <h3 style="padding-top:10px;">
				<i class="fas fa-cogs"></i> Operaciones
			</h3><br>
					<button type="button" class="btn"
						onclick="window.location.href='<%=request.getContextPath()%>/listausuarios1.jsp'">
						<i class="fas fa-plus-circle"></i> Lista de Usuarios
					</button><br>
					<button type="button" class="btn"
					onclick="window.location.href='<%=request.getContextPath()%>/listaclientes1.jsp'">
						<i class="fas fa-trash"></i> Lista de Clientes
					</button><br>
					<button type="button" class="btn"
					onclick="window.location.href='<%=request.getContextPath()%>/ventascliente.jsp'">
						<i class="fas fa-pen-alt"></i> Total Ventas
					</button><br>
					<button type="button" class="btn"
					onclick="window.location.href='<%=request.getContextPath()%>/filtrarventa.jsp'">
						<i class="fas fa-pen-alt"></i> Filtrar Ventas
					</button>
   </div>
   
</div>

	<nav class="navbar fixed-bottom navbar-dark bg-dark">
	   <div class="row justify-content-between">
	    <div class="col-4">
	      <a class="navbar-brand links" href="#">   Realizado por el Equpipo 3
	    </div>
	  </div>
	</nav>


</body>

</html>