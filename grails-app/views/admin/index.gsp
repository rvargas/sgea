<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
		<title><g:message code="layout.mainTitleSeparator" default=":"/> Panel de administración</title>
	</head>

	<body>
		<div class="row-fluid">
			<div id="sidebar" class="span2">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="active"><a href="${createLink(controller:'admin',action:'indes')}"><i class="icon-home"></i> Home</a></li>
						<li class="nav-header">Evento</li>
						<li class=""><a href=""><i class="icon-list"></i> Lista</a></li>         
						<li class=""><a href=""><i class="icon-file"></i> Nuevo</a></li>
						
						<li class="nav-header">Usuarios</li>
						<li class=""><a href="#"><i class="icon-list"></i> Lista </a></li>
						<li class=""><a href="#"><i class="icon-file"></i> Nuevo</a></li>
			    	</ul>
				</div>
			</div>
			<div id="contente" class="span10">
				<div class="jumbotron masthead">
					<div class="container-fluid">
						<h1>Panel de Administración</h1>
						<p>One Ring to bring them all and in the darkness bind them</p>
						<p><a href="#" class="btn btn-primary btn-large">Crear evento</a></p>
						<ul class="masthead-links">
							<li><a href="#">Crear evento</a></li>
							<li><a href="#">Crear usuario</a></li>
							<li>Version 0.2</li>
						</ul>
					</div>
				</div>
				<hr>
				<div class="row-fluid">
					<div class="span6">
						<div class="well">
							<h3>Contenido</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
							</p>
							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
						</div>
					</div>
					<div class="span6">
						<div class="well">
							<h3>Comentarios Recientes</h3>
							<p></p>
							<ul>
								<li>Sed ut perspiciatis unde omnis iste natus</li>
								<li>Excepteur sint occaecat cupidatat non proident</li>
								<li>Ut enim ad minim veniam</li>
								<li>Quis autem vel eum iure reprehenderit qui in ea voluptate</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>