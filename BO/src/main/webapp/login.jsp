<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- TamaÃ±o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaÃ±a -->
<title>Inicio de Sesión</title>

<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="cover.css" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0">Tiendas Genéricas</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link " href="indexes.html">Inicio</a>
        <a class="nav-link active" aria-current="page" href="login.jsp">Iniciar Sesión</a>
        <a class="nav-link" href="indexes.html">Registrarse</a>
      </nav>
    </div>
  </header>
  </div>
 
	<!-- Navbar-->
	<h1 class="aver"></h1>

	<div class="container" style="align-content: center">
		<div class="row">
			<div class="col-8" style="padding:25px">
				<h1 class="letra">Hola de nuevo!</h1>
				<h5 class="letra1">Bienvenido de nuevo a "NombreTienda"!</h5>
				<div class="input-container">
					<label for="inputuser">USUARIO</label>
           <input type="text" id="inputuser" name="user">
         </div>
         <div class="input-container">
           <label for="inputpass">CONTRASEÑA</label>
           <input type="password" id="inputpass" name="password">
         </div>
         <a class="hasolvidado "href="login.jsp">¿Has olvidado la contraseña?</a>
         <br>
        <button type="button" class="enviar" onclick="comparar()">
					 Iniciar Sesión
				</button>
				<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Usuario o contraseña incorrecta!</div>
        <p class="need">¿Necesitas una cuenta?<a class="registrarse"href="register.html"> Registrarse</a></p>
        <br>
       </div>



       <div class="col-4" style="padding:15px">
        <div class="icono" style="margin:auto">
          <img src="market.png" alt="Not Found" width="200px" class="img">
        </div>
        <br>
         <p class="textold" style="margin:auto">
           Eslogan/Misión o Visión
           Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto nemo maiores corporis modi laudantium laborum qui a accusamus, eligendi, veniam tenetur reprehenderit magnam recusandae ab asperiores nisi vero voluptatem?
         </p>
       </div>
     </div>
    </div>

<br>
<br>
  <nav class="navbar static-bottom navbar-dark bg-dark">
  <div class="footer1" style="padding-left:25px">
    <a class="navbar-brand" href="https://trello.com/b/Y2fK6lmN/grupo38-scrum1-proyecto-tienda">  Grupo38 / Scrum 3
  </div>
</nav>
			<!--  
			<div class="col-4">
				<a class="navbar-brand links" href="https://github.com/roca12"><i
					class="fab fa-github-square"></i> Github</a> <a
					class="navbar-brand links" href=""><i class="fab fa-twitter"></i>
					Twitter</a>
			</div>
			-->
		</div>
	</nav>
	
	<!-- Script que trae la informacion de la api y la compara con las entradas -->
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la informaciÃ³n
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);
					
					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {
						
						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);
						
						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								var element = document.getElementById("error");
								element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "listausuarios.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.remove("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");
					
					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
	</script>

</body>

</html>