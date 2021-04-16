<%@page import="helper.AppHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="translated-ltr">
	<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="EASYCODE">
		<meta name="author" content="UNIFYCODE">		
		<title>EasyCode - Mapa del sitio</title>
		
        <link rel="icon" type="image/png" href="favicon.png" />
        <link href="<%= AppHelper.baseUrl()%>css/bootstrap.min.css" rel="stylesheet">
        <script src="<%= AppHelper.baseUrl()%>js/jquery.min.js"></script>
        <script src="<%= AppHelper.baseUrl()%>js/bootstrap.min.js"></script>
        <script src="<%= AppHelper.baseUrl()%>js/popper.min.js"></script>
        <script src="<%= AppHelper.baseUrl()%>js/jquery-ui.min.js"></script>
		<link href="<%= AppHelper.baseUrl()%>css/font-awesome.min.css" rel="stylesheet">
        <link href="<%= AppHelper.baseUrl()%>css/jquery-ui.min.css" rel="stylesheet">
        
        <link href="<%= AppHelper.baseUrl()%>css/plataforma.css" rel="stylesheet">
        
	</head>

	<body>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div style="min-width:224px">
                <img class="logoimg" src="<%= AppHelper.baseUrl()%>img/logo2_blanco.png" alt="LOGO" 
                     style="max-width: 150px; margin-left:auto; margin-right:auto; display:block">
            </div>
            <div class="mr-auto">
                <div class="input-group">
                  <div class="form-outline" id="caja">
                    <input type="search" id="buscador" class="form-control" placeholder="Buscar..." 
                           style="border-top-right-radius: 0; border-bottom-right-radius: 0; min-width:500px" />
                  </div>
                  <button type="button" class="btn btn-primary" style="border-top-left-radius: 0; border-bottom-left-radius: 0;">
                    <i class="fa fa-search"></i>
                  </button>
                </div>
            </div>
	      <div class="ml-auto menu-derecha">
	      	<!--<ul>
				<!-- <li>
					<a href="shopping_cart.html" class="option_links" title="cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span class="noti_count">2</span></a>
				</li>
				<li class="ui dropdown" tabindex="0">
					<a href="#" class="option_links" title="Notifications"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span class="noti_count">3</span></a>
				</li>
				<li>
					<p class="mx-auto my-auto">Hola, ${user.nombre} ${user.apellidos} </p>
				</li>
				<li class="ui dropdown" tabindex="0">
                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Cuenta
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="#">Datos de cuenta</a>
                      <a class="dropdown-item" href="#">Buzón</a>
                      <a class="dropdown-item" href="#">Cerrar sesión</a>
                  </div>
				</li>
			</ul>-->
                <div class="btn-group">
                    <button type="button" class="btn btn-primary">Hola, ${user.nombre} ${user.apellidos}</button>
                    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <span class="sr-only">Toggle Dropdown</span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                      <a class="dropdown-item" href="<%= AppHelper.baseUrl()%>cuenta">Cuenta</a>
                      <a class="dropdown-item" href="<%= AppHelper.baseUrl()%>buzon">Buzón</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="<%= AppHelper.baseUrl()%>logout">Cerrar sesión</a>
                    </div>
                  </div>

	      </div>
	    </nav>

		<main role="main" class="wrapper">
            <nav id="sidebar">
                <ul class="list-unstyled components">
                    <li>
                        <a href="<%= AppHelper.baseUrl()%>plataforma"><i class="fa fa-home" aria-hidden="true"></i> Inicio</a>
                    </li>
                    <li id="menu-desplegable">
                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-grav" aria-hidden="true"></i> Categorías</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li>
                                <a href="<?= base_url() ?>plataforma/tema_jquery">jQuery</a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>Plataforma/tema_cpp">C++</a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>Plataforma/tema_java">Java</a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>Plataforma/tema_codeigniter">Codeigniter</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<%= AppHelper.baseUrl()%>ayuda"><i class="fa fa-question-circle" aria-hidden="true"></i> Ayuda</a>
                    </li>
                    <li class="active">
                        <a href="<%= AppHelper.baseUrl()%>sitemap"><i class="fa fa-th-large" aria-hidden="true"></i> Mapa del sitio</a>
                    </li>
                </ul>
            </nav>
            
		    <div id="content" class="p-5">
                <div class="row">
		    		<div class="col-12">
		    			<h2>Mapa del sitio</h2>
		    		</div>
		    	</div>
                <div class="row">
                    <div class="col-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-header">
                                <a href="<%= AppHelper.baseUrl()%>">Inicio</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>">Principal</a></li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>login">Acceder</a></li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>contacto">Contáctanos</a></li>
                            </ul>
                      </div>
                    </div>
                    <div class="col-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-header">
                                <a href="<%= AppHelper.baseUrl()%>plataforma">Plataforma</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>plataforma">Inicio</a></li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>login">Acceder</a>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>jquery">jQuery</a>
                                        </li>
                                        <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>cpp">C++</a>
                                        </li>
                                        <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>java">Java</a>
                                        </li>
                                        <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>codeigniter">CodeIgniter</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>ayuda">Ayuda</a></li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>sitemap">Mapa del sitio</a></li>
                            </ul>
                      </div>
                    </div>
                    <div class="col-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-header">
                                <a href="<%= AppHelper.baseUrl()%>cuenta">Cuenta</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>cuenta">Datos de cuenta</a></li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>buzon">Buzón</a></li>
                                <li class="list-group-item"><a href="<%= AppHelper.baseUrl()%>logout">Cerrar sesión</a></li>
                            </ul>
                      </div>
                </div>
               
		    </div>
		</main> 
	</body>
    <script src="<%= AppHelper.baseUrl()%>js/scripts.js"></script>
</html>