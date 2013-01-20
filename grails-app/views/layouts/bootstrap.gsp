<%@ page import="org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes" %>
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title><g:message code="layout.mainTitle" default="Sistema de gestión para eventos académicos"/><g:layoutTitle default=""/></title>
		<meta name="description" content="">
		<meta name="author" content="">

		<meta name="viewport" content="initial-scale = 1.0">

		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<r:require modules="scaffolding"/>
		<r:require modules="bootstrap-js"/>
		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		
		<%-- **Archivos para shortcuts de iphone... no necesarios por el momento.
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114.png')}">
		--%>
		
		<g:layoutHead/>
		<r:layoutResources/>
	</head>

	<body>

		<nav class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					
					<%-- 
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					--%>
					
					<a class="brand" href="${createLink(uri: '/')}"><g:message code="layout.mainTitle" default="Sistema de gestión para eventos académicos"/></a>
					
					<%-- 
					<div class="nav-collapse">
						<ul class="nav">							
							<li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><a href="${createLink(uri: '/')}">Home</a></li>
							<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
								<li<%= c.logicalPropertyName == controllerName ? ' class="active"' : '' %>><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
							</g:each>
						</ul>
					</div>
					--%>
					
					<div class="btn-group pull-right">
						<sec:ifLoggedIn>
							 <a class="btn btn-primary" href="${createLink(controller:'logout',action:'index') }">Salir</a>
						</sec:ifLoggedIn>
						
						<sec:ifNotLoggedIn>
							<a class="btn btn-primary" href="${createLink(controller:'login',action:'auth') }">Acceder</a>
						</sec:ifNotLoggedIn>
					</div>
					
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<g:layoutBody/>

			<hr>

			<footer>
				<p>&copy; Rafael Vargas Rosas 2013</p>
			</footer>
		</div>

		<r:layoutResources/>

	</body>
</html>