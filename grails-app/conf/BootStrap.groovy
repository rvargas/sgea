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
		
		if(!User.count()){
			def adminRole = Role.findByAuthority('ROLE_ADMIN')
			
			String username
			String password
			boolean enabled
			boolean accountExpired
			boolean accountLocked
			boolean passwordExpired
			
			def userAdmin = new User(username: 'admin@mail.com', enabled: true, password: 'password').save(flush: true)
			
			UserRole.create userAdmin, adminRole, true
			
			assert User.count() == 1
			assert UserRole.count() == 1
			println "Se ha agregado un usuario con un rol."
		}
		
	}
    def destroy = {
    }
}
