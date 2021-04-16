<%@page import="helper.AppHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="translated-ltr">
	<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, shrink-to-fit=9">
		<meta name="description" content="EASYCODE">
		<meta name="author" content="UNIFYCODE">		
		<title>EasyCode - Ayuda</title>
		
        <link rel="icon" type="image/png" href="favicon.png" />
        <link href="<%= AppHelper.baseUrl()%>css/bootstrap.min.css" rel="stylesheet">
        <script src="<%= AppHelper.baseUrl()%>js/jquery.min.js"></script>
        <script src="<%= AppHelper.baseUrl()%>js/bootstrap.min.js"></script>
        <script src="<%= AppHelper.baseUrl()%>js/popper.min.js"></script>
		<link href="<%= AppHelper.baseUrl()%>css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<%= AppHelper.baseUrl()%>css/datatables_bootstrap4.min.css"/>
        <script type="text/javascript" src="<%= AppHelper.baseUrl()%>js/datatables.min.js"></script>
        
        <link href="<%= AppHelper.baseUrl()%>css/plataforma.css" rel="stylesheet">
        <script src="<%= AppHelper.baseUrl()%>js/buzon.js"></script>
        <style>
            .faqHeader {
                font-size: 27px;
                margin: 20px;
            }

            .panel-heading [data-toggle="collapse"]:after {
                font: normal normal normal 14px/1 FontAwesome;
                content: "\f04b";
                float: right;
                color: #F58723;
                font-size: 18px;
                line-height: 22px;
                /* rotate "play" icon from > (right arrow) to down arrow */
                -webkit-transform: rotate(-90deg);
                -moz-transform: rotate(-90deg);
                -ms-transform: rotate(-90deg);
                -o-transform: rotate(-90deg);
                transform: rotate(-90deg);
            }

            .panel-heading [data-toggle="collapse"].collapsed:after {
                /* rotate "play" icon from > (right arrow) to ^ (up arrow) */
                -webkit-transform: rotate(90deg);
                -moz-transform: rotate(90deg);
                -ms-transform: rotate(90deg);
                -o-transform: rotate(90deg);
                transform: rotate(90deg);
                color: #454444;
            }
        </style>
	</head>

	<body>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div style="min-width:224px">
                <img class="logoimg" src="<%= AppHelper.baseUrl()%>img/logo2_blanco.png" alt="LOGO" 
                     style="max-width: 150px; margin-left:auto; margin-right:auto; display:block">
            </div>
            <div class="mr-auto">
                <div class="input-group">
                  <div class="form-outline">
                    <input type="search" id="form1" class="form-control" placeholder="Buscar..." 
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
                    <li class="active">
                        <a href="<%= AppHelper.baseUrl()%>sugerencias"><i class="fa fa-question-circle" aria-hidden="true"></i> Ayuda</a>
                    </li>
                    <li>
                        <a href="<%= AppHelper.baseUrl()%>sitemap"><i class="fa fa-th-large" aria-hidden="true"></i> Mapa del sitio</a>
                    </li>
                </ul>
            </nav>
            
		    <div id="content" class="p-5">
		    	<div class="row">
		    		<div class="col-12">
		    			<h2>Ayuda</h2>
		    		</div>
		    	</div>
                
                <div class="row justify-content-center">
                    <div class="col-10">
                    <!--<div class="alert alert-warning alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        This section contains a wealth of information, related to <strong>PrepBootstrap</strong> and its store. If you cannot find an answer to your question, 
                        make sure to contact us. 
                    </div>-->
                    <div class="panel-group" id="accordion">
                        <div class="faqHeader">Preguntas generales</div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#preg1">¿Los cursos tienen un certificado para el usuario?</a>
                                </h4>
                            </div>
                            <div id="preg1" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    No, nosotros solo compartimos el conocimiento a través de nuestros cursos para facilitar el aprendizaje de forma autónoma pero no otorgamos certificados.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#preg2">¿Hasta que grado llegan los cursos </a>
                                </h4>
                            </div>
                            <div id="preg2" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    Dan las bases fundamentales sobre diversas tecnologías en el desarrollo actual
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#preg3">¿Qué incluyen los cursos?</a>
                                </h4>
                            </div>
                            <div id="preg3" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    Incluye retroalimentación sobre el lenguaje de programación de tu interés para guíarte con consejos y prácticas para aprender cómo se puede codificar de forma ordenada y correcta.
                                </div>
                            </div>
                        </div>

                        <div class="faqHeader">Pagos</div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#preg3">¿Qué métodos de pago aceptan?</a>
                                </h4>
                            </div>
                            <div id="preg3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Aceptamos pagos por medio de PayPal, tarjeta de crédito y débito, depósito bancario, transferencia SPEI y pago por OXXO.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">¿Con quién debo contactar si necesot ayuda?</a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Puedes enviarnos un mensaje mediante la sección de contáctanos.
                                </div>
                            </div>
                        </div>
                    </div>
                
                    </div>
                </div>
		    </div>
		</main> 
	</body>
</html>