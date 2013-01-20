<html>
	<head>
		<meta name='layout' content='bootstrap'/>
		<title><g:message code="layout.mainTitleSeparator" default=":"/> <g:message code="springSecurity.login.title"/></title>
	</head>
	
	<body>
	<div class="row-fluid">
		<div class="well span3 offset5">
			<form action='${postUrl}' method='POST' id='loginForm' class='' autocomplete='off'>
				<h1 class="pagination-centered">Acceso</h1>
  
				<div class="control-group"> 
					<label for='username'><g:message code="springSecurity.login.username.label"/></label>
					<div class="controls">
					  <input type='text' name='j_username' id='username'/>
					</div>
				</div>
			  
				<div class="control-group">
					<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
					<div class="controls">
						<input type='password' class='text_' name='j_password' id='password'/>
					</div>
				</div>
			  
			  	<div class="control-group">
			  		<label class="checkbox" for="remember_me">
				      <input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> /> <g:message code="springSecurity.login.remember.me.label"/>
				    </label>
			  	</div>
			  	<div class="pagination-centered">
					<input type='submit' value='${message(code: "springSecurity.login.button")}' id='submit' name='submit' class="btn btn-primary btn-large"/>
				</div>
			</form>
		</div>
	</div>
	<%--
	<div id='login'>
		<div class='inner'>
			<div class='fheader'><g:message code="springSecurity.login.header"/></div>
	
			<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
			</g:if>
	
			<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
				<p>
					<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
					<input type='text' class='text_' name='j_username' id='username'/>
				</p>
	
				<p>
					<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
					<input type='password' class='text_' name='j_password' id='password'/>
				</p>
	
				<p id="remember_me_holder">
					<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
					<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
				</p>
	
				<p>
					<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
				</p>
			</form>
		</div>
	</div>
	 --%>
	<script type='text/javascript'>
		<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
		// -->
	</script>
	</body>
</html>
