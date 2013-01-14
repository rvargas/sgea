import me.rafaelvargas.sgae.Role
import me.rafaelvargas.sgae.User
import me.rafaelvargas.sgae.UserRole

class BootStrap {

    def init = { servletContext ->
    	
		// En caso de que no existan roles, se agregan.
		if(!Role.count()){
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def coordinadorRole = new Role(authority: 'ROLE_COORDINADOR').save(flush: true)
			def secretarioRole = new Role(authority: 'ROLE_SECRETARIO').save(flush: true)
			def colaboradorRole = new Role(authority: 'ROLE_COLABORADOR').save(flush: true)
			def becarioRole = new Role(authority: 'ROLE_BECARIO').save(flush: true)
			
			assert Role.count() == 5
			println "Se han agregado 5 roles."
		}
		
	}
    def destroy = {
    }
}
