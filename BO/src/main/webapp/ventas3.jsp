<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<!-- paquete de caracteres -->
	<meta charset="utf-8">
	<!-- TamaÃ±o de la pantalla -->
	<meta name="viewport" content="width=device-width">
	<!-- titulo de la pestaÃ±a -->
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
	
	<br>
	<div>
	<h2 style="text-align: center;">
	VENTAS
	</h2>
	</div>
	<br>
	<div id="error" class="alert alert-danger visually-hidden"
						role="alert">Error al buscar el cliente
						</div>

		<div id="error1" class="alert alert-danger visually-hidden"
						role="alert">Error el producto no
						existe</div>
						
		<div id="error2" class="alert alert-danger visually-hidden"
						role="alert">Error al buscar el usuario
						</div>	
						
		<div id="error3" class="alert alert-danger visually-hidden"
						role="alert">Error al registrar venta
						</div>
		
		<div id="correcto" class="alert alert-success visually-hidden"
						role="alert">Venta Registrada
						</div>			

	<div class="container">
    <div class="d-flex">
     <div class="col">
       <label for="">Cedula</label>
       <input type="text" name="" id="cedula_cliente">
        <button class="btn btn-primary" type="submit" onclick="enviar()">Consultar</button>
     </div>
    <div class="col">
      <label for="">Cliente</label>
       <input type="text" name="" id="nombre_cliente" disabled="disabled">
    </div>
   <div class="col">
     <label for="">Consecutivo</label>
       <input type="text" name="" id="consecutivo" disabled="disabled">
       <button class="btn btn-primary" type="submit" onclick="consecutivo()">
       <i class="fas fa-check-circle"></i>
       </button>
   </div>
    </div>
   </div>
   <div class="container">
    <div class="d-flex">
     <div class="col">
       <label for="">Cedula</label>
       <input type="text" name="" id="cedula_usuario">
        <button class="btn btn-primary" type="submit" onclick="consultar()">Consultar</button>
     </div>
    <div class="col">
      <label for="">Usuario</label>
       <input type="text" name="" id="nombre_usuario" disabled="disabled">
    </div>
   <div class="col">
     
   </div>
    </div>
   </div>
    <br>
    <div class="container">
     <div class="d-flex">
      <div class="col">
        <label for="">Codigo Producto</label> <br>
        <input type="text" name="" id="codigo_producto">
        <button class="btn btn-primary" type="submit" onclick="enviar1()" >
        <i class="fas fa-search"></i></button>
      </div>
     <div class="col">
       <label for="">Nombre Producto</label> <br>
       <input type="text" name="" id="nombre_producto" disabled="disabled">
     </div>
    <div class="col">
       <label for="">Cantidad</label> <br>
       <input type="text" name="" id="cantidad">
       <button class="btn btn-primary" type="submit" onclick="calcular()">
       <i class="fas fa-hand-point-right"></i>
       </button>
    </div>
   <div class="col">
     <label for="">Valor Total</label> <br>
       <input type="text" name="" id="valor_total" disabled="disabled">
   </div>
     </div>
    </div>

  <div class="container">
     <div class="d-flex">
      <div class="col">
        <input type="text" name="" id="codigo_producto1">
        <button class="btn btn-primary" type="submit" onclick="enviar2()">
        <i class="fas fa-search"></i></button>
      </div>
     <div class="col">
       <input type="text" name="" id="nombre_producto1" disabled="disabled">
       
     </div>
    <div class="col">
       <input type="text" name="" id="cantidad1">
       <button class="btn btn-primary" type="submit" onclick="calcular1()">
       <i class="fas fa-hand-point-right"></i>
       </button>
    </div>
   <div class="col">
       <input type="text" name="" id="valor_total1" disabled="disabled">
   </div>
     </div>
    </div>

  <div class="container">
     <div class="d-flex">
      <div class="col">
        <input type="text" name="" id="codigo_producto2">
        <button class="btn btn-primary" type="submit" onclick="enviar3()">
        <i class="fas fa-search"></i></button>
      </div>
     <div class="col">
       <input type="text" name="" id="nombre_producto2" disabled="disabled">
     </div>
    <div class="col">
       <input type="text" name="" id="cantidad2">
       <button class="btn btn-primary" type="submit" onclick="calcular2()">
       <i class="fas fa-hand-point-right"></i>
       </button>
    </div>
   <div class="col">
       <input type="text" name="" id="valor_total2" disabled="disabled">
   </div>
     </div>
    </div>
    <br>
 <div class="container">
  <div class="d-flex flex-wrap">
   <div class="col" style="text-align: right;">
     <button class="btn btn-primary" type="submit" 
     onclick="confirmar()">Confirmar</button>
   </div>
   <div class="col-1"></div>
  <div class="col-3">
    <label for="">Total Venta</label>
    <br>
    <label for="">Total IVA</label>
    
    <br>
    <label for="">Total con IVA</label>
    
  </div>
 <div class="col-3">
   <input type="text" name="" id="total_venta" disabled="disabled"> 
   <br>
   <input type="text" name="" id="total_iva" disabled="disabled"> 
   <br>
   <input type="text" name="" id="total_con_iva" disabled="disabled"> 
 </div>
  </div>
 </div>

	<nav class="navbar fixed-bottom navbar-dark bg-dark">
	   <div class="row justify-content-between">
	    <div class="col-4">
	      <a class="navbar-brand links" href="#">   Realizado por el Equpipo 3
	    </div>
	  </div>
	</nav>

	<script>
		function enviar() {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
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
				}
				else{
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
				}
			}
			
		} 
		function consecutivo(){
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			var req = new XMLHttpRequest();
			req.open('GET', 'http://localhost:8080/listaventas', false);
			req.send(null);
			var ventas = null;
			if (req.status == 200)
				ventas = JSON.parse(req.responseText);
				document.getElementById("consecutivo").value = ventas.length + 1;
				console.log(ventas.length);
			console.log(JSON.parse(req.responseText));
		}
		
		function consultar() {
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
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
				}
				else{
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
		var iva = 19/100;
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
				}
				else{
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
				}
				else{
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
				}
				else{
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
		function confirmar(){
			var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			var cantidad = document.getElementById("cantidad").value;
			var cantidad1 = document.getElementById("cantidad1").value;
			var cantidad2 = document.getElementById("cantidad2").value;
			var verdadero = false;
			
			if (cantidad > 0){
				var formData = new FormData();
				formData.append("cedula_cliente", document.getElementById("cedula_cliente").value);
				formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
				formData.append("iva_venta", document.getElementById("total_iva").value);
				formData.append("total_venta",document.getElementById("total_venta").value);
				formData.append("valor_venta",document.getElementById("total_con_iva").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", baseUrl+"/ingresarventa");
				
				xhr.send(formData);
				
				formData.append("cantidad_producto", document.getElementById("cantidad").value);
				formData.append("codigo_producto", document.getElementById("codigo_producto").value);
				formData.append("codigo_venta", document.getElementById("consecutivo").value);
				formData.append("valor_total",document.getElementById("valor_total").value);				formData.append("valor_venta",document.getElementById("total_con_iva").value);
				formData.append("valor_iva",document.getElementById("total_iva").value);
				var xhr1 = new XMLHttpRequest();
				xhr1.open("POST", baseUrl+"/ingresardetalle");
				xhr1.send(formData);
				verdadero = true;
				
				if (cantidad1 > 0){
					var formData1 = new FormData();
					formData1.append("cantidad_producto", document.getElementById("cantidad1").value);
					formData1.append("codigo_producto", document.getElementById("codigo_producto1").value);
					formData1.append("codigo_venta", document.getElementById("consecutivo").value);
					formData1.append("valor_total",document.getElementById("valor_total").value);
					formData1.append("valor_venta",document.getElementById("total_con_iva").value);
					formData1.append("valor_iva",document.getElementById("total_iva").value);
					var xhr2 = new XMLHttpRequest();
					xhr2.open("POST", baseUrl+"/ingresardetalle");
					xhr2.send(formData1);
					
					if (cantidad2 > 0){
						var formData2 = new FormData();
						formData2.append("cantidad_producto", document.getElementById("cantidad2").value);
						formData2.append("codigo_producto", document.getElementById("codigo_producto2").value);
						formData2.append("codigo_venta", document.getElementById("consecutivo").value);
						formData2.append("valor_total",document.getElementById("valor_total").value);
						formData2.append("valor_venta",document.getElementById("total_con_iva").value);
						formData2.append("valor_iva",document.getElementById("total_iva").value);
						var xhr3 = new XMLHttpRequest();
						xhr3.open("POST", baseUrl+"/ingresardetalle");
						xhr3.send(formData2);
					}
				}
			}else{
				var element2 = document.getElementById("error3");
				element2.classList.remove("visually-hidden");
			}

			if (verdadero != false){
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
			}else{
				var element2 = document.getElementById("error3");
				element2.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
			}
			
		}
	
	</script>

</body>

</html>