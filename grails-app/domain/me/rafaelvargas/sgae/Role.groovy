package me.rafaelvargas.sgae

class Role {

	String authority

	static mapping = {
		cache true
		authority index: 'Authority_Idx'
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
