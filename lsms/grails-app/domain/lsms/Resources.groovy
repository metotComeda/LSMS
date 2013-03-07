package lsms

class Resources {

	String name
	Integer quantity
	
	static belongsTo = [CustomPackage]

    static constraints = {
		name(blank:false)
		quantity(blank:false)
    }
	
	String toString(){
		"${name} ${quantity}"
	}
}
