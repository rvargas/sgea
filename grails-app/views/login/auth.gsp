<html>
	<head>
		<meta name='layout' content='bootstrap'/>
		<title><g:message code="layout.mainTitleSeparator" default=":"/> <g:message code="springSecurity.login.title"/></title>
		
		<style type="text/css">
			.input-mlarge {
				width: 250px;
			}
		</style>
		
	</head>
	
	<body>
		<div class="row-fluid">
			<div class="well span3 offset5">
				<form action='${postUrl}' method='POST' id='loginForm' class='' autocomplete='off'>
					<h1 class="pagination-centered">Acceso</h1>
					
					<g:if test='${flash.message}'>
						<div class="alert alert-error">
							<button type="button" class="close" data-dismiss="alert">&times;</button>
							${flash.message}
						</div>
					</g:if>
	  
					<div class="control-group"> 
						<label for='username'><g:message code="springSecurity.login.username.label"/></label>
						<div class="controls">
							<input type='text' name='j_username' id='username' class="input-mlarge"/>
						</div>
					</div>
				  
					<div class="control-group">
						<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
						<div class="controls">
							<input type='password' name='j_password' id='password' class='input-mlarge'/>
						</div>
					</div>
				  
				  	<div class="control-group">
				  		<label class="checkbox" for="remember_me">
					      <input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> /> <g:message code="springSecurity.login.remember.me.label"/>
					    </label>
				  	</div>
				  	<div class="pagination-centered">
						<input type='submit' value='${message(code: "springSecurity.login.button")}' id='submit' name='submit' class="btn btn-primary"/>
					</div>
				</form>
			</div>
		</div>
		<script type='text/javascript'>
			<!--
			(function() {
				document.forms['loginForm'].elements['j_username'].focus();
			})();
			// -->
		</script>
	</body>
</html>
